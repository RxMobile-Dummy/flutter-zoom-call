import 'package:flutter_zoom_call/features/zoom_video_call/domain/repositories/zoom_repository.dart';

class AddMeetingToHistoryUseCase {
  final ZoomRepository zoomRepository;

  AddMeetingToHistoryUseCase({required this.zoomRepository});

  Future<bool> call(String meetingName) async {
    return await zoomRepository.addMeetingToHistory(meetingName);
  }
}
