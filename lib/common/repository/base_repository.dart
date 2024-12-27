import 'dart:io';

import 'package:async/async.dart';
import 'package:dio/dio.dart';

import 'model/app_error.dart';

abstract class BaseRepository {
  Future<Result<T>> wrapApiCall<T>(Future<T> Function() callback) async {
    try {
      final result = await callback();

      return Result.value(result);
    } on DioException catch (e, s) {
      if (e.response case final response?) {
        switch (response.statusCode) {
          case HttpStatus.notFound:
            return Result.error(
              AppError.notFound(
                original: e,
                stackTrace: s,
              ),
            );
        }
      }

      return Result.error(
        AppError.unknown(
          original: e,
          stackTrace: s,
        ),
      );
    }
  }
}
