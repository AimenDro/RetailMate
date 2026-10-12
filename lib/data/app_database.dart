import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'db_helper.dart';
import 'tables/activity_log_table.dart';
import 'tables/category_table.dart';
import 'tables/customer_table.dart';
import 'tables/day_closing_table.dart';
import 'tables/expense_table.dart';
import 'tables/ledger_entry_table.dart';
import 'tables/payment_table.dart';
import 'tables/product_table.dart';
import 'tables/product_unit_conversion_table.dart';
import 'tables/product_variant_table.dart';
import 'tables/purchase_item_table.dart';
import 'tables/purchase_table.dart';
import 'tables/sale_item_table.dart';
import 'tables/sale_table.dart';
import 'tables/shop_table.dart';
import 'tables/stock_movement_table.dart';
import 'tables/supplier_table.dart';
import 'tables/sync_state_table.dart';
import 'tables/unit_table.dart';
import 'tables/user_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    ShopTable,
    UserTable,
    CategoryTable,
    UnitTable,
    ProductTable,
    ProductVariantTable,
    ProductUnitConversionTable,
    StockMovementTable,
    CustomerTable,
    SupplierTable,
    SaleTable,
    SaleItemTable,
    PurchaseTable,
    PurchaseItemTable,
    LedgerEntryTable,
    PaymentTable,
    ExpenseTable,
    DayClosingTable,
    ActivityLogTable,
    SyncStateTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  /// Production constructor — opens the SQLite file in the app documents folder.
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  /// Testing constructor — pass any executor (e.g. NativeDatabase.memory()).
  AppDatabase.forTesting(super.executor) : super.new();

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      // Indexes from pos_schema.sql — created once when the database is first made.
      await customStatement(
        'CREATE INDEX idx_variant_barcode ON product_variant(barcode)',
      );
      await customStatement(
        'CREATE INDEX idx_stock_variant ON stock_movement(variant_id)',
      );
      await customStatement(
        'CREATE INDEX idx_ledger_party ON ledger_entry(party_type, party_id)',
      );
    },
    // Foreign keys must be re-enabled on every connection, not just onCreate.
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );
}

// ── Connection factory ──────────────────────────────────────────────────────

QueryExecutor _openConnection() => driftDatabase(
  name: 'shop_ledger',
  native: const DriftNativeOptions(
    databaseDirectory: getApplicationSupportDirectory,
  ),
);
