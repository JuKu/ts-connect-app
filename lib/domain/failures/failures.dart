abstract class Failure{}

/// This error is fired, if the server returns a HTTP status code 5xx .
class InternalServerError extends Failure {}

/// This error is fired, if the server returns HTTP status code 401 .
/// This means the user has to login first (so go to logout page)
class UnauthorizedError extends Failure {}

/// This error is fired, if the server returns HTTP status code 403 (Forbidden).
/// This means, that the user does not have the role or permission to access
/// this API.
class PermissionNotGrantedError extends Failure {}