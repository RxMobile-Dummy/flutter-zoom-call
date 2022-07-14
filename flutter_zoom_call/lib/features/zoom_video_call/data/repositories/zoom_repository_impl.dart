import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_call/core/failures/app_failures.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/repositories/zoom_repository.dart';

import '../data_sources/firebase_auth/firebase_auth_data_source.dart';
import '../data_sources/firebase_firestore/firebase_firestore_data_source.dart';
import '../data_sources/jitsi_meet_api/jitsi_data_source.dart';

class ZoomRepositoryImpl implements ZoomRepository {
  final FirebaseAuthDataSource authDataSource;
  final FirebaseFireStoreDataSource fireStoreDataSource;
  final JitsiMeetDataSource jitsiMeetDataSource;

  ZoomRepositoryImpl(
      {required this.authDataSource,
      required this.fireStoreDataSource,
      required this.jitsiMeetDataSource});

  @override
  Future<bool> addMeetingToHistory(String meetingName) async {
    return await fireStoreDataSource.addMeetingToHistory(meetingName);
  }

  @override
  Future<Either<Failure, bool>> createNewMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username = ''}) async {
    return await jitsiMeetDataSource.createNewMeeting(
        roomName: roomName,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted);
  }

  @override
  User? getCurrentUser() {
    return authDataSource.getCurrentUser();
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> getMeetingHistoryOfUser() {
    return fireStoreDataSource.getMeetingHistoryOfUser();
  }

  @override
  Stream<User?> listenAuthStateChanges() {
    return authDataSource.listenAuthStateChanges();
  }

  @override
  Future<Either<Failure, bool>> signInWithGoogleAccount() async {
    return await authDataSource.signInWithGoogleAccount();
  }

  @override
  Future<bool> signOut() async {
    return await authDataSource.signOut();
  }
}
