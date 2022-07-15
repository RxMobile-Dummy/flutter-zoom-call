import 'package:dartz/dartz.dart';

import '../../../../core/failures/app_failures.dart';
import '../repositories/zoom_repository.dart';

class SignInWithGoogleAccountUseCase {
  final ZoomRepository zoomRepository;

  SignInWithGoogleAccountUseCase({required this.zoomRepository});
  Future<Either<Failure, bool>> call() async {
    return await zoomRepository.signInWithGoogleAccount();
  }
}
