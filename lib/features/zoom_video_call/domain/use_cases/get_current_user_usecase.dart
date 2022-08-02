import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/zoom_repository.dart';

class GetCurrentUserUseCase {
  final ZoomRepository zoomRepository;

  GetCurrentUserUseCase({required this.zoomRepository});
  User? call() {
    return zoomRepository.getCurrentUser();
  }
}
