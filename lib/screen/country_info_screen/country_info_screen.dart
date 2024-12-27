import 'package:api_usage_example/screen/country_info_screen/provider/country_by_name.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/model/country_flags.dart';
import '../../common/ui/app_error_widget.dart';
import '../../common/ui/app_loader.dart';
import '../../localization.dart';

part 'components/key_value_item.dart';
part 'components/text_and_image.dart';

@RoutePage()
final class CountryInfoScreen extends StatelessWidget {
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
      body: _Content(
        name: name,
      ),
    );
  }
}

final class _Content extends ConsumerWidget {
  const _Content({
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context)!;

    final provider = countryByNameProvider(
      fullName: name,
    );

    final data = ref.watch(provider);

    return data.when(
      loading: () => const AppLoader(),
      error: (e, s) => AppErrorWidget(
        error: e,
        stackTrace: s,
        retry: () => ref.invalidate(provider),
      ),
      data: (data) => ListView(
        padding: const EdgeInsets.all(16) + MediaQuery.paddingOf(context),
        children: [
          _KeyValueItem(
            keyText: localizations.officialName,
            valueText: data.name.official,
          ),
          _KeyValueItem(
            keyText: localizations.commonName,
            valueText: data.name.official,
          ),
          if (data.altSpellings case final altNames when altNames.isNotEmpty)
            _KeyValueItem(
              keyText: localizations.alternativeNames,
              valueText: altNames.join(', '),
            ),
          const Divider(),
          if (data.capital case final capital when capital.isNotEmpty) ...[
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
                if (data.flags.png case final png? when png.isNotEmpty)
                  Expanded(
                    child: _TextAndImage(
                      text: localizations.flag,
                      data: data.flags,
                    ),
                  ),
                if (data.coatOfArms.png case final png? when png.isNotEmpty)
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
                {
                  for (final MapEntry(:value) in translations.entries)
                    value.official,
                }.join('\n'),
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
      ),
    );
  }
}
