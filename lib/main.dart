import 'dart:io';

import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api/model/country_flags.dart';
import 'api/model/country_full.dart';
import 'api/model/country_general.dart';
import 'api/rest_countries_client.dart';
import 'navigation/app_router.dart';
import 'scroll_if_needed.dart';
import 'ui/theme/theme.dart';

part 'main.freezed.dart';
part 'main.g.dart';

void main() {
  runApp(ProviderScope(
    child: const RootApp(),
  ));
}

class RootApp extends ConsumerWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (:lightTheme, :darkTheme) = ref.watch(themeProvider);

    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider).config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

typedef CountryModel = ({
  String? imageUrl,
  String? imageAlt,
  String name,
  String otherNames,
});

@Riverpod(
  dependencies: [
    restCountriesRepository,
  ],
)
Future<List<CountryModel>> countriesAll(
  Ref ref,
) async {
  final restCountriesRepository = ref.watch(restCountriesRepositoryProvider);

  final cancelToken = ref.dioCancelToken();

  final res = await restCountriesRepository.all(
    cancelToken: cancelToken,
  );

  return res.asFuture;
}

@Riverpod(
  dependencies: [
    restCountriesRepository,
  ],
)
Future<List<CountryModel>> countriesSearchByTranslation(
  Ref ref, {
  required String term,
}) async {
  final restCountriesRepository = ref.watch(restCountriesRepositoryProvider);

  await ref.debounce();
  final cancelToken = ref.dioCancelToken();

  final res = await restCountriesRepository.searchByTranslation(
    term: term,
    cancelToken: cancelToken,
  );

  return res.asFuture;
}

abstract class BaseRepository {
  Future<Result<T>> wrapApiCall<T>(Future<T> Function() callback) async {
    try {
      final result = await callback();

      return Result.value(result);
    } on DioException catch (e, s) {
      if (e.response case final response?) {
        switch (response.statusCode) {
          case HttpStatus.notFound:
            return Result.error(
              AppError.notFound(
                original: e,
                stackTrace: s,
              ),
            );
        }
      }

      return Result.error(
        AppError.unknown(
          original: e,
          stackTrace: s,
        ),
      );
    }
  }
}

@Riverpod(
  dependencies: [
    restCountriesClient,
  ],
)
RestCountriesRepository restCountriesRepository(Ref ref) {
  return RestCountriesRepository(
    restCountriesClient: ref.watch(restCountriesClientProvider),
  );
}

class RestCountriesRepository extends BaseRepository {
  final RestCountriesClient restCountriesClient;

  RestCountriesRepository({
    required this.restCountriesClient,
  });

  Future<Result<List<CountryModel>>> searchByTranslation({
    required String term,
    required CancelToken cancelToken,
  }) async {
    term = term.trim();

    if (term.isEmpty) {
      return Result.value(const []);
    }

    final res = await wrapApiCall(
      () => restCountriesClient.searchByTranslation(
        name: term,
        cancelToken: cancelToken,
      ),
    );

    return res.mapValue(_sortAndPrepare);
  }

  Future<Result<List<CountryModel>>> all({
    required CancelToken cancelToken,
  }) async {
    final res = await wrapApiCall(
      () => restCountriesClient.all(
        cancelToken: cancelToken,
      ),
    );

    return res.mapValue(_sortAndPrepare);
  }

  Future<Result<CountryFull>> byName({
    required String name,
    required CancelToken cancelToken,
  }) async {
    final res = await wrapApiCall(
      () => restCountriesClient.byName(
        name: name,
        cancelToken: cancelToken,
      ),
    );

    return res.mapValue((list) => list.first);
  }

  List<CountryModel> _sortAndPrepare(List<CountryGeneral> list) {
    list.sort((a, b) => a.name.official.compareTo(b.name.official));

    return [
      for (final item in list)
        (
          imageUrl: item.flags.png,
          imageAlt: item.flags.alt,
          name: item.name.official,
          otherNames: item.name.nativeName.values
              .map((e) => e.official)
              .toSet()
              .join('\n'),
        ),
    ];
  }
}

@freezed
class AppError with _$AppError {
  factory AppError.notFound({
    required Object original,
    required StackTrace stackTrace,
  }) = _AppErrorNotFound;

