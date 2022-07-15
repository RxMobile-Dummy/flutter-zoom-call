part of 'bottom_navbar_cubit.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const BottomNavBarState._();

  const factory BottomNavBarState.init() = NavBarInitial;

  const factory BottomNavBarState.pageChanged(
      {@Default(false) updateFlag,
      @Default(0) currentIndex}) = NavbarPageChanged;
}
