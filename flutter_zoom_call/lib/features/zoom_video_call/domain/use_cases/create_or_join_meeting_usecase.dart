import 'package:dartz/dartz.dart';

import '../../../../core/failures/app_failures.dart';
import '../repositories/zoom_repository.dart';

class CreateOrJoinMeetingUseCase {
  final ZoomRepository zoomRepository;

  CreateOrJoinMeetingUseCase({required this.zoomRepository});

  Future<Either<Failure, bool>> call(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username = ''}) async {
    return await zoomRepository.createOrJoinMeeting(
        isVideoMuted: isVideoMuted,
        isAudioMuted: isAudioMuted,
        roomName: roomName,
        username: username);
  }
}
