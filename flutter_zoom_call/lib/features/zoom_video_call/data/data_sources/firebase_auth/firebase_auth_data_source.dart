import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/failures/app_failures.dart';

abstract class FirebaseAuthDataSource {
  Future<Either<Failure, bool>> signInWithGoogleAccount();
  User? getCurrentUser();
  Stream<User?> listenAuthStateChanges();
  Future<bool> signOut();
}
