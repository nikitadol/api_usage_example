import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/ui/root_app.dart';

void main() {
  runApp(ProviderScope(
    child: const RootApp(),
  ));
}
