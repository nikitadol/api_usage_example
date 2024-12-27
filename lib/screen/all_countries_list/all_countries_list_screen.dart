import 'package:api_usage_example/common/ui/app_loader.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/repository/model/country_model.dart';
import '../../common/ui/app_error_widget.dart';
import '../../localization.dart';
import '../../navigation/app_router.dart';
import 'provider/countries_all.dart';
import 'provider/countries_search_by_translation.dart';

part 'components/country_model_widget.dart';
part 'components/search_button_widget.dart';

@RoutePage()
final class AllCountriesListScreen extends StatelessWidget {
  const AllCountriesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.allCountries,
        ),
        actions: const [
          _SearchButtonWidget(),
        ],
      ),
      body: const _Content(),
    );
  }
}

final class _Content extends ConsumerWidget {
  const _Content();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = countriesAllProvider;

    final items = ref.watch(provider);

    return items.when(
      loading: () => const AppLoader(),
      error: (e, s) => AppErrorWidget(
        error: e,
        stackTrace: s,
        retry: () => ref.invalidate(provider),
      ),
      data: (items) => ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) => _CountryModelWidget(
          item: items[index],
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
