// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meeting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MeetingStateTearOff {
  const _$MeetingStateTearOff();

  MeetingInitial init() {
    return const MeetingInitial();
  }

  MeetingLoading meetingLoading() {
    return const MeetingLoading();
  }

  MeetingSuccess meetingSuccess(
      {dynamic updateFlag = false, String? errorMsg}) {
    return MeetingSuccess(
      updateFlag: updateFlag,
      errorMsg: errorMsg,
    );
  }

  MeetingFailure meetingFailure(String? failureMsg) {
    return MeetingFailure(
      failureMsg,
    );
  }
}

/// @nodoc
const $MeetingState = _$MeetingStateTearOff();

/// @nodoc
mixin _$MeetingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() meetingLoading,
    required TResult Function(dynamic updateFlag, String? errorMsg)
        meetingSuccess,
    required TResult Function(String? failureMsg) meetingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetingInitial value) init,
    required TResult Function(MeetingLoading value) meetingLoading,
    required TResult Function(MeetingSuccess value) meetingSuccess,
    required TResult Function(MeetingFailure value) meetingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingStateCopyWith<$Res> {
  factory $MeetingStateCopyWith(
          MeetingState value, $Res Function(MeetingState) then) =
      _$MeetingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MeetingStateCopyWithImpl<$Res> implements $MeetingStateCopyWith<$Res> {
  _$MeetingStateCopyWithImpl(this._value, this._then);

  final MeetingState _value;
  // ignore: unused_field
  final $Res Function(MeetingState) _then;
}

/// @nodoc
abstract class $MeetingInitialCopyWith<$Res> {
  factory $MeetingInitialCopyWith(
          MeetingInitial value, $Res Function(MeetingInitial) then) =
      _$MeetingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MeetingInitialCopyWithImpl<$Res>
    extends _$MeetingStateCopyWithImpl<$Res>
    implements $MeetingInitialCopyWith<$Res> {
  _$MeetingInitialCopyWithImpl(
      MeetingInitial _value, $Res Function(MeetingInitial) _then)
      : super(_value, (v) => _then(v as MeetingInitial));

  @override
  MeetingInitial get _value => super._value as MeetingInitial;
}

/// @nodoc

class _$MeetingInitial extends MeetingInitial {
  const _$MeetingInitial() : super._();

  @override
  String toString() {
    return 'MeetingState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MeetingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() meetingLoading,
    required TResult Function(dynamic updateFlag, String? errorMsg)
        meetingSuccess,
    required TResult Function(String? failureMsg) meetingFailure,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetingInitial value) init,
    required TResult Function(MeetingLoading value) meetingLoading,
    required TResult Function(MeetingSuccess value) meetingSuccess,
    required TResult Function(MeetingFailure value) meetingFailure,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MeetingInitial extends MeetingState {
  const factory MeetingInitial() = _$MeetingInitial;
  const MeetingInitial._() : super._();
}

/// @nodoc
abstract class $MeetingLoadingCopyWith<$Res> {
  factory $MeetingLoadingCopyWith(
          MeetingLoading value, $Res Function(MeetingLoading) then) =
      _$MeetingLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MeetingLoadingCopyWithImpl<$Res>
    extends _$MeetingStateCopyWithImpl<$Res>
    implements $MeetingLoadingCopyWith<$Res> {
  _$MeetingLoadingCopyWithImpl(
      MeetingLoading _value, $Res Function(MeetingLoading) _then)
      : super(_value, (v) => _then(v as MeetingLoading));

  @override
  MeetingLoading get _value => super._value as MeetingLoading;
}

/// @nodoc

class _$MeetingLoading extends MeetingLoading {
  const _$MeetingLoading() : super._();

  @override
  String toString() {
    return 'MeetingState.meetingLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MeetingLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() meetingLoading,
    required TResult Function(dynamic updateFlag, String? errorMsg)
        meetingSuccess,
    required TResult Function(String? failureMsg) meetingFailure,
  }) {
    return meetingLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
  }) {
    return meetingLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
    required TResult orElse(),
  }) {
    if (meetingLoading != null) {
      return meetingLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetingInitial value) init,
    required TResult Function(MeetingLoading value) meetingLoading,
    required TResult Function(MeetingSuccess value) meetingSuccess,
    required TResult Function(MeetingFailure value) meetingFailure,
  }) {
    return meetingLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
  }) {
    return meetingLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
    required TResult orElse(),
  }) {
    if (meetingLoading != null) {
      return meetingLoading(this);
    }
    return orElse();
  }
}

abstract class MeetingLoading extends MeetingState {
  const factory MeetingLoading() = _$MeetingLoading;
  const MeetingLoading._() : super._();
}

/// @nodoc
abstract class $MeetingSuccessCopyWith<$Res> {
  factory $MeetingSuccessCopyWith(
          MeetingSuccess value, $Res Function(MeetingSuccess) then) =
      _$MeetingSuccessCopyWithImpl<$Res>;
  $Res call({dynamic updateFlag, String? errorMsg});
}

