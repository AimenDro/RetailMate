import 'package:drift/drift.dart';
import 'shared_columns.dart';

/// Matches SQL table: category
class CategoryTable extends Table with SyncColumns {
  @override
  String get tableName => 'category';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get name => text()();
}
