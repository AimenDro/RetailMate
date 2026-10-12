import 'package:drift/drift.dart';
import 'shared_columns.dart';

/// Matches SQL table: ledger_entry
///
/// One ledger for both customer and supplier balances.
///   Customer balance = SUM(debit - credit)
///   Supplier balance = SUM(credit - debit)
///
/// Index: idx_ledger_party ON ledger_entry(party_type, party_id) — declared in AppDatabase.
class LedgerEntryTable extends Table with SyncColumns {
  @override
  String get tableName => 'ledger_entry';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get partyType => text().named('party_type')(); // customer / supplier
  TextColumn get partyId => text().named('party_id')();
  TextColumn get entryDate => text().named('entry_date')();
  RealColumn get debit => real().withDefault(const Constant(0.0))();
  RealColumn get credit => real().withDefault(const Constant(0.0))();
  TextColumn get refType => text().named('ref_type').nullable()(); // sale/purchase/payment
  TextColumn get refId => text().named('ref_id').nullable()();
  TextColumn get note => text().nullable()();
}
