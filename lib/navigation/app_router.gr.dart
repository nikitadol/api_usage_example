// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:api_usage_example/main.dart' as _i1;
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/foundation.dart' as _i3;

/// generated route for
/// [_i1.AllCountriesListScreen]
class AllCountriesListRoute extends _i2.PageRouteInfo<void> {
  const AllCountriesListRoute({List<_i2.PageRouteInfo>? children})
      : super(
          AllCountriesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllCountriesListRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      return const _i1.AllCountriesListScreen();
    },
  );
}

/// generated route for
/// [_i1.CountryInfoScreen]
class CountryInfoRoute extends _i2.PageRouteInfo<CountryInfoRouteArgs> {
  CountryInfoRoute({
    _i3.Key? key,
    required String name,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          CountryInfoRoute.name,
          args: CountryInfoRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'CountryInfoRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CountryInfoRouteArgs>();
      return _i1.CountryInfoScreen(
        key: args.key,
        name: args.name,
      );
    },
  );
}

class CountryInfoRouteArgs {
  const CountryInfoRouteArgs({
    this.key,
    required this.name,
  });

  final _i3.Key? key;

  final String name;

  @override
  String toString() {
    return 'CountryInfoRouteArgs{key: $key, name: $name}';
  }
}
