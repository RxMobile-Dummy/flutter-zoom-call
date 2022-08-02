abstract class Failure {}

class ServerFailure extends Failure {
  String? failureMsg;

  ServerFailure({this.failureMsg});
}

class SocketFailure extends Failure {
  String? failureMsg;

  SocketFailure({this.failureMsg});
}

class AuthFailure extends Failure {
  String? failureMsg;

  AuthFailure({this.failureMsg});
}

class UnknownFailure extends Failure {
  String? failureMsg = 'Unknown failure has occurred.';

  UnknownFailure({this.failureMsg});
}
