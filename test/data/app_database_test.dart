import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shop_ledger/data/app_database.dart';
import 'package:shop_ledger/data/db_helper.dart';
import 'package:drift/drift.dart';

void main() {
  late AppDatabase db;

  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  // ── Test 1 ────────────────────────────────────────────────────────────────
  test(
    'insert shop: id, updated_at and synced are set automatically',
    () async {
      final before = DateTime.now().toUtc().subtract(
        const Duration(seconds: 1),
      );

      await db
          .into(db.shopTable)
          .insert(ShopTableCompanion.insert(name: 'Test Shop'));

      final shop = await db.select(db.shopTable).getSingle();

      expect(shop.id, isNotEmpty);
      expect(shop.id.length, equals(36)); // UUID v4

      final updatedAt = DateTime.parse(shop.updatedAt);
      expect(
        updatedAt.isAfter(before),
        isTrue,
        reason: 'updated_at should be set to approximately now',
      );

      expect(shop.synced, equals(0));
    },
  );

  // ── Test 2 ────────────────────────────────────────────────────────────────
  test('updateWithSync: updated_at changes and synced resets to 0', () async {
    final oldTime = '2020-01-01T00:00:00.000Z';
    final id = DbHelper.newId();

    await db
        .into(db.shopTable)
        .insert(
          ShopTableCompanion(
            id: Value(id),
            name: const Value('Before Update'),
            updatedAt: Value(oldTime),
            synced: const Value(1),
          ),
        );

    final before = await db.select(db.shopTable).getSingle();
    expect(before.updatedAt, equals(oldTime));
    expect(before.synced, equals(1));

    final wallBefore = DateTime.now().toUtc().subtract(
      const Duration(seconds: 1),
    );

    final rowsAffected = await DbHelper.updateWithSync(
      db,
      db.shopTable,
      db.shopTable.id.equals(id),
      ShopTableCompanion(name: const Value('After Update')),
    );

    expect(rowsAffected, equals(1));

    final after = await db.select(db.shopTable).getSingle();

    final newUpdatedAt = DateTime.parse(after.updatedAt);
    expect(
      newUpdatedAt.isAfter(wallBefore),
      isTrue,
      reason: 'updated_at must be refreshed to now by updateWithSync',
    );
    expect(after.updatedAt, isNot(equals(oldTime)));
    expect(after.synced, equals(0));
    expect(after.name, equals('After Update'));
  });

  // ── Test 3 ────────────────────────────────────────────────────────────────
  test(
    'foreign key: inserting sale_item with missing sale_id throws',
    () async {
      expect(
        () async => db
            .into(db.saleItemTable)
            .insert(
              SaleItemTableCompanion.insert(
                shopId: 'shop-1',
                saleId: 'non-existent-sale-id',
                variantId: 'non-existent-variant-id',
                qty: 1.0,
                unitPrice: 100.0,
                lineTotal: 100.0,
              ),
            ),
        throwsA(anything),
        reason: 'FK violation should throw because foreign_keys = ON',
      );
    },
  );

  // ── Test 4 ────────────────────────────────────────────────────────────────
  // user.shop_id has REFERENCES shop(id). Inserting a user with a
  // non-existent shop_id must fail.
  test(
    'foreign key: inserting user with non-existent shop_id throws',
    () async {
      await expectLater(
        db
            .into(db.userTable)
            .insert(
              UserTableCompanion.insert(
                shopId: 'no-such-shop',
                name: 'Ali',
                username: 'ali',
                passwordHash: 'hash',
                role: 'cashier',
              ),
            ),
        throwsA(anything),
        reason: 'user.shop_id FK violation should throw',
      );
    },
  );

  // ── Test 5 ────────────────────────────────────────────────────────────────
  // sync_state.id has CHECK (id = 1). Inserting a row with id = 2 must fail.
  test('check constraint: inserting sync_state with id = 2 throws', () async {
    await expectLater(
      db
          .into(db.syncStateTable)
          .insert(
            SyncStateTableCompanion.insert(
              id: const Value(2), // violates CHECK (id = 1)
              deviceId: 'device-abc',
            ),
          ),
      throwsA(anything),
      reason: 'sync_state CHECK (id = 1) violation should throw',
    );
  });

  // ── Test 6 ────────────────────────────────────────────────────────────────
  // The three indexes from pos_schema.sql must exist in sqlite_master after
  // onCreate runs (which happens automatically when the in-memory DB opens).
  test(
    'indexes: idx_variant_barcode, idx_stock_variant, idx_ledger_party exist',
    () async {
      // Touch any table to make sure onCreate has fired.
      await db.select(db.shopTable).get();

      final rows = await db
          .customSelect(
            "SELECT name FROM sqlite_master "
            "WHERE type = 'index' "
            "AND name IN ('idx_variant_barcode','idx_stock_variant','idx_ledger_party')",
          )
          .get();

      final names = rows.map((r) => r.read<String>('name')).toSet();

      expect(
        names,
        containsAll(<String>[
          'idx_variant_barcode',
          'idx_stock_variant',
          'idx_ledger_party',
        ]),
      );
    },
  );
}
