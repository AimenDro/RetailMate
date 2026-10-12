import '../../data/repositories/user_repository.dart';
import 'auth_result.dart';
import 'password_service.dart';
import 'session.dart';

/// Application-layer authentication logic.
/// Follows PROJECT_RULES.md: UI → domain → data.
class AuthService {
  const AuthService(this._repo);

  final UserRepository _repo;

  /// True when no users exist — signals the first-run setup flow.
  Future<bool> get isFirstRun => _repo.hasAnyUser.then((has) => !has);

  /// Creates the default shop and owner in one transaction.
  /// [plainPassword] is hashed here before being stored.
  /// Sets the session on success and returns the new user.
  Future<AppUser> setupFirstRun(String plainPassword) async {
    final hash = await PasswordService.hash(plainPassword);
    final user = await _repo.createShopAndOwner(hash);
    Session.set(user);
    return user;
  }

  /// Attempts login with [username] and [password].
  ///
  /// Rules:
  /// - username is trimmed and lowercased before lookup.
  /// - Only is_active = 1 and deleted_at IS NULL users match.
  /// - Returns [AuthSuccess] and sets the session on success.
  /// - Returns [AuthFailure] for unknown user OR wrong password
  ///   (one generic response — no information leak).
  Future<AuthResult> login(String username, String password) async {
    final row = await _repo.findActiveByUsername(username);
    if (row == null) return const AuthFailure();

    final ok = await PasswordService.verify(password, row.passwordHash);
    if (!ok) return const AuthFailure();

    final user = AppUser(
      id: row.id,
      username: row.username,
      role: row.role,
      shopId: row.shopId,
    );
    Session.set(user);
    return AuthSuccess(user);
  }

  /// Clears the current session (logout).
  void logout() => Session.clear();
}
