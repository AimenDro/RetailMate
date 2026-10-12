import 'session.dart';

/// Result of an [AuthService.login] call.
sealed class AuthResult {
  const AuthResult();
}

/// Credentials matched a valid, active user.
final class AuthSuccess extends AuthResult {
  const AuthSuccess(this.user);
  final AppUser user;
}

/// Username not found OR password wrong.
/// Intentionally merged into one type so the UI shows a generic message
/// and does not leak whether the username exists.
final class AuthFailure extends AuthResult {
  const AuthFailure();
}
