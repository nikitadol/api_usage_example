import 'package:async/async.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@freezed
class AppError with _$AppError {
  factory AppError.notFound({
    required Object original,
    required StackTrace stackTrace,
  }) = _AppErrorNotFound;

  factory AppError.unknown({
    required Object original,
    required StackTrace stackTrace,
  }) = _AppErrorUnknown;
}

extension AppErrorResult on ErrorResult {
  AppError get asAppError => error as AppError;
}

extension ResultExtension<T> on Result<T> {
  Result<R> mapValue<R>(R Function(T) callback) {
    if (asValue case final valueResult?) {
      return Result(() => callback(valueResult.value));
    }

    return asError!;
  }
}
