// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

class _$AppErrorNotFoundImpl implements _AppErrorNotFound {
  _$AppErrorNotFoundImpl({required this.original, required this.stackTrace});

  @override
  final Object original;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AppError.notFound(original: $original, stackTrace: $stackTrace)';
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

class _$AppErrorUnknownImpl implements _AppErrorUnknown {
  _$AppErrorUnknownImpl({required this.original, required this.stackTrace});

  @override
  final Object original;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AppError.unknown(original: $original, stackTrace: $stackTrace)';
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
