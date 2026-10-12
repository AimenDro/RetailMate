import 'package:drift/drift.dart';

import 'shared_columns.dart';
import 'shop_table.dart';

/// Matches SQL table: user
class UserTable extends Table with SyncColumns {
  @override
  String get tableName => 'user';

  TextColumn get shopId => text().named('shop_id').references(ShopTable, #id)();
  TextColumn get name => text()();
  TextColumn get username => text().unique()();
  TextColumn get passwordHash => text().named('password_hash')();
  TextColumn get role => text()(); // owner / manager / cashier
  IntColumn get isActive =>
      integer().named('is_active').withDefault(const Constant(1))();
}
