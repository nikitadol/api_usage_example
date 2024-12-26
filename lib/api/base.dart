import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'base.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://restcountries.com/v3.1',
  ));

  ref.onDispose(dio.close);

  return dio;
}
