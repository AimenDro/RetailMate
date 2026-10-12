import 'package:drift/drift.dart';

/// Matches SQL table: sync_state
///
/// NOTE: Does NOT use SyncColumns mixin.  Has a single integer PK constrained
/// to id = 1 (only one row allowed), matching pos_schema.sql exactly.
/// Drift does not support CHECK constraints declaratively, so we enforce the
/// "only one row" rule in application code when writing to this table.
class SyncStateTable extends Table {
  @override
  String get tableName => 'sync_state';

  // customConstraint is used because drift has no first-class .check() API
  // for column-level CHECK constraints in CREATE TABLE DDL.
  // PRIMARY KEY is declared separately via the primaryKey override below;
  // customConstraint here adds only NOT NULL and the CHECK clause.
  IntColumn get id => integer().customConstraint('NOT NULL CHECK (id = 1)')();
  TextColumn get lastSyncedAt => text().named('last_synced_at').nullable()();
  TextColumn get deviceId => text().named('device_id')();

  @override
  Set<Column> get primaryKey => {id};
}
