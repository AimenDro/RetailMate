import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'product_variant_table.dart';
import 'user_table.dart';

/// Matches SQL table: stock_movement
///
/// Stock is NEVER edited directly. Every stock change is a row here.
/// Current stock = SUM(qty) for a variant_id.
///
/// Index: idx_stock_variant ON stock_movement(variant_id) — declared in AppDatabase.
class StockMovementTable extends Table with SyncColumns {
  @override
  String get tableName => 'stock_movement';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get variantId =>
      text().named('variant_id').references(ProductVariantTable, #id)();
  RealColumn get qty => real()(); // + in, − out (base unit)
  TextColumn get reason => text()(); // opening/purchase/sale/sale_return/purchase_return/adjustment/damage
  TextColumn get refType => text().named('ref_type').nullable()(); // sale/purchase/adjustment
  TextColumn get refId => text().named('ref_id').nullable()();
  TextColumn get batchNo => text().named('batch_no').nullable()();
  TextColumn get expiryDate => text().named('expiry_date').nullable()();
  TextColumn get createdBy =>
      text().named('created_by').nullable().references(UserTable, #id)();
  TextColumn get createdAt => text().named('created_at')();
}