  factory AppError.unknown({
    required Object original,
    required StackTrace stackTrace,
  }) = _AppErrorUnknown;
}

extension AppErrorResult on ErrorResult {
  AppError get asAppError => error as AppError;
}

extension ResultExtension<T> on Result<T> {
  Result<R> mapValue<R>(R Function(T) callback) {
    if (asValue case final valueResult?) {
      return Result(() => callback(valueResult.value));
    }

    return asError!;
  }
}

extension RefExtension on Ref {
  CancelToken dioCancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);

    return cancelToken;
  }

  Future<void> debounce([
    Duration duration = const Duration(milliseconds: 400),
  ]) async {
    var didDispose = false;
    onDispose(() => didDispose = true);

    await Future<void>.delayed(duration);

    if (didDispose) {
      throw Exception('Cancelled');
    }
  }
}

@RoutePage()
class AllCountriesListScreen extends StatelessWidget {
  const AllCountriesListScreen({super.key});

  Widget searchViewBuilder(Iterable<Widget> items) {
    final String term;

    if (items case [final Text text]) {
      term = text.data?.trim() ?? '';
    } else {
      term = '';
    }

    if (term.isEmpty) {
      return Center(
        child: Builder(
          builder: (context) => Text(
            AppLocalizations.of(context)!.typeSomething,
          ),
        ),
      );
    }

    return Consumer(
      builder: (context, ref, child) {
        final provider = countriesSearchByTranslationProvider(term: term);
        final items = ref.watch(provider);

        return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: items.when(
            data: (items) {
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return CountryModelWidget(
                    item: item,
                  );
                },
              );
            },
            error: (e, s) => AppErrorWidget(
              error: e,
              stackTrace: s,
              retry: () => ref.invalidate(provider),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.allCountries,
        ),
        actions: [
          SearchAnchor(
            builder: (context, controller) => IconButton(
              onPressed: controller.openView,
              icon: const Icon(Icons.search),
            ),
            suggestionsBuilder: (context, controller) => [
              // Workaround for using riverpod with SearchAnchor
              Text(controller.text),
            ],
            viewBuilder: searchViewBuilder,
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final provider = countriesAllProvider;

          return ref.watch(provider).when(
                data: (items) => ListView.separated(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return CountryModelWidget(
                      item: item,
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
                error: (e, s) => AppErrorWidget(
                  error: e,
                  stackTrace: s,
                  retry: () => ref.invalidate(provider),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
        },
      ),
    );
  }
}

class CountryModelWidget extends StatelessWidget {
  const CountryModelWidget({
    super.key,
    required this.item,
  });

  final CountryModel item;

  @override
  Widget build(BuildContext context) {
    Widget? image;
    if (item.imageUrl case final imageUrl?) {
      image = Align(
        alignment: Alignment.topLeft,
        child: Image.network(
          imageUrl,
          semanticLabel: item.imageAlt,
        ),
      );
    }

    return ListTile(
      onTap: () => context.router.push(
        CountryInfoRoute(
          name: item.name,
        ),
      ),
      leading: SizedBox(
        width: 98,
        child: image,
      ),
      title: Text(item.name),
      subtitle: Text(item.otherNames),
    );
  }
}

@Riverpod(
  dependencies: [
    restCountriesRepository,
  ],
)
Future<CountryFull> countryByName(
  Ref ref, {
  required String fullName,
}) async {
  final restCountriesRepository = ref.watch(restCountriesRepositoryProvider);

  await ref.debounce();
  final cancelToken = ref.dioCancelToken();

  final res = await restCountriesRepository.byName(
    name: fullName,
    cancelToken: cancelToken,
  );

  return res.asFuture;
}

@RoutePage()
class CountryInfoScreen extends StatelessWidget {
  const CountryInfoScreen({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final localizations = AppLocalizations.of(context)!;

          final provider = countryByNameProvider(
            fullName: name,
          );

          return ref.watch(provider).when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (e, s) => AppErrorWidget(
                  error: e,
                  stackTrace: s,
                  retry: () => ref.invalidate(provider),
                ),
                data: (data) {
                  return ListView(
                    padding: const EdgeInsets.all(16) +
                        MediaQuery.paddingOf(context),
                    children: [
                      _KeyValueItem(
                        keyText: localizations.officialName,
                        valueText: data.name.official,
                      ),
                      _KeyValueItem(
                        keyText: localizations.commonName,
                        valueText: data.name.official,
                      ),
                      if (data.altSpellings case final altNames
                          when altNames.isNotEmpty)
                        _KeyValueItem(
                          keyText: localizations.alternativeNames,
                          valueText: altNames.join(', '),
                        ),
                      const Divider(),
                      if (data.capital case final capital
                          when capital.isNotEmpty) ...[
                        _KeyValueItem(
                          keyText: localizations.capital,
                          valueText: capital.join(', '),
                        ),
                        const Divider(),
                      ],
                      FractionallySizedBox(
                        widthFactor: 0.8,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (data.flags.png case final png?
                                when png.isNotEmpty)
                              Expanded(
                                child: _TextAndImage(
                                  text: localizations.flag,
                                  data: data.flags,
                                ),
                              ),
                            if (data.coatOfArms.png case final png?
                                when png.isNotEmpty)
                              Expanded(
                                child: _TextAndImage(
                                  text: localizations.coatOfArms,
                                  data: data.coatOfArms,
                                ),
                              ),
                          ],
                        ),
                      ),
                      const Divider(),
                      if (data.tld case final tld when tld.isNotEmpty) ...[
                        _KeyValueItem(
                          keyText: localizations.topLevelDomains,
                          valueText: tld.join(', '),
                        ),
                        const Divider(),
                      ],
                      if (data.languages case final languages
                          when languages.isNotEmpty) ...[
                        _KeyValueItem(
                          keyText: localizations.languages,
                          valueText: languages.values.join(', '),
                        ),
                        const Divider(),
                      ],
                      if (data.translations case final translations
                          when translations.isNotEmpty) ...[
                        Text(
                          localizations.translations,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            translations.entries
                                .map((e) => e.value.official)
                                .toSet()
                                .join('\n'),
                          ),
                        ),
                        const Divider(),
                      ],
                      if (data.timezones case final timezones
                          when timezones.isNotEmpty) ...[
                        _KeyValueItem(
                          keyText: localizations.timezones,
                          valueText: timezones.join(', '),
                        ),
                        const Divider(),
                      ],
                      _KeyValueItem(
                        keyText: localizations.population,
                        valueText: '${data.population}',
                      ),
                      const Divider(),
                      _KeyValueItem(
                        keyText: localizations.area,
                        valueText: '${data.area}',
                      ),
                      const Divider(),
                      _KeyValueItem(
                        keyText: localizations.emojiFlag,
                        valueText: data.flag,
                      ),
                      const Divider(),
                    ],
                  );
                },
              );
        },
      ),
    );
  }
}

