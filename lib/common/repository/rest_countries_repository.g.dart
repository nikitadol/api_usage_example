// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_countries_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$restCountriesRepositoryHash() =>
    r'4a218a14006908005c2910719ce505ab37367df3';

/// See also [restCountriesRepository].
@ProviderFor(restCountriesRepository)
final restCountriesRepositoryProvider =
    AutoDisposeProvider<RestCountriesRepository>.internal(
  restCountriesRepository,
  name: r'restCountriesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$restCountriesRepositoryHash,
  dependencies: <ProviderOrFamily>[restCountriesClientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restCountriesClientProvider,
    ...?restCountriesClientProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RestCountriesRepositoryRef
    = AutoDisposeProviderRef<RestCountriesRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
