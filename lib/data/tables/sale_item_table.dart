import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'sale_table.dart';
import 'product_variant_table.dart';
import 'unit_table.dart';

/// Matches SQL table: sale_item
/// cost_price is saved at sale time so profit reports remain correct later.
class SaleItemTable extends Table with SyncColumns {
  @override
  String get tableName => 'sale_item';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get saleId =>
      text().named('sale_id').references(SaleTable, #id)();
  TextColumn get variantId =>
      text().named('variant_id').references(ProductVariantTable, #id)();
  RealColumn get qty => real()();
  TextColumn get unitId =>
      text().named('unit_id').nullable().references(UnitTable, #id)();
  RealColumn get unitPrice => real().named('unit_price')();
  RealColumn get costPrice =>
      real().named('cost_price').withDefault(const Constant(0.0))();
  RealColumn get discount => real().withDefault(const Constant(0.0))();
  RealColumn get lineTotal => real().named('line_total')();
}
