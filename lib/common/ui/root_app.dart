import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../localization.dart';
import '../../navigation/app_router.dart';
import '../../ui/theme/theme.dart';

class RootApp extends ConsumerWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (:lightTheme, :darkTheme) = ref.watch(themeProvider);

    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider).config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
