import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'customer_table.dart';
import 'user_table.dart';

/// Matches SQL table: sale
class SaleTable extends Table with SyncColumns {
  @override
  String get tableName => 'sale';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get billNo => text().named('bill_no')();
  TextColumn get customerId =>
      text().named('customer_id').nullable().references(CustomerTable, #id)();
  TextColumn get saleDate => text().named('sale_date')();
  RealColumn get subtotal => real()();
  RealColumn get discount => real().withDefault(const Constant(0.0))();
  RealColumn get tax => real().withDefault(const Constant(0.0))();
  RealColumn get total => real()();
  RealColumn get paid => real().withDefault(const Constant(0.0))();
  TextColumn get status =>
      text().withDefault(const Constant('completed'))(); // completed/held/returned
  TextColumn get createdBy =>
      text().named('created_by').nullable().references(UserTable, #id)();
}
