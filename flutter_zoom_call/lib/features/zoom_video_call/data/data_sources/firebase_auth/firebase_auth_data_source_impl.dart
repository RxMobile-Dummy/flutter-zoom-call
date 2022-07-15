import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/data/data_sources/firebase_auth/firebase_auth_data_source.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/failures/app_failures.dart';

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth auth;

  final FirebaseFirestore fireStore;

  FirebaseAuthDataSourceImpl({required this.auth, required this.fireStore});

  @override
  User? getCurrentUser() {
    return auth.currentUser;
  }

  @override
  Stream<User?> listenAuthStateChanges() {
    return auth.authStateChanges();
  }

  @override
  Future<Either<Failure, bool>> signInWithGoogleAccount() async {
    bool isLoggedIn = false;
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
            clientId:
                '467071378165-mhiilnn8vn6dma3b1o2v33q5vi0imlk5.apps.googleusercontent.com')
        .signIn();
    try {
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential =
          await auth.signInWithCredential(credential);

      User? user = userCredential.user;

      if (user != null) {
        if (userCredential.additionalUserInfo!.isNewUser) {
          await fireStore.collection('users').doc(user.uid).set({
            'username': user.displayName,
            'uid': user.uid,
            'profilePhoto': user.photoURL,
          });
        }
        isLoggedIn = true;
      }
    } on FirebaseAuthException catch (e) {
      isLoggedIn = false;
      return Left(AuthFailure(failureMsg: e.message));
    } catch (e) {
      return Left(UnknownFailure(failureMsg: e.toString()));
    }
    return Right(isLoggedIn);
  }

  @override
  Future<bool> signOut() async {
    bool isLoggedOut = false;
    try {
      auth.signOut().then((value) => isLoggedOut = true);
    } catch (error) {
      isLoggedOut = false;
    }
    return isLoggedOut;
  }
}
