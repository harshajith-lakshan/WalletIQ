abstract class Failure {
  final String message;
  final String? code;

  Failure({required this.message, this.code});
}

class FirebaseFailure extends Failure {
  FirebaseFailure({required String message, String? code})
      : super(message: message, code: code);
}

class DatabaseFailure extends Failure {
  DatabaseFailure({required String message, String? code})
      : super(message: message, code: code);
}

class AuthenticationFailure extends Failure {
  AuthenticationFailure({required String message, String? code})
      : super(message: message, code: code);
}

class ValidationFailure extends Failure {
  ValidationFailure({required String message, String? code})
      : super(message: message, code: code);
}

class NetworkFailure extends Failure {
  NetworkFailure({required String message, String? code})
      : super(message: message, code: code);
}

class SyncFailure extends Failure {
  SyncFailure({required String message, String? code})
      : super(message: message, code: code);
}

class NotFoundFailure extends Failure {
  NotFoundFailure({required String message, String? code})
      : super(message: message, code: code);
}
