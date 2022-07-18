import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/use_cases/listen_to_auth_change_usecase.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/use_cases/sign_in_with_google_account_usecase.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/use_cases/sign_out_usecase.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/use_cases/get_current_user_usecase.dart';
import '../../../zoom_call_injection_container.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.init()) {
    _init();
  }

  final SignInWithGoogleAccountUseCase signInWithGoogleAccountUseCase =
      sl<SignInWithGoogleAccountUseCase>();
  final ListenToAuthChangeUseCase listenToAuthChangeUseCase =
      sl<ListenToAuthChangeUseCase>();
  final GetCurrentUserUseCase getCurrentUserUseCase =
      sl<GetCurrentUserUseCase>();
  final SignOutUseCase signOutUseCase = sl<SignOutUseCase>();
  late User? user;

  Future<void> signInViaGoogleAccount() async {
    final response = await signInWithGoogleAccountUseCase.call();
    response.fold((failure) {
      debugPrint(failure.toString());
      emit(const UnAuthenticated(ZoomStringConstants.unAuthenticatedMsg));
    }, (isLoggedIn) {
      isLoggedIn
          ? emit(const Authenticated())
          : emit(const UnAuthenticated(ZoomStringConstants.unAuthenticatedMsg));
    });
  }

  Stream<User?> listenToAuthStateChanges() {
    return listenToAuthChangeUseCase.call();
  }

  Future<void> signOut() async {
    await signOutUseCase.call();
  }

  void _init() {
    user = getCurrentUserUseCase.call();
  }
}
