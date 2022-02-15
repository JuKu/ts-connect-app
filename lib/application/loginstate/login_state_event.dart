part of 'login_state_bloc.dart';

@immutable
abstract class LoginStateEvent {}

/// This event is fired, if the BLOC should check, if the user
/// is already logged in
class CheckLoginEvent extends LoginStateEvent {}

/// This event is fired, if the user tries to login with username and password
class TryToLoginEvent extends LoginStateEvent {
  final String username;
  final String password;

  TryToLoginEvent({Key? key, required this.username, required this.password})
      : super();

  String get getUsername {
    return username;
  }

  String get getPassword {
    return password;
  }
}

/// This event is fired, if the user wants to logout
class LogoutEvent extends LoginStateEvent {}
