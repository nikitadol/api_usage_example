import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RefExtension on Ref {
  CancelToken dioCancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);

    return cancelToken;
  }

  Future<void> debounce([
    Duration duration = const Duration(milliseconds: 400),
  ]) async {
    var didDispose = false;
    onDispose(() => didDispose = true);

    await Future<void>.delayed(duration);

    if (didDispose) {
      throw Exception('Cancelled');
    }
  }
}
