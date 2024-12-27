// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_all.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countriesAllHash() => r'fe2da1527f9d125f5bd59668f179094809232c9b';

/// See also [countriesAll].
@ProviderFor(countriesAll)
final countriesAllProvider =
    AutoDisposeFutureProvider<List<CountryModel>>.internal(
  countriesAll,
  name: r'countriesAllProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$countriesAllHash,
  dependencies: <ProviderOrFamily>[restCountriesRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restCountriesRepositoryProvider,
    ...?restCountriesRepositoryProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CountriesAllRef = AutoDisposeFutureProviderRef<List<CountryModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
