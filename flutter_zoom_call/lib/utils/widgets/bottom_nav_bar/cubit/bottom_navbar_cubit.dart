import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'bottom_navbar_cubit.freezed.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<BottomNavBarState> {
  BottomNavbarCubit() : super(const BottomNavBarState.init());
  int currentIndex = 0;

  void onPageChanged(int index) {
    currentIndex = index;
    if (state is NavbarPageChanged) {
      final success = state as NavbarPageChanged;
      emit(success.copyWith(
          currentIndex: currentIndex, updateFlag: !success.updateFlag));
    } else {
      emit(BottomNavBarState.pageChanged(currentIndex: currentIndex));
    }
  }
}
