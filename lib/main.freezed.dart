// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryName _$CountryNameFromJson(Map<String, dynamic> json) {
  return _CountryName.fromJson(json);
}

/// @nodoc
mixin _$CountryName {
  String get common => throw _privateConstructorUsedError;
  String get official => throw _privateConstructorUsedError;
  Map<String, CountryName> get nativeName => throw _privateConstructorUsedError;

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryNameCopyWith<CountryName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryNameCopyWith<$Res> {
  factory $CountryNameCopyWith(
          CountryName value, $Res Function(CountryName) then) =
      _$CountryNameCopyWithImpl<$Res, CountryName>;
  @useResult
  $Res call(
      {String common, String official, Map<String, CountryName> nativeName});
}

/// @nodoc
class _$CountryNameCopyWithImpl<$Res, $Val extends CountryName>
    implements $CountryNameCopyWith<$Res> {
  _$CountryNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
    Object? nativeName = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as Map<String, CountryName>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryNameImplCopyWith<$Res>
    implements $CountryNameCopyWith<$Res> {
  factory _$$CountryNameImplCopyWith(
          _$CountryNameImpl value, $Res Function(_$CountryNameImpl) then) =
      __$$CountryNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String common, String official, Map<String, CountryName> nativeName});
}

/// @nodoc
class __$$CountryNameImplCopyWithImpl<$Res>
    extends _$CountryNameCopyWithImpl<$Res, _$CountryNameImpl>
    implements _$$CountryNameImplCopyWith<$Res> {
  __$$CountryNameImplCopyWithImpl(
      _$CountryNameImpl _value, $Res Function(_$CountryNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
    Object? nativeName = null,
  }) {
    return _then(_$CountryNameImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value._nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as Map<String, CountryName>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CountryNameImpl with DiagnosticableTreeMixin implements _CountryName {
  _$CountryNameImpl(
      {required this.common,
      required this.official,
      final Map<String, CountryName> nativeName = const {}})
      : _nativeName = nativeName;

  factory _$CountryNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryNameImplFromJson(json);

  @override
  final String common;
  @override
  final String official;
  final Map<String, CountryName> _nativeName;
  @override
  @JsonKey()
  Map<String, CountryName> get nativeName {
    if (_nativeName is EqualUnmodifiableMapView) return _nativeName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_nativeName);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryName(common: $common, official: $official, nativeName: $nativeName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryName'))
      ..add(DiagnosticsProperty('common', common))
      ..add(DiagnosticsProperty('official', official))
      ..add(DiagnosticsProperty('nativeName', nativeName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryNameImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official) &&
            const DeepCollectionEquality()
                .equals(other._nativeName, _nativeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common, official,
      const DeepCollectionEquality().hash(_nativeName));

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryNameImplCopyWith<_$CountryNameImpl> get copyWith =>
      __$$CountryNameImplCopyWithImpl<_$CountryNameImpl>(this, _$identity);
}

abstract class _CountryName implements CountryName {
  factory _CountryName(
      {required final String common,
      required final String official,
      final Map<String, CountryName> nativeName}) = _$CountryNameImpl;

  factory _CountryName.fromJson(Map<String, dynamic> json) =
      _$CountryNameImpl.fromJson;

  @override
  String get common;
  @override
  String get official;
  @override
  Map<String, CountryName> get nativeName;

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryNameImplCopyWith<_$CountryNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryFlags _$CountryFlagsFromJson(Map<String, dynamic> json) {
  return _CountryFlags.fromJson(json);
}

/// @nodoc
mixin _$CountryFlags {
  String? get png => throw _privateConstructorUsedError;
  String? get alt => throw _privateConstructorUsedError;

  /// Create a copy of CountryFlags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryFlagsCopyWith<CountryFlags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryFlagsCopyWith<$Res> {
  factory $CountryFlagsCopyWith(
          CountryFlags value, $Res Function(CountryFlags) then) =
      _$CountryFlagsCopyWithImpl<$Res, CountryFlags>;
  @useResult
  $Res call({String? png, String? alt});
}

/// @nodoc
class _$CountryFlagsCopyWithImpl<$Res, $Val extends CountryFlags>
    implements $CountryFlagsCopyWith<$Res> {
  _$CountryFlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryFlags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryFlagsImplCopyWith<$Res>
    implements $CountryFlagsCopyWith<$Res> {
  factory _$$CountryFlagsImplCopyWith(
          _$CountryFlagsImpl value, $Res Function(_$CountryFlagsImpl) then) =
      __$$CountryFlagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? png, String? alt});
}

/// @nodoc
class __$$CountryFlagsImplCopyWithImpl<$Res>
    extends _$CountryFlagsCopyWithImpl<$Res, _$CountryFlagsImpl>
    implements _$$CountryFlagsImplCopyWith<$Res> {
  __$$CountryFlagsImplCopyWithImpl(
      _$CountryFlagsImpl _value, $Res Function(_$CountryFlagsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryFlags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
    Object? alt = freezed,
  }) {
    return _then(_$CountryFlagsImpl(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CountryFlagsImpl with DiagnosticableTreeMixin implements _CountryFlags {
  _$CountryFlagsImpl({this.png, this.alt});

  factory _$CountryFlagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryFlagsImplFromJson(json);

  @override
  final String? png;
  @override
  final String? alt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryFlags(png: $png, alt: $alt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryFlags'))
      ..add(DiagnosticsProperty('png', png))
      ..add(DiagnosticsProperty('alt', alt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryFlagsImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, png, alt);

  /// Create a copy of CountryFlags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryFlagsImplCopyWith<_$CountryFlagsImpl> get copyWith =>
      __$$CountryFlagsImplCopyWithImpl<_$CountryFlagsImpl>(this, _$identity);
}

abstract class _CountryFlags implements CountryFlags {
  factory _CountryFlags({final String? png, final String? alt}) =
      _$CountryFlagsImpl;

  factory _CountryFlags.fromJson(Map<String, dynamic> json) =
      _$CountryFlagsImpl.fromJson;

  @override
  String? get png;
  @override
  String? get alt;

  /// Create a copy of CountryFlags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryFlagsImplCopyWith<_$CountryFlagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryGeneral _$CountryGeneralFromJson(Map<String, dynamic> json) {
  return _CountryGeneral.fromJson(json);
}

/// @nodoc
mixin _$CountryGeneral {
  CountryName get name => throw _privateConstructorUsedError;
  CountryFlags get flags => throw _privateConstructorUsedError;

  /// Create a copy of CountryGeneral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryGeneralCopyWith<CountryGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryGeneralCopyWith<$Res> {
  factory $CountryGeneralCopyWith(
          CountryGeneral value, $Res Function(CountryGeneral) then) =
      _$CountryGeneralCopyWithImpl<$Res, CountryGeneral>;
  @useResult
  $Res call({CountryName name, CountryFlags flags});

  $CountryNameCopyWith<$Res> get name;
  $CountryFlagsCopyWith<$Res> get flags;
}

/// @nodoc
class _$CountryGeneralCopyWithImpl<$Res, $Val extends CountryGeneral>
    implements $CountryGeneralCopyWith<$Res> {
  _$CountryGeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryGeneral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? flags = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as CountryFlags,
    ) as $Val);
  }

  /// Create a copy of CountryGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryNameCopyWith<$Res> get name {
    return $CountryNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of CountryGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryFlagsCopyWith<$Res> get flags {
    return $CountryFlagsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryGeneralImplCopyWith<$Res>
    implements $CountryGeneralCopyWith<$Res> {
  factory _$$CountryGeneralImplCopyWith(_$CountryGeneralImpl value,
          $Res Function(_$CountryGeneralImpl) then) =
      __$$CountryGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountryName name, CountryFlags flags});

  @override
  $CountryNameCopyWith<$Res> get name;
  @override
  $CountryFlagsCopyWith<$Res> get flags;
}

/// @nodoc
class __$$CountryGeneralImplCopyWithImpl<$Res>
    extends _$CountryGeneralCopyWithImpl<$Res, _$CountryGeneralImpl>
    implements _$$CountryGeneralImplCopyWith<$Res> {
  __$$CountryGeneralImplCopyWithImpl(
      _$CountryGeneralImpl _value, $Res Function(_$CountryGeneralImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryGeneral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? flags = null,
  }) {
    return _then(_$CountryGeneralImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as CountryFlags,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CountryGeneralImpl
    with DiagnosticableTreeMixin
    implements _CountryGeneral {
  _$CountryGeneralImpl({required this.name, required this.flags});

  factory _$CountryGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryGeneralImplFromJson(json);

  @override
  final CountryName name;
  @override
  final CountryFlags flags;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryGeneral(name: $name, flags: $flags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryGeneral'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('flags', flags));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryGeneralImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.flags, flags) || other.flags == flags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, flags);

  /// Create a copy of CountryGeneral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryGeneralImplCopyWith<_$CountryGeneralImpl> get copyWith =>
      __$$CountryGeneralImplCopyWithImpl<_$CountryGeneralImpl>(
          this, _$identity);
}

abstract class _CountryGeneral implements CountryGeneral {
  factory _CountryGeneral(
      {required final CountryName name,
      required final CountryFlags flags}) = _$CountryGeneralImpl;

  factory _CountryGeneral.fromJson(Map<String, dynamic> json) =
      _$CountryGeneralImpl.fromJson;

  @override
  CountryName get name;
  @override
  CountryFlags get flags;

  /// Create a copy of CountryGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryGeneralImplCopyWith<_$CountryGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
class _$CountryFullImpl with DiagnosticableTreeMixin implements _CountryFull {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryFull(name: $name, tld: $tld, capital: $capital, altSpellings: $altSpellings, languages: $languages, translations: $translations, area: $area, flag: $flag, population: $population, timezones: $timezones, flags: $flags, coatOfArms: $coatOfArms, startOfWeek: $startOfWeek)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryFull'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tld', tld))
      ..add(DiagnosticsProperty('capital', capital))
      ..add(DiagnosticsProperty('altSpellings', altSpellings))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('translations', translations))
      ..add(DiagnosticsProperty('area', area))
      ..add(DiagnosticsProperty('flag', flag))
      ..add(DiagnosticsProperty('population', population))
      ..add(DiagnosticsProperty('timezones', timezones))
      ..add(DiagnosticsProperty('flags', flags))
      ..add(DiagnosticsProperty('coatOfArms', coatOfArms))
      ..add(DiagnosticsProperty('startOfWeek', startOfWeek));
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

/// @nodoc
mixin _$AppError {
  Object get original => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object original, StackTrace stackTrace) notFound,
    required TResult Function(Object original, StackTrace stackTrace) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object original, StackTrace stackTrace)? notFound,
    TResult? Function(Object original, StackTrace stackTrace)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object original, StackTrace stackTrace)? notFound,
    TResult Function(Object original, StackTrace stackTrace)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppErrorCopyWith<AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
  @useResult
  $Res call({Object original, StackTrace stackTrace});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? stackTrace = null,
  }) {
    return _then(_value.copyWith(
      original: null == original ? _value.original : original,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppErrorNotFoundImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$AppErrorNotFoundImplCopyWith(_$AppErrorNotFoundImpl value,
          $Res Function(_$AppErrorNotFoundImpl) then) =
      __$$AppErrorNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object original, StackTrace stackTrace});
}

/// @nodoc
class __$$AppErrorNotFoundImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorNotFoundImpl>
    implements _$$AppErrorNotFoundImplCopyWith<$Res> {
  __$$AppErrorNotFoundImplCopyWithImpl(_$AppErrorNotFoundImpl _value,
      $Res Function(_$AppErrorNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AppErrorNotFoundImpl(
      original: null == original ? _value.original : original,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AppErrorNotFoundImpl
    with DiagnosticableTreeMixin
    implements _AppErrorNotFound {
  _$AppErrorNotFoundImpl({required this.original, required this.stackTrace});

  @override
  final Object original;
  @override
  final StackTrace stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.notFound(original: $original, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppError.notFound'))
      ..add(DiagnosticsProperty('original', original))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppErrorNotFoundImpl &&
            const DeepCollectionEquality().equals(other.original, original) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(original), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorNotFoundImplCopyWith<_$AppErrorNotFoundImpl> get copyWith =>
      __$$AppErrorNotFoundImplCopyWithImpl<_$AppErrorNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object original, StackTrace stackTrace) notFound,
    required TResult Function(Object original, StackTrace stackTrace) unknown,
  }) {
    return notFound(original, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object original, StackTrace stackTrace)? notFound,
    TResult? Function(Object original, StackTrace stackTrace)? unknown,
  }) {
    return notFound?.call(original, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object original, StackTrace stackTrace)? notFound,
    TResult Function(Object original, StackTrace stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(original, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorUnknown value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorUnknown value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _AppErrorNotFound implements AppError {
  factory _AppErrorNotFound(
      {required final Object original,
      required final StackTrace stackTrace}) = _$AppErrorNotFoundImpl;

  @override
  Object get original;
  @override
  StackTrace get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppErrorNotFoundImplCopyWith<_$AppErrorNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppErrorUnknownImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$AppErrorUnknownImplCopyWith(_$AppErrorUnknownImpl value,
          $Res Function(_$AppErrorUnknownImpl) then) =
      __$$AppErrorUnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object original, StackTrace stackTrace});
}

/// @nodoc
class __$$AppErrorUnknownImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorUnknownImpl>
    implements _$$AppErrorUnknownImplCopyWith<$Res> {
  __$$AppErrorUnknownImplCopyWithImpl(
      _$AppErrorUnknownImpl _value, $Res Function(_$AppErrorUnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AppErrorUnknownImpl(
      original: null == original ? _value.original : original,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AppErrorUnknownImpl
    with DiagnosticableTreeMixin
    implements _AppErrorUnknown {
  _$AppErrorUnknownImpl({required this.original, required this.stackTrace});

  @override
  final Object original;
  @override
  final StackTrace stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.unknown(original: $original, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppError.unknown'))
      ..add(DiagnosticsProperty('original', original))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppErrorUnknownImpl &&
            const DeepCollectionEquality().equals(other.original, original) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(original), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorUnknownImplCopyWith<_$AppErrorUnknownImpl> get copyWith =>
      __$$AppErrorUnknownImplCopyWithImpl<_$AppErrorUnknownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object original, StackTrace stackTrace) notFound,
    required TResult Function(Object original, StackTrace stackTrace) unknown,
  }) {
    return unknown(original, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object original, StackTrace stackTrace)? notFound,
    TResult? Function(Object original, StackTrace stackTrace)? unknown,
  }) {
    return unknown?.call(original, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object original, StackTrace stackTrace)? notFound,
    TResult Function(Object original, StackTrace stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(original, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _AppErrorUnknown implements AppError {
  factory _AppErrorUnknown(
      {required final Object original,
      required final StackTrace stackTrace}) = _$AppErrorUnknownImpl;

  @override
  Object get original;
  @override
  StackTrace get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppErrorUnknownImplCopyWith<_$AppErrorUnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
