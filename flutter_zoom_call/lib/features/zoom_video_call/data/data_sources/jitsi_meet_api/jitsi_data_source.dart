import 'package:dartz/dartz.dart';

import '../../../../../core/failures/app_failures.dart';

abstract class JitsiMeetDataSource {
  Future<Either<Failure, bool>> createNewMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username = ''});
}