final class _TextAndImage extends StatelessWidget {
  const _TextAndImage({
    required this.text,
    required this.data,
  });

  final String text;
  final CountryFlags data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 8,
        children: [
          Text(text),
          Image.network(
            data.png ?? '',
            semanticLabel: data.alt,
          ),
        ],
      ),
    );
  }
}

final class _KeyValueItem extends StatelessWidget {
  const _KeyValueItem({
    required this.keyText,
    required this.valueText,
  });

  final String keyText;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: keyText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: valueText,
          ),
        ],
      ),
    );
  }
}

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    required this.error,
    required this.stackTrace,
    this.retry,
  });

  final Object error;
  final StackTrace stackTrace;
  final void Function()? retry;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    final String text;
    if (error case final AppError error) {
      text = error.map(
        notFound: (error) => localization.notFound,
        unknown: (error) => localization.unknownError,
      );
    } else {
      text = localization.unknownError;
    }

    final bool allowRetry;
    if (error case final AppError error) {
      allowRetry = error.maybeMap(
        orElse: () => true,
        notFound: (_) => false,
      );
    } else {
      allowRetry = true;
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ScrollIfNeeded(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Text(text),
              if (retry case final retry? when allowRetry)
                TextButton(
                  onPressed: retry,
                  child: Text(localization.retry),
                ),
              if (kDebugMode) ...[
                Text('$error'),
                Text('$stackTrace'),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
