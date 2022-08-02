import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/use_cases/create_or_join_meeting_usecase.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/use_cases/get_current_user_usecase.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/use_cases/get_meeting_history_usecase.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../zoom_call_injection_container.dart';

part 'meeting_cubit.freezed.dart';

part 'meeting_state.dart';

class MeetingCubit extends Cubit<MeetingState> {
  MeetingCubit() : super(const MeetingState.init()) {
    _init();
  }

  final GetCurrentUserUseCase getCurrentUserUseCase =
      sl<GetCurrentUserUseCase>();
  final CreateOrJoinMeetingUseCase createNewMeetingUseCase =
      sl<CreateOrJoinMeetingUseCase>();
  final GetMeetingHistoryUseCase getMeetingHistoryUseCase =
      sl<GetMeetingHistoryUseCase>();

  bool isAudioMuted = true;
  bool isVideoMuted = true;
  late TextEditingController meetingIdController;
  late TextEditingController nameController;

  Future<void> createOrJoinMeeting({required bool isNewMeeting}) async {
    try {
      var random = Random();
      String roomName = (random.nextInt(10000000) + 10000000).toString();
      emit(const MeetingLoading());
      if (!isNewMeeting && meetingIdController.text.trim().length < 3) {
        emit(MeetingSuccess(errorMsg: ZoomStringConstants.meetingIdError));
      } else {
        final response = await createNewMeetingUseCase.call(
          roomName: isNewMeeting ? roomName : meetingIdController.text,
          isAudioMuted: isAudioMuted,
          isVideoMuted: isVideoMuted,
          username: nameController.text,
        );
        response.fold((error) {
          debugPrint(error.toString());
          emit(MeetingFailure(ZoomStringConstants.failedToJoinMsg));
        }, (isMeetingJoined) {
          if (isMeetingJoined) {
            emit(const MeetingSuccess());
          } else {
            emit(MeetingFailure(ZoomStringConstants.failedToJoinMsg));
          }
        });
      }
    } catch (e) {
      emit(MeetingFailure(e.toString()));
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getMeetingHistory() {
    return getMeetingHistoryUseCase.call();
  }

  void onAudioMuted(bool val) {
    isAudioMuted = val;
    notifyToChangeUi();
  }

  void onVideoMuted(bool val) {
    isVideoMuted = val;
    notifyToChangeUi();
  }

  void notifyToChangeUi() {
    if (state is MeetingSuccess) {
      final success = state as MeetingSuccess;
      emit(success.copyWith(updateFlag: !success.updateFlag, errorMsg: null));
    }
  }

  void _init() {
    final user = getCurrentUserUseCase.call();
    meetingIdController = TextEditingController();
    nameController = TextEditingController(
      text: user?.displayName ?? '',
    );
    emit(const MeetingSuccess());
  }
}
