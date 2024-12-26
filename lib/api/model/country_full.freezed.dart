// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_full.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryFull _$CountryFullFromJson(Map<String, dynamic> json) {
  return _CountryFull.fromJson(json);
}

/// @nodoc
mixin _$CountryFull {
  CountryName get name => throw _privateConstructorUsedError;
  List<String> get tld => throw _privateConstructorUsedError;
  List<String> get capital => throw _privateConstructorUsedError;
  List<String> get altSpellings => throw _privateConstructorUsedError;
  Map<String, String> get languages => throw _privateConstructorUsedError;
  Map<String, CountryName> get translations =>
      throw _privateConstructorUsedError;
  double get area => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  List<String> get timezones => throw _privateConstructorUsedError;
  CountryFlags get flags => throw _privateConstructorUsedError;
  CountryFlags get coatOfArms => throw _privateConstructorUsedError;
  String get startOfWeek => throw _privateConstructorUsedError;

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryFullCopyWith<CountryFull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryFullCopyWith<$Res> {
  factory $CountryFullCopyWith(
          CountryFull value, $Res Function(CountryFull) then) =
      _$CountryFullCopyWithImpl<$Res, CountryFull>;
  @useResult
  $Res call(
      {CountryName name,
      List<String> tld,
      List<String> capital,
      List<String> altSpellings,
      Map<String, String> languages,
      Map<String, CountryName> translations,
      double area,
      String flag,
      int population,
      List<String> timezones,
      CountryFlags flags,
      CountryFlags coatOfArms,
      String startOfWeek});

  $CountryNameCopyWith<$Res> get name;
  $CountryFlagsCopyWith<$Res> get flags;
  $CountryFlagsCopyWith<$Res> get coatOfArms;
}

/// @nodoc
class _$CountryFullCopyWithImpl<$Res, $Val extends CountryFull>
    implements $CountryFullCopyWith<$Res> {
  _$CountryFullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tld = null,
    Object? capital = null,
    Object? altSpellings = null,
    Object? languages = null,
    Object? translations = null,
    Object? area = null,
    Object? flag = null,
    Object? population = null,
    Object? timezones = null,
    Object? flags = null,
    Object? coatOfArms = null,
    Object? startOfWeek = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName,
      tld: null == tld
          ? _value.tld
          : tld // ignore: cast_nullable_to_non_nullable
              as List<String>,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>,
      altSpellings: null == altSpellings
          ? _value.altSpellings
          : altSpellings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, CountryName>,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezones: null == timezones
          ? _value.timezones
          : timezones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as CountryFlags,
      coatOfArms: null == coatOfArms
          ? _value.coatOfArms
          : coatOfArms // ignore: cast_nullable_to_non_nullable
              as CountryFlags,
      startOfWeek: null == startOfWeek
          ? _value.startOfWeek
          : startOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryNameCopyWith<$Res> get name {
    return $CountryNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryFlagsCopyWith<$Res> get flags {
    return $CountryFlagsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryFlagsCopyWith<$Res> get coatOfArms {
    return $CountryFlagsCopyWith<$Res>(_value.coatOfArms, (value) {
      return _then(_value.copyWith(coatOfArms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryFullImplCopyWith<$Res>
    implements $CountryFullCopyWith<$Res> {
  factory _$$CountryFullImplCopyWith(
          _$CountryFullImpl value, $Res Function(_$CountryFullImpl) then) =
      __$$CountryFullImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CountryName name,
      List<String> tld,
      List<String> capital,
      List<String> altSpellings,
      Map<String, String> languages,
      Map<String, CountryName> translations,
      double area,
      String flag,
      int population,
      List<String> timezones,
      CountryFlags flags,
      CountryFlags coatOfArms,
      String startOfWeek});

  @override
  $CountryNameCopyWith<$Res> get name;
  @override
  $CountryFlagsCopyWith<$Res> get flags;
  @override
  $CountryFlagsCopyWith<$Res> get coatOfArms;
}

/// @nodoc
class __$$CountryFullImplCopyWithImpl<$Res>
    extends _$CountryFullCopyWithImpl<$Res, _$CountryFullImpl>
    implements _$$CountryFullImplCopyWith<$Res> {
  __$$CountryFullImplCopyWithImpl(
      _$CountryFullImpl _value, $Res Function(_$CountryFullImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tld = null,
    Object? capital = null,
    Object? altSpellings = null,
    Object? languages = null,
    Object? translations = null,
    Object? area = null,
    Object? flag = null,
    Object? population = null,
    Object? timezones = null,
    Object? flags = null,
    Object? coatOfArms = null,
    Object? startOfWeek = null,
  }) {
    return _then(_$CountryFullImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName,
      tld: null == tld
          ? _value._tld
          : tld // ignore: cast_nullable_to_non_nullable
              as List<String>,
      capital: null == capital
          ? _value._capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>,
      altSpellings: null == altSpellings
          ? _value._altSpellings
          : altSpellings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, CountryName>,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezones: null == timezones
          ? _value._timezones
          : timezones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as CountryFlags,
      coatOfArms: null == coatOfArms
          ? _value.coatOfArms
          : coatOfArms // ignore: cast_nullable_to_non_nullable
              as CountryFlags,
      startOfWeek: null == startOfWeek
          ? _value.startOfWeek
          : startOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CountryFullImpl implements _CountryFull {
  _$CountryFullImpl(
      {required this.name,
      final List<String> tld = const [],
      final List<String> capital = const [],
      final List<String> altSpellings = const [],
      final Map<String, String> languages = const {},
      final Map<String, CountryName> translations = const {},
      required this.area,
      required this.flag,
      required this.population,
      final List<String> timezones = const [],
      required this.flags,
      required this.coatOfArms,
      required this.startOfWeek})
      : _tld = tld,
        _capital = capital,
        _altSpellings = altSpellings,
        _languages = languages,
        _translations = translations,
        _timezones = timezones;

  factory _$CountryFullImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryFullImplFromJson(json);

  @override
  final CountryName name;
  final List<String> _tld;
  @override
  @JsonKey()
  List<String> get tld {
    if (_tld is EqualUnmodifiableListView) return _tld;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tld);
  }

  final List<String> _capital;
  @override
  @JsonKey()
  List<String> get capital {
    if (_capital is EqualUnmodifiableListView) return _capital;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capital);
  }

  final List<String> _altSpellings;
  @override
  @JsonKey()
  List<String> get altSpellings {
    if (_altSpellings is EqualUnmodifiableListView) return _altSpellings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_altSpellings);
  }

  final Map<String, String> _languages;
  @override
  @JsonKey()
  Map<String, String> get languages {
    if (_languages is EqualUnmodifiableMapView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_languages);
  }

  final Map<String, CountryName> _translations;
  @override
  @JsonKey()
  Map<String, CountryName> get translations {
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

  @override
  final double area;
  @override
  final String flag;
  @override
  final int population;
  final List<String> _timezones;
  @override
  @JsonKey()
  List<String> get timezones {
    if (_timezones is EqualUnmodifiableListView) return _timezones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timezones);
  }

  @override
  final CountryFlags flags;
  @override
  final CountryFlags coatOfArms;
  @override
  final String startOfWeek;

  @override
  String toString() {
    return 'CountryFull(name: $name, tld: $tld, capital: $capital, altSpellings: $altSpellings, languages: $languages, translations: $translations, area: $area, flag: $flag, population: $population, timezones: $timezones, flags: $flags, coatOfArms: $coatOfArms, startOfWeek: $startOfWeek)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryFullImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._tld, _tld) &&
            const DeepCollectionEquality().equals(other._capital, _capital) &&
            const DeepCollectionEquality()
                .equals(other._altSpellings, _altSpellings) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.population, population) ||
                other.population == population) &&
            const DeepCollectionEquality()
                .equals(other._timezones, _timezones) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.coatOfArms, coatOfArms) ||
                other.coatOfArms == coatOfArms) &&
            (identical(other.startOfWeek, startOfWeek) ||
                other.startOfWeek == startOfWeek));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_tld),
      const DeepCollectionEquality().hash(_capital),
      const DeepCollectionEquality().hash(_altSpellings),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_translations),
      area,
      flag,
      population,
      const DeepCollectionEquality().hash(_timezones),
      flags,
      coatOfArms,
      startOfWeek);

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryFullImplCopyWith<_$CountryFullImpl> get copyWith =>
      __$$CountryFullImplCopyWithImpl<_$CountryFullImpl>(this, _$identity);
}

abstract class _CountryFull implements CountryFull {
  factory _CountryFull(
      {required final CountryName name,
      final List<String> tld,
      final List<String> capital,
      final List<String> altSpellings,
      final Map<String, String> languages,
      final Map<String, CountryName> translations,
      required final double area,
      required final String flag,
      required final int population,
      final List<String> timezones,
      required final CountryFlags flags,
      required final CountryFlags coatOfArms,
      required final String startOfWeek}) = _$CountryFullImpl;

  factory _CountryFull.fromJson(Map<String, dynamic> json) =
      _$CountryFullImpl.fromJson;

  @override
  CountryName get name;
  @override
  List<String> get tld;
  @override
  List<String> get capital;
  @override
  List<String> get altSpellings;
  @override
  Map<String, String> get languages;
  @override
  Map<String, CountryName> get translations;
  @override
  double get area;
  @override
  String get flag;
  @override
  int get population;
  @override
  List<String> get timezones;
  @override
  CountryFlags get flags;
  @override
  CountryFlags get coatOfArms;
  @override
  String get startOfWeek;

  /// Create a copy of CountryFull
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryFullImplCopyWith<_$CountryFullImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
