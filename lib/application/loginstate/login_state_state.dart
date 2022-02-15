part of 'login_state_bloc.dart';

@immutable
abstract class LoginStateState {}

/// This state is the initial state and means that the Bloc has not verified yet,
/// if the user is logged in or not
class LoginStateInitial extends LoginStateState {}

/// This state represents the waiting while checking for login state
class CheckForLoginStateInitial extends LoginStateState {}

/// This state is emitted, if the user is logged in
class LoggedInState extends LoginStateState {}

/// This state is emitted, if the user is not logged in (anymore)
class NotLoggedInState extends LoginStateState {}

/// This state is emitted, if the app could not check, if the user is logged in,
/// e.q. caused because network is not available
class LoginCheckErrorState extends LoginStateState {}
