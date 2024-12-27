import 'package:api_usage_example/utils/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../api/model/country_full.dart';
import '../../../common/repository/rest_countries_repository.dart';

part 'country_by_name.g.dart';

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
