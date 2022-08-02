part of 'meeting_cubit.dart';

@freezed
class MeetingState with _$MeetingState {
  const MeetingState._();

  const factory MeetingState.init() = MeetingInitial;

  const factory MeetingState.meetingLoading() = MeetingLoading;

  const factory MeetingState.meetingSuccess(
      {@Default(false) updateFlag, String? errorMsg}) = MeetingSuccess;

  const factory MeetingState.meetingFailure(String? failureMsg) =
      MeetingFailure;
}
