import 'package:drift/native.dart';
import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:flutter_test/flutter_test.dart';

import 'package:shop_ledger/data/app_database.dart';
import 'package:shop_ledger/data/db_helper.dart';
import 'package:shop_ledger/data/repositories/user_repository.dart';
import 'package:shop_ledger/domain/auth/auth_result.dart';
import 'package:shop_ledger/domain/auth/auth_service.dart';
import 'package:shop_ledger/domain/auth/password_service.dart';
import 'package:shop_ledger/domain/auth/session.dart';

void main() {
  late AppDatabase db;
  late AuthService auth;

  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
    auth = AuthService(UserRepository(db));
  });

  tearDown(() async {
    Session.clear();
    await db.close();
  });

  // ── Test 1 ────────────────────────────────────────────────────────────────
  // PasswordService.hash produces a non-empty bcrypt string different from
  // the plain-text input.
  test(
    'PasswordService.hash returns a bcrypt hash different from plain text',
    () async {
      final hash = await PasswordService.hash('secret123');
      expect(hash, isNotEmpty);
      expect(hash, isNot(equals('secret123')));
      // bcrypt hashes start with $2a$ or $2b$
      expect(hash.startsWith(r'$2'), isTrue);
    },
  );

  // ── Test 2 ────────────────────────────────────────────────────────────────
  // PasswordService.verify returns true for the correct password.
  test('PasswordService.verify returns true for correct password', () async {
    final hash = await PasswordService.hash('mypassword');
    expect(await PasswordService.verify('mypassword', hash), isTrue);
  });

  // ── Test 3 ────────────────────────────────────────────────────────────────
  // PasswordService.verify returns false for a wrong password.
  test('PasswordService.verify returns false for wrong password', () async {
    final hash = await PasswordService.hash('correcthorse');
    expect(await PasswordService.verify('wrongpassword', hash), isFalse);
  });

  // ── Test 4 ────────────────────────────────────────────────────────────────
  // setupFirstRun creates exactly one shop and one user; calling it a second
  // time throws (unique constraint on username) — no duplicates.
  test(
    'setupFirstRun creates shop+owner; second call does not create duplicates',
    () async {
      expect(await auth.isFirstRun, isTrue);

      await auth.setupFirstRun('Password1');

      // One shop and one user exist.
      final shops = await db.select(db.shopTable).get();
      final users = await db.select(db.userTable).get();
      expect(shops.length, equals(1));
      expect(shops.first.name, equals('My Shop'));
      expect(users.length, equals(1));
      expect(users.first.username, equals('owner'));

      // isFirstRun is now false.
      expect(await auth.isFirstRun, isFalse);

      // A second call must throw (username 'owner' already exists).
      expect(
        () => auth.setupFirstRun('Password2'),
        throwsA(anything),
        reason: 'Duplicate owner insert should fail on the unique username constraint',
      );
    },
  );

  // ── Test 5 ────────────────────────────────────────────────────────────────
  // login with correct credentials returns AuthSuccess and sets the session.
  test('login with correct credentials returns AuthSuccess', () async {
    await auth.setupFirstRun('hunter2');
    Session.clear(); // simulate a fresh app start after setup

    final result = await auth.login('owner', 'hunter2');

    expect(result, isA<AuthSuccess>());
    expect(Session.currentUser, isNotNull);
    expect(Session.currentUser!.username, equals('owner'));
    expect(Session.currentUser!.role, equals('owner'));
  });

  // ── Test 6 ────────────────────────────────────────────────────────────────
  // login with wrong password returns AuthFailure (no info leak).
  test('login with wrong password returns AuthFailure', () async {
    await auth.setupFirstRun('rightpass');
    Session.clear();

    final result = await auth.login('owner', 'wrongpass');
    expect(result, isA<AuthFailure>());
    expect(Session.currentUser, isNull);
  });

  // ── Test 7 ────────────────────────────────────────────────────────────────
  // login with unknown username returns AuthFailure.
  test('login with unknown username returns AuthFailure', () async {
    await auth.setupFirstRun('somepass');
    Session.clear();

    final result = await auth.login('nobody', 'somepass');
    expect(result, isA<AuthFailure>());
    expect(Session.currentUser, isNull);
  });

  // ── Test 8 ────────────────────────────────────────────────────────────────
  // Inactive user (is_active = 0) cannot log in.
  test('inactive user cannot log in', () async {
    await auth.setupFirstRun('pass123');
    Session.clear();

    // Deactivate the owner directly in the DB.
    await DbHelper.updateWithSync(
      db,
      db.userTable,
      db.userTable.username.equals('owner'),
      const UserTableCompanion(isActive: Value(0)),
    );

    final result = await auth.login('owner', 'pass123');
    expect(result, isA<AuthFailure>());
  });

  // ── Test 9 ────────────────────────────────────────────────────────────────
  // Soft-deleted user (deleted_at IS NOT NULL) cannot log in.
  test('soft-deleted user cannot log in', () async {
    await auth.setupFirstRun('pass456');
    Session.clear();

    // Soft-delete the owner.
    await DbHelper.updateWithSync(
      db,
      db.userTable,
      db.userTable.username.equals('owner'),
      UserTableCompanion(deletedAt: Value(DbHelper.nowIso())),
    );

    final result = await auth.login('owner', 'pass456');
    expect(result, isA<AuthFailure>());
  });

  // ── Test 10 ───────────────────────────────────────────────────────────────
  // Username matching ignores leading/trailing spaces and is case-insensitive.
  test('login username ignores case and surrounding whitespace', () async {
    await auth.setupFirstRun('casepass');
    Session.clear();

    // All of these should succeed.
    for (final variant in ['OWNER', 'Owner', ' owner ', '  OWNER  ']) {
      Session.clear();
      final result = await auth.login(variant, 'casepass');
      expect(
        result,
        isA<AuthSuccess>(),
        reason: '"$variant" should match username "owner"',
      );
    }
  });
}
