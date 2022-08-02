import '../repositories/zoom_repository.dart';

class SignOutUseCase {
  final ZoomRepository zoomRepository;

  SignOutUseCase({required this.zoomRepository});
  Future<bool> call() async {
    return await zoomRepository.signOut();
  }
}
