// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_search_by_translation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
