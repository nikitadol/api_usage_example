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
class AllCountriesListScreen extends StatelessWidget {
  const AllCountriesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.allCountries,
        ),
        actions: [
          _SearchButtonWidget(),
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

                    return _CountryModelWidget(
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
