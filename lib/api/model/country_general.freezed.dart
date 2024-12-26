// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
class _$CountryGeneralImpl implements _CountryGeneral {
  _$CountryGeneralImpl({required this.name, required this.flags});

  factory _$CountryGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryGeneralImplFromJson(json);

  @override
  final CountryName name;
  @override
  final CountryFlags flags;

  @override
  String toString() {
    return 'CountryGeneral(name: $name, flags: $flags)';
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
