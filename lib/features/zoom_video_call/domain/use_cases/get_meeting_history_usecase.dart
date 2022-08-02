import 'package:cloud_firestore/cloud_firestore.dart';

import '../repositories/zoom_repository.dart';

class GetMeetingHistoryUseCase {
  final ZoomRepository zoomRepository;

  GetMeetingHistoryUseCase({required this.zoomRepository});
  Stream<QuerySnapshot<Map<String, dynamic>>> call() {
    return zoomRepository.getMeetingHistoryOfUser();
  }
}
