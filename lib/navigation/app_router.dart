import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_router.gr.dart';

export 'app_router.gr.dart';

part 'app_router.g.dart';

@Riverpod(
  keepAlive: true,
)
RootStackRouter router(Ref ref) {
  return AppRouter();
}

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AllCountriesListRoute.page,
        ),
        AutoRoute(
          path: '/info',
          page: CountryInfoRoute.page,
        ),
      ];
}
