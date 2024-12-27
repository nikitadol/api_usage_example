import 'package:api_usage_example/common/repository/model/app_error.dart';
import 'package:async/async.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../api/model/country_full.dart';
import '../../api/model/country_general.dart';
import '../../api/rest_countries_client.dart';
import 'base_repository.dart';
import 'model/country_model.dart';

part 'rest_countries_repository.g.dart';

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

final class RestCountriesRepository extends BaseRepository {
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
