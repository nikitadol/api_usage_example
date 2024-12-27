import 'package:api_usage_example/utils/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/repository/model/country_model.dart';
import '../../../common/repository/rest_countries_repository.dart';

part 'countries_search_by_translation.g.dart';

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
