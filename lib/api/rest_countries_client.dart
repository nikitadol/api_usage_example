import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'base.dart';
import 'model/country_full.dart';
import 'model/country_general.dart';

part 'rest_countries_client.g.dart';

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

  @GET('/name/{name}')
  Future<List<CountryFull>> byName({
    @Path('name') required String name,
    @CancelRequest() CancelToken? cancelToken,
  });
}

List<CountryGeneral> deserializeCountryGeneralList(
  List<Map<String, dynamic>> json,
) {
  return json.map((e) => CountryGeneral.fromJson(e)).toList();
}

List<CountryFull> deserializeCountryFullList(
  List<Map<String, dynamic>> json,
) {
  return json.map((e) => CountryFull.fromJson(e)).toList();
}
