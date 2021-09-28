// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoListEventTearOff {
  const _$PhotoListEventTearOff();

  GetAllPhoto getAllPhoto() {
    return const GetAllPhoto();
  }

  GetAllPhotoLocal getAllPhotoLocal() {
    return const GetAllPhotoLocal();
  }

  SavePhotoLocal savePhotoLocal(PhotoElement photoElement) {
    return SavePhotoLocal(
      photoElement,
    );
  }
}

/// @nodoc
const $PhotoListEvent = _$PhotoListEventTearOff();

/// @nodoc
mixin _$PhotoListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPhoto,
    required TResult Function() getAllPhotoLocal,
    required TResult Function(PhotoElement photoElement) savePhotoLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPhoto value) getAllPhoto,
    required TResult Function(GetAllPhotoLocal value) getAllPhotoLocal,
    required TResult Function(SavePhotoLocal value) savePhotoLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoListEventCopyWith<$Res> {
  factory $PhotoListEventCopyWith(
          PhotoListEvent value, $Res Function(PhotoListEvent) then) =
      _$PhotoListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoListEventCopyWithImpl<$Res>
    implements $PhotoListEventCopyWith<$Res> {
  _$PhotoListEventCopyWithImpl(this._value, this._then);

  final PhotoListEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoListEvent) _then;
}

/// @nodoc
abstract class $GetAllPhotoCopyWith<$Res> {
  factory $GetAllPhotoCopyWith(
          GetAllPhoto value, $Res Function(GetAllPhoto) then) =
      _$GetAllPhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllPhotoCopyWithImpl<$Res> extends _$PhotoListEventCopyWithImpl<$Res>
    implements $GetAllPhotoCopyWith<$Res> {
  _$GetAllPhotoCopyWithImpl(
      GetAllPhoto _value, $Res Function(GetAllPhoto) _then)
      : super(_value, (v) => _then(v as GetAllPhoto));

  @override
  GetAllPhoto get _value => super._value as GetAllPhoto;
}

/// @nodoc

class _$GetAllPhoto implements GetAllPhoto {
  const _$GetAllPhoto();

  @override
  String toString() {
    return 'PhotoListEvent.getAllPhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllPhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPhoto,
    required TResult Function() getAllPhotoLocal,
    required TResult Function(PhotoElement photoElement) savePhotoLocal,
  }) {
    return getAllPhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
  }) {
    return getAllPhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
    required TResult orElse(),
  }) {
    if (getAllPhoto != null) {
      return getAllPhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPhoto value) getAllPhoto,
    required TResult Function(GetAllPhotoLocal value) getAllPhotoLocal,
    required TResult Function(SavePhotoLocal value) savePhotoLocal,
  }) {
    return getAllPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
  }) {
    return getAllPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
    required TResult orElse(),
  }) {
    if (getAllPhoto != null) {
      return getAllPhoto(this);
    }
    return orElse();
  }
}

abstract class GetAllPhoto implements PhotoListEvent {
  const factory GetAllPhoto() = _$GetAllPhoto;
}

/// @nodoc
abstract class $GetAllPhotoLocalCopyWith<$Res> {
  factory $GetAllPhotoLocalCopyWith(
          GetAllPhotoLocal value, $Res Function(GetAllPhotoLocal) then) =
      _$GetAllPhotoLocalCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllPhotoLocalCopyWithImpl<$Res>
    extends _$PhotoListEventCopyWithImpl<$Res>
    implements $GetAllPhotoLocalCopyWith<$Res> {
  _$GetAllPhotoLocalCopyWithImpl(
      GetAllPhotoLocal _value, $Res Function(GetAllPhotoLocal) _then)
      : super(_value, (v) => _then(v as GetAllPhotoLocal));

  @override
  GetAllPhotoLocal get _value => super._value as GetAllPhotoLocal;
}

/// @nodoc

class _$GetAllPhotoLocal implements GetAllPhotoLocal {
  const _$GetAllPhotoLocal();

