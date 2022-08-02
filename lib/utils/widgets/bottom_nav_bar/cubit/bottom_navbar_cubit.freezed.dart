// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navbar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavBarStateTearOff {
  const _$BottomNavBarStateTearOff();

  NavBarInitial init() {
    return const NavBarInitial();
  }

  NavbarPageChanged pageChanged(
      {dynamic updateFlag = false, dynamic currentIndex = 0}) {
    return NavbarPageChanged(
      updateFlag: updateFlag,
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
const $BottomNavBarState = _$BottomNavBarStateTearOff();

/// @nodoc
mixin _$BottomNavBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic updateFlag, dynamic currentIndex)
        pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic updateFlag, dynamic currentIndex)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic updateFlag, dynamic currentIndex)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavBarInitial value) init,
    required TResult Function(NavbarPageChanged value) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavBarInitial value)? init,
    TResult Function(NavbarPageChanged value)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavBarInitial value)? init,
    TResult Function(NavbarPageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavBarStateCopyWith<$Res> {
  factory $BottomNavBarStateCopyWith(
          BottomNavBarState value, $Res Function(BottomNavBarState) then) =
      _$BottomNavBarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavBarStateCopyWithImpl<$Res>
    implements $BottomNavBarStateCopyWith<$Res> {
  _$BottomNavBarStateCopyWithImpl(this._value, this._then);

  final BottomNavBarState _value;
  // ignore: unused_field
  final $Res Function(BottomNavBarState) _then;
}

/// @nodoc
abstract class $NavBarInitialCopyWith<$Res> {
  factory $NavBarInitialCopyWith(
          NavBarInitial value, $Res Function(NavBarInitial) then) =
      _$NavBarInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavBarInitialCopyWithImpl<$Res>
    extends _$BottomNavBarStateCopyWithImpl<$Res>
    implements $NavBarInitialCopyWith<$Res> {
  _$NavBarInitialCopyWithImpl(
      NavBarInitial _value, $Res Function(NavBarInitial) _then)
      : super(_value, (v) => _then(v as NavBarInitial));

  @override
  NavBarInitial get _value => super._value as NavBarInitial;
}

/// @nodoc

class _$NavBarInitial extends NavBarInitial {
  const _$NavBarInitial() : super._();

  @override
  String toString() {
    return 'BottomNavBarState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NavBarInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic updateFlag, dynamic currentIndex)
        pageChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic updateFlag, dynamic currentIndex)? pageChanged,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic updateFlag, dynamic currentIndex)? pageChanged,
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
    required TResult Function(NavBarInitial value) init,
    required TResult Function(NavbarPageChanged value) pageChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavBarInitial value)? init,
    TResult Function(NavbarPageChanged value)? pageChanged,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavBarInitial value)? init,
    TResult Function(NavbarPageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class NavBarInitial extends BottomNavBarState {
  const factory NavBarInitial() = _$NavBarInitial;
  const NavBarInitial._() : super._();
}

/// @nodoc
abstract class $NavbarPageChangedCopyWith<$Res> {
  factory $NavbarPageChangedCopyWith(
          NavbarPageChanged value, $Res Function(NavbarPageChanged) then) =
      _$NavbarPageChangedCopyWithImpl<$Res>;
  $Res call({dynamic updateFlag, dynamic currentIndex});
}

/// @nodoc
class _$NavbarPageChangedCopyWithImpl<$Res>
    extends _$BottomNavBarStateCopyWithImpl<$Res>
    implements $NavbarPageChangedCopyWith<$Res> {
  _$NavbarPageChangedCopyWithImpl(
      NavbarPageChanged _value, $Res Function(NavbarPageChanged) _then)
      : super(_value, (v) => _then(v as NavbarPageChanged));

  @override
  NavbarPageChanged get _value => super._value as NavbarPageChanged;

  @override
  $Res call({
    Object? updateFlag = freezed,
    Object? currentIndex = freezed,
  }) {
    return _then(NavbarPageChanged(
      updateFlag: updateFlag == freezed ? _value.updateFlag : updateFlag,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex,
    ));
  }
}

/// @nodoc

class _$NavbarPageChanged extends NavbarPageChanged {
  const _$NavbarPageChanged({this.updateFlag = false, this.currentIndex = 0})
      : super._();

  @JsonKey()
  @override
  final dynamic updateFlag;
  @JsonKey()
  @override
  final dynamic currentIndex;

  @override
  String toString() {
    return 'BottomNavBarState.pageChanged(updateFlag: $updateFlag, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavbarPageChanged &&
            const DeepCollectionEquality()
                .equals(other.updateFlag, updateFlag) &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(updateFlag),
      const DeepCollectionEquality().hash(currentIndex));

  @JsonKey(ignore: true)
  @override
  $NavbarPageChangedCopyWith<NavbarPageChanged> get copyWith =>
      _$NavbarPageChangedCopyWithImpl<NavbarPageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic updateFlag, dynamic currentIndex)
        pageChanged,
  }) {
    return pageChanged(updateFlag, currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic updateFlag, dynamic currentIndex)? pageChanged,
  }) {
    return pageChanged?.call(updateFlag, currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic updateFlag, dynamic currentIndex)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(updateFlag, currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavBarInitial value) init,
    required TResult Function(NavbarPageChanged value) pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavBarInitial value)? init,
    TResult Function(NavbarPageChanged value)? pageChanged,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavBarInitial value)? init,
    TResult Function(NavbarPageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class NavbarPageChanged extends BottomNavBarState {
  const factory NavbarPageChanged({dynamic updateFlag, dynamic currentIndex}) =
      _$NavbarPageChanged;
  const NavbarPageChanged._() : super._();

  dynamic get updateFlag;
  dynamic get currentIndex;
  @JsonKey(ignore: true)
  $NavbarPageChangedCopyWith<NavbarPageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
