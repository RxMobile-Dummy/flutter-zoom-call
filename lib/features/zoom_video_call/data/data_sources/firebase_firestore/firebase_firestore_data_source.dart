import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseFireStoreDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getMeetingHistoryOfUser();
  Future<bool> addMeetingToHistory(String meetingName);
}
