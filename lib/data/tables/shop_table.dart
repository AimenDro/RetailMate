import 'package:drift/drift.dart';
import 'shared_columns.dart';

/// Matches SQL table: shop
class ShopTable extends Table with SyncColumns {
  @override
  String get tableName => 'shop';

  TextColumn get name => text()();
  TextColumn get shopType => text().named('shop_type').nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get currency => text().withDefault(const Constant('PKR'))();
  TextColumn get receiptFooter => text().named('receipt_footer').nullable()();
}
