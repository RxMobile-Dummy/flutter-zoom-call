import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/data/data_sources/firebase_firestore/firebase_firestore_data_source.dart';

import '../../models/meeting_model.dart';

class FirebaseFireStoreDataSourceImpl implements FirebaseFireStoreDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore fireStore;

  FirebaseFireStoreDataSourceImpl(
      {required this.fireStore, required this.auth});

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> getMeetingHistoryOfUser() {
    final result = fireStore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('meetings')
        .snapshots();
    return result;
  }

  @override
  Future<bool> addMeetingToHistory(String meetingName) async {
    bool isMeetingAdded = false;
    try {
      await fireStore
          .collection('users')
          .doc(auth.currentUser!.uid)
          .collection('meetings')
          .add(MeetingModel(meetingName: meetingName, createdAt: DateTime.now())
              .toJson())
          .whenComplete(() => isMeetingAdded = true);
    } catch (e) {
      isMeetingAdded = false;
    }
    return Future.value(isMeetingAdded);
  }
}
