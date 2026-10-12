import 'package:drift/drift.dart';

import '../app_database.dart';
import '../db_helper.dart';
import '../../domain/auth/session.dart';

/// Data-layer access for the [user] and [shop] tables.
/// Used only by [AuthService] — UI never touches this directly.
class UserRepository {
  const UserRepository(this._db);

  final AppDatabase _db;

  /// Returns the first active, non-deleted user matching [username]
  /// (trimmed and lowercased), or null if not found.
  Future<UserTableData?> findActiveByUsername(String username) {
    final normalised = username.trim().toLowerCase();
    return (_db.select(_db.userTable)
          ..where(
            (u) =>
                u.username.equals(normalised) &
                u.isActive.equals(1) &
                u.deletedAt.isNull(),
          ))
        .getSingleOrNull();
  }

  /// Returns true if there is at least one user in the database.
  Future<bool> get hasAnyUser async {
    final count = await _db.customSelect(
      'SELECT COUNT(*) AS c FROM "user" WHERE deleted_at IS NULL',
    ).getSingle();
    return count.read<int>('c') > 0;
  }

  /// Creates the default shop ("My Shop") and the default owner in ONE
  /// database transaction.  [passwordHash] must already be a valid bcrypt
  /// hash — this method never receives a plain-text password.
  ///
  /// Returns the new [AppUser] so the caller can set the session.
  Future<AppUser> createShopAndOwner(String passwordHash) =>
      _db.transaction(() async {
        // 1. Insert shop
        final shopId = DbHelper.newId();
        await _db.into(_db.shopTable).insert(
              ShopTableCompanion(
                id: Value(shopId),
                name: const Value('My Shop'),
                updatedAt: Value(DbHelper.nowIso()),
              ),
            );

        // 2. Insert owner — username stored as lowercase
        final userId = DbHelper.newId();
        const username = 'owner';
        await _db.into(_db.userTable).insert(
              UserTableCompanion(
                id: Value(userId),
                shopId: Value(shopId),
                name: const Value('Owner'),
                username: const Value(username),
                passwordHash: Value(passwordHash),
                role: const Value('owner'),
                updatedAt: Value(DbHelper.nowIso()),
              ),
            );

        return AppUser(
          id: userId,
          username: username,
          role: 'owner',
          shopId: shopId,
        );
      });
}
