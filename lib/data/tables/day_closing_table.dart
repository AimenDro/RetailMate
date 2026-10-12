import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'user_table.dart';

/// Matches SQL table: day_closing
class DayClosingTable extends Table with SyncColumns {
  @override
  String get tableName => 'day_closing';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get closeDate => text().named('close_date')();
  RealColumn get openingCash =>
      real().named('opening_cash').withDefault(const Constant(0.0))();
  RealColumn get expectedCash =>
      real().named('expected_cash').withDefault(const Constant(0.0))();
  RealColumn get countedCash =>
      real().named('counted_cash').withDefault(const Constant(0.0))();
  RealColumn get difference =>
      real().withDefault(const Constant(0.0))();
  TextColumn get closedBy =>
      text().named('closed_by').nullable().references(UserTable, #id)();
}
