import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'product_table.dart';
import 'unit_table.dart';

/// Matches SQL table: product_unit_conversion
/// Extra units for one product, e.g. 1 carton = 24 pieces.
class ProductUnitConversionTable extends Table with SyncColumns {
  @override
  String get tableName => 'product_unit_conversion';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get productId =>
      text().named('product_id').references(ProductTable, #id)();
  TextColumn get unitId =>
      text().named('unit_id').references(UnitTable, #id)();
  RealColumn get factorToBase => real().named('factor_to_base')();
  RealColumn get salePrice => real().named('sale_price').nullable()();
}
