import 'package:drift/drift.dart';

import 'shared_columns.dart';
import 'category_table.dart';
import 'unit_table.dart';

/// Matches SQL table: product
class ProductTable extends Table with SyncColumns {
  @override
  String get tableName => 'product';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get categoryId =>
      text().named('category_id').nullable().references(CategoryTable, #id)();
  TextColumn get name => text()();
  TextColumn get nameUrdu => text().named('name_urdu').nullable()();
  TextColumn get brand => text().nullable()();
  TextColumn get baseUnitId =>
      text().named('base_unit_id').nullable().references(UnitTable, #id)();
  IntColumn get hasVariants =>
      integer().named('has_variants').withDefault(const Constant(0))();
  IntColumn get trackExpiry =>
      integer().named('track_expiry').withDefault(const Constant(0))();
  RealColumn get lowStockLevel =>
      real().named('low_stock_level').withDefault(const Constant(0.0))();
  IntColumn get isActive =>
      integer().named('is_active').withDefault(const Constant(1))();
}
