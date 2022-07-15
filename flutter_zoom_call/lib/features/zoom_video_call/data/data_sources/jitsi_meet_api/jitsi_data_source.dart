import 'package:dartz/dartz.dart';

import '../../../../../core/failures/app_failures.dart';

abstract class JitsiMeetDataSource {
  Future<Either<Failure, bool>> createOrJoinMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username = ''});
}
