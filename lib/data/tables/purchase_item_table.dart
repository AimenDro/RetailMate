import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'purchase_table.dart';
import 'product_variant_table.dart';
import 'unit_table.dart';

/// Matches SQL table: purchase_item
class PurchaseItemTable extends Table with SyncColumns {
  @override
  String get tableName => 'purchase_item';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get purchaseId =>
      text().named('purchase_id').references(PurchaseTable, #id)();
  TextColumn get variantId =>
      text().named('variant_id').references(ProductVariantTable, #id)();
  RealColumn get qty => real()();
  TextColumn get unitId =>
      text().named('unit_id').nullable().references(UnitTable, #id)();
  RealColumn get unitCost => real().named('unit_cost')();
  TextColumn get expiryDate => text().named('expiry_date').nullable()();
  RealColumn get lineTotal => real().named('line_total')();
}
