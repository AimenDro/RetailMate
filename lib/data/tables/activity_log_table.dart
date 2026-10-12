import 'package:drift/drift.dart';

import '../db_helper.dart';
import 'user_table.dart';

/// Matches SQL table: activity_log
///
/// NOTE: Does NOT use SyncColumns mixin (per pos_schema.sql — no updated_at,
/// no deleted_at on this table).  Has its own UUID id and synced column only.
class ActivityLogTable extends Table {
  @override
  String get tableName => 'activity_log';

  TextColumn get id => text().clientDefault(DbHelper.newId)();
  TextColumn get shopId => text().named('shop_id')();
  TextColumn get userId =>
      text().named('user_id').nullable().references(UserTable, #id)();
  TextColumn get action =>
      text()(); // delete_sale, change_price, discount_given, etc.
  TextColumn get tableName2 => text().named('table_name').nullable()();
  TextColumn get recordId => text().named('record_id').nullable()();
  TextColumn get detail => text().nullable()();
  TextColumn get createdAt => text().named('created_at')();
  IntColumn get synced => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
