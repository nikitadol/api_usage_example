// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countryByNameHash() => r'12b7238341f2b06b645e4dcd898c5e34d00ed459';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [countryByName].
@ProviderFor(countryByName)
const countryByNameProvider = CountryByNameFamily();

/// See also [countryByName].
class CountryByNameFamily extends Family<AsyncValue<CountryFull>> {
  /// See also [countryByName].
  const CountryByNameFamily();

  /// See also [countryByName].
  CountryByNameProvider call({
    required String fullName,
  }) {
    return CountryByNameProvider(
      fullName: fullName,
    );
  }

  @override
  CountryByNameProvider getProviderOverride(
    covariant CountryByNameProvider provider,
  ) {
    return call(
      fullName: provider.fullName,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    restCountriesRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    restCountriesRepositoryProvider,
    ...?restCountriesRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countryByNameProvider';
}

/// See also [countryByName].
class CountryByNameProvider extends AutoDisposeFutureProvider<CountryFull> {
  /// See also [countryByName].
  CountryByNameProvider({
    required String fullName,
  }) : this._internal(
          (ref) => countryByName(
            ref as CountryByNameRef,
            fullName: fullName,
          ),
          from: countryByNameProvider,
          name: r'countryByNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countryByNameHash,
          dependencies: CountryByNameFamily._dependencies,
          allTransitiveDependencies:
              CountryByNameFamily._allTransitiveDependencies,
          fullName: fullName,
        );

  CountryByNameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fullName,
  }) : super.internal();

  final String fullName;

  @override
  Override overrideWith(
    FutureOr<CountryFull> Function(CountryByNameRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CountryByNameProvider._internal(
        (ref) => create(ref as CountryByNameRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fullName: fullName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CountryFull> createElement() {
    return _CountryByNameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountryByNameProvider && other.fullName == fullName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fullName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CountryByNameRef on AutoDisposeFutureProviderRef<CountryFull> {
  /// The parameter `fullName` of this provider.
  String get fullName;
}

class _CountryByNameProviderElement
    extends AutoDisposeFutureProviderElement<CountryFull>
    with CountryByNameRef {
  _CountryByNameProviderElement(super.provider);

  @override
  String get fullName => (origin as CountryByNameProvider).fullName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
