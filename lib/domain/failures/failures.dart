import 'package:dartz/dartz.dart';

abstract class Failure{}

abstract class LoginFailure{
  /// return the intl message token
  String get getErrorMessage;
}

/// This error is fired, if the server returns a HTTP status code 5xx .
class InternalServerError extends Failure {}

/// This error is fired, if the server returns HTTP status code 401 .
/// This means the user has to login first (so go to logout page)
class UnauthorizedError extends Failure {}

/// This error is fired, if the server returns HTTP status code 403 (Forbidden).
/// This means, that the user does not have the role or permission to access
/// this API.
class PermissionNotGrantedError extends Failure {}

/// This error is fired, if the server is currently in maintenance mode.
/// So we should print a message in UI "please try in 5 minutes again".
class MaintenanceError extends Failure implements LoginFailure {
  @override
  String get getErrorMessage => "error_maintenance_text";
}

/// This error is fired, if the login failed caused by wrong credentials.
class WrongCredentialsError extends LoginFailure {
  @override
  String get getErrorMessage => "error_wrong_credentials";
}