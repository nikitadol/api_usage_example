// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeHash() => r'e59a47c40f112f4bf3787ead7e8db8ace3ec55be';

/// See also [theme].
@ProviderFor(theme)
final themeProvider =
    AutoDisposeProvider<({ThemeData lightTheme, ThemeData darkTheme})>.internal(
  theme,
  name: r'themeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ThemeRef
    = AutoDisposeProviderRef<({ThemeData lightTheme, ThemeData darkTheme})>;
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
String _$countriesSearchByTranslationHash() =>
    r'165da56f51703e5135b8e93f3cc7954a251fe7b7';

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

/// See also [countriesSearchByTranslation].
@ProviderFor(countriesSearchByTranslation)
const countriesSearchByTranslationProvider =
    CountriesSearchByTranslationFamily();

/// See also [countriesSearchByTranslation].
class CountriesSearchByTranslationFamily
    extends Family<AsyncValue<List<CountryModel>>> {
  /// See also [countriesSearchByTranslation].
  const CountriesSearchByTranslationFamily();

  /// See also [countriesSearchByTranslation].
  CountriesSearchByTranslationProvider call({
    required String term,
  }) {
    return CountriesSearchByTranslationProvider(
      term: term,
    );
  }

  @override
  CountriesSearchByTranslationProvider getProviderOverride(
    covariant CountriesSearchByTranslationProvider provider,
  ) {
    return call(
      term: provider.term,
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
  String? get name => r'countriesSearchByTranslationProvider';
}

/// See also [countriesSearchByTranslation].
class CountriesSearchByTranslationProvider
    extends AutoDisposeFutureProvider<List<CountryModel>> {
  /// See also [countriesSearchByTranslation].
  CountriesSearchByTranslationProvider({
    required String term,
  }) : this._internal(
          (ref) => countriesSearchByTranslation(
            ref as CountriesSearchByTranslationRef,
            term: term,
          ),
          from: countriesSearchByTranslationProvider,
          name: r'countriesSearchByTranslationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countriesSearchByTranslationHash,
          dependencies: CountriesSearchByTranslationFamily._dependencies,
          allTransitiveDependencies:
              CountriesSearchByTranslationFamily._allTransitiveDependencies,
          term: term,
        );

  CountriesSearchByTranslationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.term,
  }) : super.internal();

  final String term;

  @override
  Override overrideWith(
    FutureOr<List<CountryModel>> Function(
            CountriesSearchByTranslationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CountriesSearchByTranslationProvider._internal(
        (ref) => create(ref as CountriesSearchByTranslationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        term: term,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CountryModel>> createElement() {
    return _CountriesSearchByTranslationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountriesSearchByTranslationProvider && other.term == term;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, term.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CountriesSearchByTranslationRef
    on AutoDisposeFutureProviderRef<List<CountryModel>> {
  /// The parameter `term` of this provider.
  String get term;
}

class _CountriesSearchByTranslationProviderElement
    extends AutoDisposeFutureProviderElement<List<CountryModel>>
    with CountriesSearchByTranslationRef {
  _CountriesSearchByTranslationProviderElement(super.provider);

  @override
  String get term => (origin as CountriesSearchByTranslationProvider).term;
}

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
String _$countryByNameHash() => r'12b7238341f2b06b645e4dcd898c5e34d00ed459';

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