  @override
  String toString() {
    return 'PhotoListEvent.getAllPhotoLocal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllPhotoLocal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPhoto,
    required TResult Function() getAllPhotoLocal,
    required TResult Function(PhotoElement photoElement) savePhotoLocal,
  }) {
    return getAllPhotoLocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
  }) {
    return getAllPhotoLocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
    required TResult orElse(),
  }) {
    if (getAllPhotoLocal != null) {
      return getAllPhotoLocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPhoto value) getAllPhoto,
    required TResult Function(GetAllPhotoLocal value) getAllPhotoLocal,
    required TResult Function(SavePhotoLocal value) savePhotoLocal,
  }) {
    return getAllPhotoLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
  }) {
    return getAllPhotoLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
    required TResult orElse(),
  }) {
    if (getAllPhotoLocal != null) {
      return getAllPhotoLocal(this);
    }
    return orElse();
  }
}

abstract class GetAllPhotoLocal implements PhotoListEvent {
  const factory GetAllPhotoLocal() = _$GetAllPhotoLocal;
}

/// @nodoc
abstract class $SavePhotoLocalCopyWith<$Res> {
  factory $SavePhotoLocalCopyWith(
          SavePhotoLocal value, $Res Function(SavePhotoLocal) then) =
      _$SavePhotoLocalCopyWithImpl<$Res>;
  $Res call({PhotoElement photoElement});

  $PhotoElementCopyWith<$Res> get photoElement;
}

/// @nodoc
class _$SavePhotoLocalCopyWithImpl<$Res>
    extends _$PhotoListEventCopyWithImpl<$Res>
    implements $SavePhotoLocalCopyWith<$Res> {
  _$SavePhotoLocalCopyWithImpl(
      SavePhotoLocal _value, $Res Function(SavePhotoLocal) _then)
      : super(_value, (v) => _then(v as SavePhotoLocal));

  @override
  SavePhotoLocal get _value => super._value as SavePhotoLocal;

  @override
  $Res call({
    Object? photoElement = freezed,
  }) {
    return _then(SavePhotoLocal(
      photoElement == freezed
          ? _value.photoElement
          : photoElement // ignore: cast_nullable_to_non_nullable
              as PhotoElement,
    ));
  }

  @override
  $PhotoElementCopyWith<$Res> get photoElement {
    return $PhotoElementCopyWith<$Res>(_value.photoElement, (value) {
      return _then(_value.copyWith(photoElement: value));
    });
  }
}

/// @nodoc

class _$SavePhotoLocal implements SavePhotoLocal {
  const _$SavePhotoLocal(this.photoElement);

  @override
  final PhotoElement photoElement;

  @override
  String toString() {
    return 'PhotoListEvent.savePhotoLocal(photoElement: $photoElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavePhotoLocal &&
            (identical(other.photoElement, photoElement) ||
                const DeepCollectionEquality()
                    .equals(other.photoElement, photoElement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoElement);

  @JsonKey(ignore: true)
  @override
  $SavePhotoLocalCopyWith<SavePhotoLocal> get copyWith =>
      _$SavePhotoLocalCopyWithImpl<SavePhotoLocal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPhoto,
    required TResult Function() getAllPhotoLocal,
    required TResult Function(PhotoElement photoElement) savePhotoLocal,
  }) {
    return savePhotoLocal(photoElement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
  }) {
    return savePhotoLocal?.call(photoElement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPhoto,
    TResult Function()? getAllPhotoLocal,
    TResult Function(PhotoElement photoElement)? savePhotoLocal,
    required TResult orElse(),
  }) {
    if (savePhotoLocal != null) {
      return savePhotoLocal(photoElement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPhoto value) getAllPhoto,
    required TResult Function(GetAllPhotoLocal value) getAllPhotoLocal,
    required TResult Function(SavePhotoLocal value) savePhotoLocal,
  }) {
    return savePhotoLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
  }) {
    return savePhotoLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPhoto value)? getAllPhoto,
    TResult Function(GetAllPhotoLocal value)? getAllPhotoLocal,
    TResult Function(SavePhotoLocal value)? savePhotoLocal,
    required TResult orElse(),
  }) {
    if (savePhotoLocal != null) {
      return savePhotoLocal(this);
    }
    return orElse();
  }
}

