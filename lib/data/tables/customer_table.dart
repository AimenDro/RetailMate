import 'package:drift/drift.dart';
import 'shared_columns.dart';

/// Matches SQL table: customer
class CustomerTable extends Table with SyncColumns {
  @override
  String get tableName => 'customer';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get name => text()();
  TextColumn get phone => text().nullable()();
  TextColumn get address => text().nullable()();
  RealColumn get creditLimit =>
      real().named('credit_limit').withDefault(const Constant(0.0))();
}
