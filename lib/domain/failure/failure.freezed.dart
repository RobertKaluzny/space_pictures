// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Failure call(
      {required String failureId,
      required String failureValue,
      required bool failure}) {
    return _Failure(
      failureId: failureId,
      failureValue: failureValue,
      failure: failure,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get failureId => throw _privateConstructorUsedError;
  String get failureValue => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String failureId, String failureValue, bool failure});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? failureId = freezed,
    Object? failureValue = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      failureId: failureId == freezed
          ? _value.failureId
          : failureId // ignore: cast_nullable_to_non_nullable
              as String,
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  @override
  $Res call({String failureId, String failureValue, bool failure});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failureId = freezed,
    Object? failureValue = freezed,
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failureId: failureId == freezed
          ? _value.failureId
          : failureId // ignore: cast_nullable_to_non_nullable
              as String,
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(
      {required this.failureId,
      required this.failureValue,
      required this.failure})
      : super._();

  @override
  final String failureId;
  @override
  final String failureValue;
  @override
  final bool failure;

  @override
  String toString() {
    return 'Failure(failureId: $failureId, failureValue: $failureValue, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failureId, failureId) ||
                const DeepCollectionEquality()
                    .equals(other.failureId, failureId)) &&
            (identical(other.failureValue, failureValue) ||
                const DeepCollectionEquality()
                    .equals(other.failureValue, failureValue)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureId) ^
      const DeepCollectionEquality().hash(failureValue) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);
}

abstract class _Failure extends Failure {
  const factory _Failure(
      {required String failureId,
      required String failureValue,
      required bool failure}) = _$_Failure;
  const _Failure._() : super._();

  @override
  String get failureId => throw _privateConstructorUsedError;
  @override
  String get failureValue => throw _privateConstructorUsedError;
  @override
  bool get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
