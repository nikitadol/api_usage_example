import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api/model/country_flags.dart';
import 'api/model/country_full.dart';
import 'common/repository/rest_countries_repository.dart';
import 'common/ui/app_error_widget.dart';
import 'common/ui/root_app.dart';
import 'localization.dart';
import 'utils/riverpod.dart';

part 'main.g.dart';

void main() {
  runApp(ProviderScope(
    child: const RootApp(),
  ));
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
