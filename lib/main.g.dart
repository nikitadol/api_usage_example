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
    );

Map<String, dynamic> _$$CountryFlagsImplToJson(_$CountryFlagsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
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
  Future<List<CountryGeneral>> all(
      {List<String> fields = const ['name', 'flags']}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'fields': fields};
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
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<CountryGeneral> _value;
    try {
      _value = _result.data!
          .map(
              (dynamic i) => CountryGeneral.fromJson(i as Map<String, dynamic>))
          .toList();
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
String _$dioHash() => r'cb47d167062ac29873bd887b74ca9d2f71977e64';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = Provider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = ProviderRef<Dio>;
String _$restCountriesClientHash() =>
    r'62f14cf93553afdf65bdcceecd9bc333aac95fc0';

/// See also [restCountriesClient].
@ProviderFor(restCountriesClient)
final restCountriesClientProvider = Provider<RestCountriesClient>.internal(
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
typedef RestCountriesClientRef = ProviderRef<RestCountriesClient>;
String _$allCountriesHash() => r'd23b7005a003518b0c8fefc623ce296983aad6d4';

/// See also [allCountries].
@ProviderFor(allCountries)
final allCountriesProvider =
    AutoDisposeFutureProvider<List<CountryModel>>.internal(
  allCountries,
  name: r'allCountriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allCountriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AllCountriesRef = AutoDisposeFutureProviderRef<List<CountryModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
