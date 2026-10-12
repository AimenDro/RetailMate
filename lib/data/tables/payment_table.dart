import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'user_table.dart';

/// Matches SQL table: payment
class PaymentTable extends Table with SyncColumns {
  @override
  String get tableName => 'payment';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get refType => text().named('ref_type').nullable()(); // sale/purchase/ledger
  TextColumn get refId => text().named('ref_id').nullable()();
  TextColumn get partyType => text().named('party_type').nullable()();
  TextColumn get partyId => text().named('party_id').nullable()();
  TextColumn get method => text()(); // cash/card/easypaisa/jazzcash/bank
  RealColumn get amount => real()();
  TextColumn get direction => text()(); // in / out
  TextColumn get paidAt => text().named('paid_at')();
  TextColumn get createdBy =>
      text().named('created_by').nullable().references(UserTable, #id)();
}
