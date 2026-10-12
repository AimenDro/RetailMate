import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'supplier_table.dart';
import 'user_table.dart';

/// Matches SQL table: purchase
class PurchaseTable extends Table with SyncColumns {
  @override
  String get tableName => 'purchase';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get supplierId =>
      text().named('supplier_id').nullable().references(SupplierTable, #id)();
  TextColumn get invoiceNo => text().named('invoice_no').nullable()();
  TextColumn get purchaseDate => text().named('purchase_date')();
  RealColumn get total => real()();
  RealColumn get paid => real().withDefault(const Constant(0.0))();
  TextColumn get createdBy =>
      text().named('created_by').nullable().references(UserTable, #id)();
}
