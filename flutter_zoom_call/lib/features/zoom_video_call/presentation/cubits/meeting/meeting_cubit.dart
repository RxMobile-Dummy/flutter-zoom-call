import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'meeting_state.dart';

class MeetingCubit extends Cubit<MeetingState> {
  MeetingCubit() : super(MeetingInitial());
}
