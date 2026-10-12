import 'package:drift/drift.dart';
import '../db_helper.dart';

/// Mixin applied to every sync-tracked table.
///
/// Provides: id (UUID PK, auto-set on insert), updated_at (auto-set on insert),
/// deleted_at (soft delete, nullable), synced (default 0).
///
/// NOT applied to: sync_state, activity_log (see pos_schema.sql notes).
mixin SyncColumns on Table {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  TextColumn get id =>
      text().clientDefault(DbHelper.newId)();

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  TextColumn get updatedAt =>
      text().named('updated_at').clientDefault(DbHelper.nowIso)();

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  TextColumn get deletedAt =>
      text().named('deleted_at').nullable()();

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  IntColumn get synced =>
      integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
