import 'package:drift/drift.dart';
import 'shared_columns.dart';

/// Matches SQL table: supplier
class SupplierTable extends Table with SyncColumns {
  @override
  String get tableName => 'supplier';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get name => text()();
  TextColumn get phone => text().nullable()();
  TextColumn get address => text().nullable()();
}
