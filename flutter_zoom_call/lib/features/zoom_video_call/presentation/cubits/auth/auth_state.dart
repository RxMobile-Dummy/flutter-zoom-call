part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.init() = AuthInitial;

  const factory AuthState.authenticated() = Authenticated;

  const factory AuthState.unAuthenticated(String? failureMsg) = UnAuthenticated;
}
