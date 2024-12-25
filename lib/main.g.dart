// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryNameImpl _$$CountryNameImplFromJson(Map<String, dynamic> json) =>
    _$CountryNameImpl(
      common: json['common'] as String,
      official: json['official'] as String,
      nativeName: (json['nativeName'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, CountryName.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$CountryNameImplToJson(_$CountryNameImpl instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
      'nativeName': instance.nativeName,
    };

_$CountryFlagsImpl _$$CountryFlagsImplFromJson(Map<String, dynamic> json) =>
    _$CountryFlagsImpl(
      png: json['png'] as String,
      alt: json['alt'] as String,
    );

Map<String, dynamic> _$$CountryFlagsImplToJson(_$CountryFlagsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
      'alt': instance.alt,
    };

_$CountryGeneralImpl _$$CountryGeneralImplFromJson(Map<String, dynamic> json) =>
    _$CountryGeneralImpl(
      name: CountryName.fromJson(json['name'] as Map<String, dynamic>),
      flags: CountryFlags.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryGeneralImplToJson(
        _$CountryGeneralImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _RestCountriesClient implements RestCountriesClient {
  _RestCountriesClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<List<CountryGeneral>> all({
    List<String> fields = const ['name', 'flags'],
    CancelToken? cancelToken,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'fields': fields};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<CountryGeneral>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/all',
          queryParameters: queryParameters,
          data: _data,
          cancelToken: cancelToken,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<CountryGeneral> _value;
    try {
      _value = await compute(
        deserializeCountryGeneralList,
        _result.data!.cast<Map<String, dynamic>>(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<List<CountryGeneral>> searchByTranslation({
    required String name,
    List<String> fields = const ['name', 'flags'],
    CancelToken? cancelToken,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'fields': fields};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<CountryGeneral>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/translation/${name}',
          queryParameters: queryParameters,
          data: _data,
          cancelToken: cancelToken,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<CountryGeneral> _value;
    try {
      _value = await compute(
        deserializeCountryGeneralList,
        _result.data!.cast<Map<String, dynamic>>(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'fae79b601cf8ff4177b1072bb855172bafe57b73';

/// See also [router].
@ProviderFor(router)
final routerProvider = Provider<RootStackRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterRef = ProviderRef<RootStackRouter>;
String _$dioHash() => r'4446728b3fc34e8040b35f573d741018c884b2dd';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$restCountriesClientHash() =>
    r'5d19b60781b6c60db6d10cccb332f2fa2d220c45';

/// See also [restCountriesClient].
@ProviderFor(restCountriesClient)
final restCountriesClientProvider =
    AutoDisposeProvider<RestCountriesClient>.internal(
  restCountriesClient,
  name: r'restCountriesClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$restCountriesClientHash,
  dependencies: <ProviderOrFamily>[dioProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    dioProvider,
    ...?dioProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RestCountriesClientRef = AutoDisposeProviderRef<RestCountriesClient>;
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
String _$allCountriesHash() => r'bbaa612823fc859a1004f7b4003c478296e75225';

/// See also [allCountries].
@ProviderFor(allCountries)
final allCountriesProvider =
    AutoDisposeFutureProvider<List<CountryModel>>.internal(
  allCountries,
  name: r'allCountriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allCountriesHash,
  dependencies: <ProviderOrFamily>[restCountriesClientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restCountriesClientProvider,
    ...?restCountriesClientProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AllCountriesRef = AutoDisposeFutureProviderRef<List<CountryModel>>;
String _$searchByTranslationHash() =>
    r'b265fb37ff6fd3c746d2debef59c06e98b233d7e';

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

/// See also [searchByTranslation].
@ProviderFor(searchByTranslation)
const searchByTranslationProvider = SearchByTranslationFamily();

/// See also [searchByTranslation].
class SearchByTranslationFamily extends Family<AsyncValue<List<CountryModel>>> {
  /// See also [searchByTranslation].
  const SearchByTranslationFamily();

  /// See also [searchByTranslation].
  SearchByTranslationProvider call({
    required String term,
  }) {
    return SearchByTranslationProvider(
      term: term,
    );
  }

  @override
  SearchByTranslationProvider getProviderOverride(
    covariant SearchByTranslationProvider provider,
  ) {
    return call(
      term: provider.term,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    restCountriesClientProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    restCountriesClientProvider,
    ...?restCountriesClientProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchByTranslationProvider';
}

/// See also [searchByTranslation].
class SearchByTranslationProvider
    extends AutoDisposeFutureProvider<List<CountryModel>> {
  /// See also [searchByTranslation].
  SearchByTranslationProvider({
    required String term,
  }) : this._internal(
          (ref) => searchByTranslation(
            ref as SearchByTranslationRef,
            term: term,
          ),
          from: searchByTranslationProvider,
          name: r'searchByTranslationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchByTranslationHash,
          dependencies: SearchByTranslationFamily._dependencies,
          allTransitiveDependencies:
              SearchByTranslationFamily._allTransitiveDependencies,
          term: term,
        );

  SearchByTranslationProvider._internal(
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
    FutureOr<List<CountryModel>> Function(SearchByTranslationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchByTranslationProvider._internal(
        (ref) => create(ref as SearchByTranslationRef),
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
    return _SearchByTranslationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchByTranslationProvider && other.term == term;
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
mixin SearchByTranslationRef
    on AutoDisposeFutureProviderRef<List<CountryModel>> {
  /// The parameter `term` of this provider.
  String get term;
}

class _SearchByTranslationProviderElement
    extends AutoDisposeFutureProviderElement<List<CountryModel>>
    with SearchByTranslationRef {
  _SearchByTranslationProviderElement(super.provider);

  @override
  String get term => (origin as SearchByTranslationProvider).term;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package