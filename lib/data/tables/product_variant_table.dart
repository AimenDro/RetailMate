import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'product_table.dart';

/// Matches SQL table: product_variant
/// Every sellable item is a variant. Simple products have exactly one variant.
///
/// Index: idx_variant_barcode ON product_variant(barcode) — declared in AppDatabase.
class ProductVariantTable extends Table with SyncColumns {
  @override
  String get tableName => 'product_variant';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get productId =>
      text().named('product_id').references(ProductTable, #id)();
  TextColumn get barcode => text().nullable()();
  TextColumn get sku => text().nullable()();
  TextColumn get size => text().nullable()();
  TextColumn get color => text().nullable()();
  RealColumn get purchasePrice =>
      real().named('purchase_price').withDefault(const Constant(0.0))();
  RealColumn get salePrice =>
      real().named('sale_price').withDefault(const Constant(0.0))();
}
