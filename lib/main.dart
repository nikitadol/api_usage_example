import 'package:api_usage_example/main.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

void main() {
  runApp(ProviderScope(
    child: const RootApp(),
  ));
}

@Riverpod(
  keepAlive: true,
)
RootStackRouter router(Ref ref) {
  return AppRouter();
}

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AllCountriesListRoute.page,
        ),
      ];
}

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://restcountries.com/v3.1',
  ));

  ref.onDispose(dio.close);

  return dio;
}

@Riverpod(
  dependencies: [
    dio,
  ],
)
RestCountriesClient restCountriesClient(Ref ref) {
  return RestCountriesClient(
    ref.watch(dioProvider),
  );
}

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class RestCountriesClient {
  factory RestCountriesClient(Dio dio) = _RestCountriesClient;

  @GET('/all')
  Future<List<CountryGeneral>> all({
    @Query('fields') List<String> fields = const [
      'name',
      'flags',
    ],
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('/translation/{name}')
  Future<List<CountryGeneral>> searchByTranslation({
    @Path('name') required String name,
    @Query('fields') List<String> fields = const [
      'name',
      'flags',
    ],
    @CancelRequest() CancelToken? cancelToken,
  });
}

List<CountryGeneral> deserializeCountryGeneralList(
  List<Map<String, dynamic>> json,
) {
  return json.map((e) => CountryGeneral.fromJson(e)).toList();
}

@riverpod
({ThemeData lightTheme, ThemeData darkTheme}) theme(Ref ref) {
  return (
    lightTheme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
  );
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
    );
  }
}

@freezed
class CountryName with _$CountryName {
  factory CountryName({
    required String common,
    required String official,
    @Default({}) Map<String, CountryName> nativeName,
  }) = _CountryName;

  factory CountryName.fromJson(Map<String, Object?> json) =>
      _$CountryNameFromJson(json);
}

@freezed
class CountryFlags with _$CountryFlags {
  factory CountryFlags({
    required String png,
    required String alt,
  }) = _CountryFlags;

  factory CountryFlags.fromJson(Map<String, Object?> json) =>
      _$CountryFlagsFromJson(json);
}

@freezed
class CountryGeneral with _$CountryGeneral {
  factory CountryGeneral({
    required CountryName name,
    required CountryFlags flags,
  }) = _CountryGeneral;

  factory CountryGeneral.fromJson(Map<String, Object?> json) =>
      _$CountryGeneralFromJson(json);
}

typedef CountryModel = ({
  String imageUrl,
  String imageAlt,
  String name,
  String otherNames,
});

List<CountryModel> sortAndPrepare(List<CountryGeneral> list) {
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

@Riverpod(
  dependencies: [
    restCountriesClient,
  ],
)
Future<List<CountryModel>> allCountries(
  Ref ref,
) async {
  final restCountriesClient = ref.watch(restCountriesClientProvider);

  final cancelToken = ref.dioCancelToken();

  final list = await restCountriesClient.all(
    cancelToken: cancelToken,
  );

  return sortAndPrepare(list);
}

@Riverpod(
  dependencies: [
    restCountriesClient,
  ],
)
Future<List<CountryModel>> searchByTranslation(
  Ref ref, {
  required String term,
}) async {
  final restCountriesClient = ref.watch(restCountriesClientProvider);

  term = term.trim();

  if (term.isEmpty) {
    return const [];
  }

  await ref.debounce();

  final cancelToken = ref.dioCancelToken();

  final list = await restCountriesClient.searchByTranslation(
    name: term,
    cancelToken: cancelToken,
  );

  return sortAndPrepare(list);
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
        child: Text('Type something'),
      );
    }

    return Consumer(
      builder: (context, ref, child) {
        final items = ref.watch(searchByTranslationProvider(term: term));

        return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: items.when(
            data: (items) {
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return ListTile(
                    titleAlignment: ListTileTitleAlignment.titleHeight,
                    onTap: () {},
                    leading: SizedBox(
                      width: 98,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.network(
                          item.imageUrl,
                          semanticLabel: item.imageAlt,
                        ),
                      ),
                    ),
                    title: Text(item.name),
                    subtitle: Text(item.otherNames),
                  );
                },
              );
            },
            error: (e, s) => Center(
              child: Text('$e'),
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
        title: Text('All countries'),
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
          final items = ref.watch(allCountriesProvider).maybeWhen(
                orElse: () => const <CountryModel>[],
                data: (value) => value,
              );

          return ListView.separated(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return ListTile(
                titleAlignment: ListTileTitleAlignment.titleHeight,
                onTap: () {},
                leading: SizedBox(
                  width: 98,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.network(
                      item.imageUrl,
                      semanticLabel: item.imageAlt,
                    ),
                  ),
                ),
                title: Text(item.name),
                subtitle: Text(item.otherNames),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
        },
      ),
    );
  }
}
