import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/zoom_repository.dart';

class ListenToAuthChangeUseCase {
  final ZoomRepository zoomRepository;

  ListenToAuthChangeUseCase({required this.zoomRepository});

  Stream<User?> call() {
    return zoomRepository.listenAuthStateChanges();
  }
}
