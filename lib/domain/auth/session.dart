/// In-memory session holder.
/// Set on successful login, cleared on logout or in test tearDown.
/// No persistence — the user must log in again after the app restarts.
class AppUser {
  const AppUser({
    required this.id,
    required this.username,
    required this.role,
    required this.shopId,
  });

  final String id;
  final String username;
  final String role; // owner / manager / cashier
  final String shopId;

  bool get isOwner => role == 'owner';
  bool get isManager => role == 'manager';
  bool get isCashier => role == 'cashier';
}

abstract final class Session {
  static AppUser? _current;

  static AppUser? get currentUser => _current;

  static void set(AppUser user) => _current = user;

  /// Call on logout or in test tearDown to reset state.
  static void clear() => _current = null;

  static bool get isLoggedIn => _current != null;
}