abstract class SavePhotoLocal implements PhotoListEvent {
  const factory SavePhotoLocal(PhotoElement photoElement) = _$SavePhotoLocal;

  PhotoElement get photoElement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePhotoLocalCopyWith<SavePhotoLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PhotoListStateTearOff {
  const _$PhotoListStateTearOff();

  Initial initial() {
    return const Initial();
  }

  SetAllPhoto setAllPhoto(List<PhotoElement> photoList) {
    return SetAllPhoto(
      photoList,
    );
  }
}

/// @nodoc
const $PhotoListState = _$PhotoListStateTearOff();

/// @nodoc
mixin _$PhotoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PhotoElement> photoList) setAllPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PhotoElement> photoList)? setAllPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PhotoElement> photoList)? setAllPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SetAllPhoto value) setAllPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetAllPhoto value)? setAllPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetAllPhoto value)? setAllPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoListStateCopyWith<$Res> {
  factory $PhotoListStateCopyWith(
          PhotoListState value, $Res Function(PhotoListState) then) =
      _$PhotoListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoListStateCopyWithImpl<$Res>
    implements $PhotoListStateCopyWith<$Res> {
  _$PhotoListStateCopyWithImpl(this._value, this._then);

  final PhotoListState _value;
  // ignore: unused_field
  final $Res Function(PhotoListState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PhotoListStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PhotoListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PhotoElement> photoList) setAllPhoto,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PhotoElement> photoList)? setAllPhoto,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PhotoElement> photoList)? setAllPhoto,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SetAllPhoto value) setAllPhoto,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetAllPhoto value)? setAllPhoto,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetAllPhoto value)? setAllPhoto,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PhotoListState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SetAllPhotoCopyWith<$Res> {
  factory $SetAllPhotoCopyWith(
          SetAllPhoto value, $Res Function(SetAllPhoto) then) =
      _$SetAllPhotoCopyWithImpl<$Res>;
  $Res call({List<PhotoElement> photoList});
}

/// @nodoc
class _$SetAllPhotoCopyWithImpl<$Res> extends _$PhotoListStateCopyWithImpl<$Res>
    implements $SetAllPhotoCopyWith<$Res> {
  _$SetAllPhotoCopyWithImpl(
      SetAllPhoto _value, $Res Function(SetAllPhoto) _then)
      : super(_value, (v) => _then(v as SetAllPhoto));

  @override
  SetAllPhoto get _value => super._value as SetAllPhoto;

  @override
  $Res call({
    Object? photoList = freezed,
  }) {
    return _then(SetAllPhoto(
      photoList == freezed
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<PhotoElement>,
    ));
  }
}

/// @nodoc

class _$SetAllPhoto implements SetAllPhoto {
  const _$SetAllPhoto(this.photoList);

  @override
  final List<PhotoElement> photoList;

  @override
  String toString() {
    return 'PhotoListState.setAllPhoto(photoList: $photoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetAllPhoto &&
            (identical(other.photoList, photoList) ||
                const DeepCollectionEquality()
                    .equals(other.photoList, photoList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoList);

  @JsonKey(ignore: true)
  @override
  $SetAllPhotoCopyWith<SetAllPhoto> get copyWith =>
      _$SetAllPhotoCopyWithImpl<SetAllPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PhotoElement> photoList) setAllPhoto,
  }) {
    return setAllPhoto(photoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PhotoElement> photoList)? setAllPhoto,
  }) {
    return setAllPhoto?.call(photoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PhotoElement> photoList)? setAllPhoto,
    required TResult orElse(),
  }) {
    if (setAllPhoto != null) {
      return setAllPhoto(photoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SetAllPhoto value) setAllPhoto,
  }) {
    return setAllPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetAllPhoto value)? setAllPhoto,
  }) {
    return setAllPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetAllPhoto value)? setAllPhoto,
    required TResult orElse(),
  }) {
    if (setAllPhoto != null) {
      return setAllPhoto(this);
    }
    return orElse();
  }
}

abstract class SetAllPhoto implements PhotoListState {
  const factory SetAllPhoto(List<PhotoElement> photoList) = _$SetAllPhoto;

  List<PhotoElement> get photoList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAllPhotoCopyWith<SetAllPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
