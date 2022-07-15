import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/failures/app_failures.dart';

abstract class ZoomRepository {
  ///firebase Auth
  Future<Either<Failure, bool>> signInWithGoogleAccount();

  Future<bool> signOut();

  User? getCurrentUser();

  Stream<User?> listenAuthStateChanges();

  ///firebase fireStore
  Stream<QuerySnapshot<Map<String, dynamic>>> getMeetingHistoryOfUser();

  Future<bool> addMeetingToHistory(String meetingName);

  ///Jitsi meet
  Future<Either<Failure, bool>> createNewMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username = ''});
}
