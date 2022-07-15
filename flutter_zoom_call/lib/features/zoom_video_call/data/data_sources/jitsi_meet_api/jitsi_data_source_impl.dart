import 'package:dartz/dartz.dart';
import 'package:flutter_zoom_call/core/failures/app_failures.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/data/data_sources/firebase_auth/firebase_auth_data_source.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/data/data_sources/firebase_firestore/firebase_firestore_data_source.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/data/data_sources/jitsi_meet_api/jitsi_data_source.dart';
import 'package:jitsi_meet/feature_flag/feature_flag.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

class JitsiMeetDataSourceImpl implements JitsiMeetDataSource {
  final FirebaseAuthDataSource auth;
  final FirebaseFireStoreDataSource fireStore;

  JitsiMeetDataSourceImpl({required this.auth, required this.fireStore});

  @override
  Future<Either<Failure, bool>> createNewMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username = ''}) async {
    bool isMeetingCreated = false;
    try {
      final user = auth.getCurrentUser();
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      featureFlag.resolution = FeatureFlagVideoResolution
          .MD_RESOLUTION; // Limit video resolution to 360p
      String name = '';
      if (username.isEmpty) {
        if (user != null) {
          name = user.displayName!;
        }
      } else {
        name = username;
      }
      var options = JitsiMeetingOptions(room: roomName)
        ..userDisplayName = name
        ..userEmail = user?.email
        ..userAvatarURL = user?.photoURL
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted;

      fireStore.addMeetingToHistory(roomName);
      await JitsiMeet.joinMeeting(options)
          .then((value) => isMeetingCreated = true);
    } catch (error) {
      isMeetingCreated = false;
      return Left(ServerFailure(failureMsg: error.toString()));
    }
    return Right(isMeetingCreated);
  }
}
