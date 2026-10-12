import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

/// Shared helpers used by every table insert/update.
///
/// Rules enforced here (from PROJECT_RULES.md):
///   - id         = UUID v4, generated on device (never auto-increment)
///   - updated_at = ISO 8601 datetime, set on every insert AND update
///   - synced     = 0 on every insert AND update
abstract final class DbHelper {
  /// Returns a new UUID v4 string — used as clientDefault for the `id` column.
  static String newId() => _uuid.v4();

  /// Returns the current UTC time as an ISO 8601 string — used as
  /// clientDefault for `updated_at`, and injected on every update.
  static String nowIso() => DateTime.now().toUtc().toIso8601String();

  /// Updates rows in [table] matching [where], and automatically injects
  /// `updated_at = now()` and `synced = 0` into the companion.
  ///
  /// Every caller that mutates a sync-tracked row MUST use this method
  /// instead of calling [db.update] directly.
  ///
  /// Example:
  /// ```dart
  /// await DbHelper.updateWithSync(
  ///   db,
  ///   db.shopTable,
  ///   db.shopTable.id.equals(someId),
  ///   ShopTableCompanion(name: Value('New Name')),
  /// );
  /// ```
  static Future<int> updateWithSync<T extends Table, D>(
    DatabaseConnectionUser db,
    TableInfo<T, D> table,
    Expression<bool> where,
    Insertable<D> companion,
  ) {
    final syncFields = RawValuesInsertable<D>({
      'updated_at': Variable<String>(nowIso()),
      'synced': Variable<int>(0),
    });

    return (db.update(
      table,
    )..where((_) => where)).write(_MergedInsertable(companion, syncFields));
  }
}

/// Merges two [Insertable]s so that [_override] fields win over [_base].
/// Used only by [DbHelper.updateWithSync].
class _MergedInsertable<D> extends Insertable<D> {
  const _MergedInsertable(this._base, this._override);

  final Insertable<D> _base;
  final Insertable<D> _override;

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) => {
    ..._base.toColumns(nullToAbsent),
    ..._override.toColumns(nullToAbsent),
  };
}
