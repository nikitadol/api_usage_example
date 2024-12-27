import 'package:api_usage_example/utils/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/repository/model/country_model.dart';
import '../../../common/repository/rest_countries_repository.dart';

part 'countries_all.g.dart';

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