/// @nodoc
class _$MeetingSuccessCopyWithImpl<$Res>
    extends _$MeetingStateCopyWithImpl<$Res>
    implements $MeetingSuccessCopyWith<$Res> {
  _$MeetingSuccessCopyWithImpl(
      MeetingSuccess _value, $Res Function(MeetingSuccess) _then)
      : super(_value, (v) => _then(v as MeetingSuccess));

  @override
  MeetingSuccess get _value => super._value as MeetingSuccess;

  @override
  $Res call({
    Object? updateFlag = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(MeetingSuccess(
      updateFlag: updateFlag == freezed ? _value.updateFlag : updateFlag,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MeetingSuccess extends MeetingSuccess {
  const _$MeetingSuccess({this.updateFlag = false, this.errorMsg}) : super._();

  @JsonKey()
  @override
  final dynamic updateFlag;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'MeetingState.meetingSuccess(updateFlag: $updateFlag, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingSuccess &&
            const DeepCollectionEquality()
                .equals(other.updateFlag, updateFlag) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(updateFlag),
      const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  $MeetingSuccessCopyWith<MeetingSuccess> get copyWith =>
      _$MeetingSuccessCopyWithImpl<MeetingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() meetingLoading,
    required TResult Function(dynamic updateFlag, String? errorMsg)
        meetingSuccess,
    required TResult Function(String? failureMsg) meetingFailure,
  }) {
    return meetingSuccess(updateFlag, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
  }) {
    return meetingSuccess?.call(updateFlag, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
    required TResult orElse(),
  }) {
    if (meetingSuccess != null) {
      return meetingSuccess(updateFlag, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetingInitial value) init,
    required TResult Function(MeetingLoading value) meetingLoading,
    required TResult Function(MeetingSuccess value) meetingSuccess,
    required TResult Function(MeetingFailure value) meetingFailure,
  }) {
    return meetingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
  }) {
    return meetingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
    required TResult orElse(),
  }) {
    if (meetingSuccess != null) {
      return meetingSuccess(this);
    }
    return orElse();
  }
}

abstract class MeetingSuccess extends MeetingState {
  const factory MeetingSuccess({dynamic updateFlag, String? errorMsg}) =
      _$MeetingSuccess;
  const MeetingSuccess._() : super._();

  dynamic get updateFlag;
  String? get errorMsg;
  @JsonKey(ignore: true)
  $MeetingSuccessCopyWith<MeetingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingFailureCopyWith<$Res> {
  factory $MeetingFailureCopyWith(
          MeetingFailure value, $Res Function(MeetingFailure) then) =
      _$MeetingFailureCopyWithImpl<$Res>;
  $Res call({String? failureMsg});
}

/// @nodoc
class _$MeetingFailureCopyWithImpl<$Res>
    extends _$MeetingStateCopyWithImpl<$Res>
    implements $MeetingFailureCopyWith<$Res> {
  _$MeetingFailureCopyWithImpl(
      MeetingFailure _value, $Res Function(MeetingFailure) _then)
      : super(_value, (v) => _then(v as MeetingFailure));

  @override
  MeetingFailure get _value => super._value as MeetingFailure;

  @override
  $Res call({
    Object? failureMsg = freezed,
  }) {
    return _then(MeetingFailure(
      failureMsg == freezed
          ? _value.failureMsg
          : failureMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MeetingFailure extends MeetingFailure {
  const _$MeetingFailure(this.failureMsg) : super._();

  @override
  final String? failureMsg;

  @override
  String toString() {
    return 'MeetingState.meetingFailure(failureMsg: $failureMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingFailure &&
            const DeepCollectionEquality()
                .equals(other.failureMsg, failureMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failureMsg));

  @JsonKey(ignore: true)
  @override
  $MeetingFailureCopyWith<MeetingFailure> get copyWith =>
      _$MeetingFailureCopyWithImpl<MeetingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() meetingLoading,
    required TResult Function(dynamic updateFlag, String? errorMsg)
        meetingSuccess,
    required TResult Function(String? failureMsg) meetingFailure,
  }) {
    return meetingFailure(failureMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
  }) {
    return meetingFailure?.call(failureMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? meetingLoading,
    TResult Function(dynamic updateFlag, String? errorMsg)? meetingSuccess,
    TResult Function(String? failureMsg)? meetingFailure,
    required TResult orElse(),
  }) {
    if (meetingFailure != null) {
      return meetingFailure(failureMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetingInitial value) init,
    required TResult Function(MeetingLoading value) meetingLoading,
    required TResult Function(MeetingSuccess value) meetingSuccess,
    required TResult Function(MeetingFailure value) meetingFailure,
  }) {
    return meetingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
  }) {
    return meetingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetingInitial value)? init,
    TResult Function(MeetingLoading value)? meetingLoading,
    TResult Function(MeetingSuccess value)? meetingSuccess,
    TResult Function(MeetingFailure value)? meetingFailure,
    required TResult orElse(),
  }) {
    if (meetingFailure != null) {
      return meetingFailure(this);
    }
    return orElse();
  }
}

abstract class MeetingFailure extends MeetingState {
  const factory MeetingFailure(String? failureMsg) = _$MeetingFailure;
  const MeetingFailure._() : super._();

  String? get failureMsg;
  @JsonKey(ignore: true)
  $MeetingFailureCopyWith<MeetingFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
