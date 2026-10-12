import 'package:drift/drift.dart';
import 'shared_columns.dart';

/// Matches SQL table: unit
class UnitTable extends Table with SyncColumns {
  @override
  String get tableName => 'unit';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get name => text()(); // kg, gram, litre, dozen, piece, packet, carton, meter
}
