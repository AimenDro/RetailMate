import 'package:drift/drift.dart';
import 'shared_columns.dart';
import 'user_table.dart';

/// Matches SQL table: expense
class ExpenseTable extends Table with SyncColumns {
  @override
  String get tableName => 'expense';

  TextColumn get shopId => text().named('shop_id')();
  TextColumn get title => text()(); // rent, bijli, tankhwah, etc.
  RealColumn get amount => real()();
  TextColumn get expenseDate => text().named('expense_date')();
  TextColumn get note => text().nullable()();
  TextColumn get createdBy =>
      text().named('created_by').nullable().references(UserTable, #id)();
}
