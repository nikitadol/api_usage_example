import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../localization.dart';
import '../repository/model/app_error.dart';
import 'scroll_if_needed.dart';

final class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    required this.error,
    required this.stackTrace,
    this.retry,
  });

  final Object error;
  final StackTrace stackTrace;
  final void Function()? retry;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    final String text;
    if (error case final AppError error) {
      text = error.map(
        notFound: (error) => localization.notFound,
        unknown: (error) => localization.unknownError,
      );
    } else {
      text = localization.unknownError;
    }

    final bool allowRetry;
    if (error case final AppError error) {
      allowRetry = error.maybeMap(
        orElse: () => true,
        notFound: (_) => false,
      );
    } else {
      allowRetry = true;
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ScrollIfNeeded(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Text(text),
              if (retry case final retry? when allowRetry)
                TextButton(
                  onPressed: retry,
                  child: Text(localization.retry),
                ),
              if (kDebugMode) ...[
                Text('$error'),
                Text('$stackTrace'),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
