// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ShopTableTable extends ShopTable
    with TableInfo<$ShopTableTable, ShopTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShopTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _shopTypeMeta = const VerificationMeta(
    'shopType',
  );
  @override
  late final GeneratedColumn<String> shopType = GeneratedColumn<String>(
    'shop_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('PKR'),
  );
  static const VerificationMeta _receiptFooterMeta = const VerificationMeta(
    'receiptFooter',
  );
  @override
  late final GeneratedColumn<String> receiptFooter = GeneratedColumn<String>(
    'receipt_footer',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    name,
    shopType,
    phone,
    address,
    currency,
    receiptFooter,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shop';
  @override
  VerificationContext validateIntegrity(
    Insertable<ShopTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('shop_type')) {
      context.handle(
        _shopTypeMeta,
        shopType.isAcceptableOrUnknown(data['shop_type']!, _shopTypeMeta),
      );
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    }
    if (data.containsKey('receipt_footer')) {
      context.handle(
        _receiptFooterMeta,
        receiptFooter.isAcceptableOrUnknown(
          data['receipt_footer']!,
          _receiptFooterMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ShopTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShopTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      shopType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_type'],
      ),
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      receiptFooter: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}receipt_footer'],
      ),
    );
  }

  @override
  $ShopTableTable createAlias(String alias) {
    return $ShopTableTable(attachedDatabase, alias);
  }
}

class ShopTableData extends DataClass implements Insertable<ShopTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String name;
  final String? shopType;
  final String? phone;
  final String? address;
  final String currency;
  final String? receiptFooter;
  const ShopTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.name,
    this.shopType,
    this.phone,
    this.address,
    required this.currency,
    this.receiptFooter,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || shopType != null) {
      map['shop_type'] = Variable<String>(shopType);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['currency'] = Variable<String>(currency);
    if (!nullToAbsent || receiptFooter != null) {
      map['receipt_footer'] = Variable<String>(receiptFooter);
    }
    return map;
  }

  ShopTableCompanion toCompanion(bool nullToAbsent) {
    return ShopTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      name: Value(name),
      shopType: shopType == null && nullToAbsent
          ? const Value.absent()
          : Value(shopType),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      currency: Value(currency),
      receiptFooter: receiptFooter == null && nullToAbsent
          ? const Value.absent()
          : Value(receiptFooter),
    );
  }

  factory ShopTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShopTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      name: serializer.fromJson<String>(json['name']),
      shopType: serializer.fromJson<String?>(json['shopType']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<String?>(json['address']),
      currency: serializer.fromJson<String>(json['currency']),
      receiptFooter: serializer.fromJson<String?>(json['receiptFooter']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'name': serializer.toJson<String>(name),
      'shopType': serializer.toJson<String?>(shopType),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<String?>(address),
      'currency': serializer.toJson<String>(currency),
      'receiptFooter': serializer.toJson<String?>(receiptFooter),
    };
  }

  ShopTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? name,
    Value<String?> shopType = const Value.absent(),
    Value<String?> phone = const Value.absent(),
    Value<String?> address = const Value.absent(),
    String? currency,
    Value<String?> receiptFooter = const Value.absent(),
  }) => ShopTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    name: name ?? this.name,
    shopType: shopType.present ? shopType.value : this.shopType,
    phone: phone.present ? phone.value : this.phone,
    address: address.present ? address.value : this.address,
    currency: currency ?? this.currency,
    receiptFooter: receiptFooter.present
        ? receiptFooter.value
        : this.receiptFooter,
  );
  ShopTableData copyWithCompanion(ShopTableCompanion data) {
    return ShopTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      name: data.name.present ? data.name.value : this.name,
      shopType: data.shopType.present ? data.shopType.value : this.shopType,
      phone: data.phone.present ? data.phone.value : this.phone,
      address: data.address.present ? data.address.value : this.address,
      currency: data.currency.present ? data.currency.value : this.currency,
      receiptFooter: data.receiptFooter.present
          ? data.receiptFooter.value
          : this.receiptFooter,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ShopTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('name: $name, ')
          ..write('shopType: $shopType, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('currency: $currency, ')
          ..write('receiptFooter: $receiptFooter')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    name,
    shopType,
    phone,
    address,
    currency,
    receiptFooter,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShopTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.name == this.name &&
          other.shopType == this.shopType &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.currency == this.currency &&
          other.receiptFooter == this.receiptFooter);
}

class ShopTableCompanion extends UpdateCompanion<ShopTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> name;
  final Value<String?> shopType;
  final Value<String?> phone;
  final Value<String?> address;
  final Value<String> currency;
  final Value<String?> receiptFooter;
  final Value<int> rowid;
  const ShopTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.name = const Value.absent(),
    this.shopType = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.currency = const Value.absent(),
    this.receiptFooter = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ShopTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String name,
    this.shopType = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.currency = const Value.absent(),
    this.receiptFooter = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : name = Value(name);
  static Insertable<ShopTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? name,
    Expression<String>? shopType,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<String>? currency,
    Expression<String>? receiptFooter,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (name != null) 'name': name,
      if (shopType != null) 'shop_type': shopType,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (currency != null) 'currency': currency,
      if (receiptFooter != null) 'receipt_footer': receiptFooter,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ShopTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? name,
    Value<String?>? shopType,
    Value<String?>? phone,
    Value<String?>? address,
    Value<String>? currency,
    Value<String?>? receiptFooter,
    Value<int>? rowid,
  }) {
    return ShopTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      name: name ?? this.name,
      shopType: shopType ?? this.shopType,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      currency: currency ?? this.currency,
      receiptFooter: receiptFooter ?? this.receiptFooter,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (shopType.present) {
      map['shop_type'] = Variable<String>(shopType.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (receiptFooter.present) {
      map['receipt_footer'] = Variable<String>(receiptFooter.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShopTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('name: $name, ')
          ..write('shopType: $shopType, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('currency: $currency, ')
          ..write('receiptFooter: $receiptFooter, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES shop (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _passwordHashMeta = const VerificationMeta(
    'passwordHash',
  );
  @override
  late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>(
    'password_hash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
    username,
    passwordHash,
    role,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password_hash')) {
      context.handle(
        _passwordHashMeta,
        passwordHash.isAcceptableOrUnknown(
          data['password_hash']!,
          _passwordHashMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_passwordHashMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      username: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}username'],
      )!,
      passwordHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password_hash'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserTableData extends DataClass implements Insertable<UserTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String name;
  final String username;
  final String passwordHash;
  final String role;
  final int isActive;
  const UserTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.name,
    required this.username,
    required this.passwordHash,
    required this.role,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['name'] = Variable<String>(name);
    map['username'] = Variable<String>(username);
    map['password_hash'] = Variable<String>(passwordHash);
    map['role'] = Variable<String>(role);
    map['is_active'] = Variable<int>(isActive);
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      name: Value(name),
      username: Value(username),
      passwordHash: Value(passwordHash),
      role: Value(role),
      isActive: Value(isActive),
    );
  }

  factory UserTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      name: serializer.fromJson<String>(json['name']),
      username: serializer.fromJson<String>(json['username']),
      passwordHash: serializer.fromJson<String>(json['passwordHash']),
      role: serializer.fromJson<String>(json['role']),
      isActive: serializer.fromJson<int>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'name': serializer.toJson<String>(name),
      'username': serializer.toJson<String>(username),
      'passwordHash': serializer.toJson<String>(passwordHash),
      'role': serializer.toJson<String>(role),
      'isActive': serializer.toJson<int>(isActive),
    };
  }

  UserTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? name,
    String? username,
    String? passwordHash,
    String? role,
    int? isActive,
  }) => UserTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    name: name ?? this.name,
    username: username ?? this.username,
    passwordHash: passwordHash ?? this.passwordHash,
    role: role ?? this.role,
    isActive: isActive ?? this.isActive,
  );
  UserTableData copyWithCompanion(UserTableCompanion data) {
    return UserTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      name: data.name.present ? data.name.value : this.name,
      username: data.username.present ? data.username.value : this.username,
      passwordHash: data.passwordHash.present
          ? data.passwordHash.value
          : this.passwordHash,
      role: data.role.present ? data.role.value : this.role,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('role: $role, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
    username,
    passwordHash,
    role,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.name == this.name &&
          other.username == this.username &&
          other.passwordHash == this.passwordHash &&
          other.role == this.role &&
          other.isActive == this.isActive);
}

class UserTableCompanion extends UpdateCompanion<UserTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> name;
  final Value<String> username;
  final Value<String> passwordHash;
  final Value<String> role;
  final Value<int> isActive;
  final Value<int> rowid;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.role = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String name,
    required String username,
    required String passwordHash,
    required String role,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       name = Value(name),
       username = Value(username),
       passwordHash = Value(passwordHash),
       role = Value(role);
  static Insertable<UserTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? name,
    Expression<String>? username,
    Expression<String>? passwordHash,
    Expression<String>? role,
    Expression<int>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (role != null) 'role': role,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? name,
    Value<String>? username,
    Value<String>? passwordHash,
    Value<String>? role,
    Value<int>? isActive,
    Value<int>? rowid,
  }) {
    return UserTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      name: name ?? this.name,
      username: username ?? this.username,
      passwordHash: passwordHash ?? this.passwordHash,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('role: $role, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, CategoryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoryTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class CategoryTableData extends DataClass
    implements Insertable<CategoryTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String name;
  const CategoryTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.name,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['name'] = Variable<String>(name);
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      name: Value(name),
    );
  }

  factory CategoryTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'name': serializer.toJson<String>(name),
    };
  }

  CategoryTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? name,
  }) => CategoryTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    name: name ?? this.name,
  );
  CategoryTableData copyWithCompanion(CategoryTableCompanion data) {
    return CategoryTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, updatedAt, deletedAt, synced, shopId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.name == this.name);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> name;
  final Value<int> rowid;
  const CategoryTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String name,
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       name = Value(name);
  static Insertable<CategoryTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoryTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? name,
    Value<int>? rowid,
  }) {
    return CategoryTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UnitTableTable extends UnitTable
    with TableInfo<$UnitTableTable, UnitTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'unit';
  @override
  VerificationContext validateIntegrity(
    Insertable<UnitTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UnitTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UnitTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $UnitTableTable createAlias(String alias) {
    return $UnitTableTable(attachedDatabase, alias);
  }
}

class UnitTableData extends DataClass implements Insertable<UnitTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String name;
  const UnitTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.name,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['name'] = Variable<String>(name);
    return map;
  }

  UnitTableCompanion toCompanion(bool nullToAbsent) {
    return UnitTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      name: Value(name),
    );
  }

  factory UnitTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UnitTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'name': serializer.toJson<String>(name),
    };
  }

  UnitTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? name,
  }) => UnitTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    name: name ?? this.name,
  );
  UnitTableData copyWithCompanion(UnitTableCompanion data) {
    return UnitTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UnitTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, updatedAt, deletedAt, synced, shopId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UnitTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.name == this.name);
}

class UnitTableCompanion extends UpdateCompanion<UnitTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> name;
  final Value<int> rowid;
  const UnitTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UnitTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String name,
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       name = Value(name);
  static Insertable<UnitTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UnitTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? name,
    Value<int>? rowid,
  }) {
    return UnitTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductTableTable extends ProductTable
    with TableInfo<$ProductTableTable, ProductTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
    'category_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES category (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameUrduMeta = const VerificationMeta(
    'nameUrdu',
  );
  @override
  late final GeneratedColumn<String> nameUrdu = GeneratedColumn<String>(
    'name_urdu',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _baseUnitIdMeta = const VerificationMeta(
    'baseUnitId',
  );
  @override
  late final GeneratedColumn<String> baseUnitId = GeneratedColumn<String>(
    'base_unit_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES unit (id)',
    ),
  );
  static const VerificationMeta _hasVariantsMeta = const VerificationMeta(
    'hasVariants',
  );
  @override
  late final GeneratedColumn<int> hasVariants = GeneratedColumn<int>(
    'has_variants',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _trackExpiryMeta = const VerificationMeta(
    'trackExpiry',
  );
  @override
  late final GeneratedColumn<int> trackExpiry = GeneratedColumn<int>(
    'track_expiry',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lowStockLevelMeta = const VerificationMeta(
    'lowStockLevel',
  );
  @override
  late final GeneratedColumn<double> lowStockLevel = GeneratedColumn<double>(
    'low_stock_level',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    categoryId,
    name,
    nameUrdu,
    brand,
    baseUnitId,
    hasVariants,
    trackExpiry,
    lowStockLevel,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_urdu')) {
      context.handle(
        _nameUrduMeta,
        nameUrdu.isAcceptableOrUnknown(data['name_urdu']!, _nameUrduMeta),
      );
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    }
    if (data.containsKey('base_unit_id')) {
      context.handle(
        _baseUnitIdMeta,
        baseUnitId.isAcceptableOrUnknown(
          data['base_unit_id']!,
          _baseUnitIdMeta,
        ),
      );
    }
    if (data.containsKey('has_variants')) {
      context.handle(
        _hasVariantsMeta,
        hasVariants.isAcceptableOrUnknown(
          data['has_variants']!,
          _hasVariantsMeta,
        ),
      );
    }
    if (data.containsKey('track_expiry')) {
      context.handle(
        _trackExpiryMeta,
        trackExpiry.isAcceptableOrUnknown(
          data['track_expiry']!,
          _trackExpiryMeta,
        ),
      );
    }
    if (data.containsKey('low_stock_level')) {
      context.handle(
        _lowStockLevelMeta,
        lowStockLevel.isAcceptableOrUnknown(
          data['low_stock_level']!,
          _lowStockLevelMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nameUrdu: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_urdu'],
      ),
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      ),
      baseUnitId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}base_unit_id'],
      ),
      hasVariants: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}has_variants'],
      )!,
      trackExpiry: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}track_expiry'],
      )!,
      lowStockLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}low_stock_level'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $ProductTableTable createAlias(String alias) {
    return $ProductTableTable(attachedDatabase, alias);
  }
}

class ProductTableData extends DataClass
    implements Insertable<ProductTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String? categoryId;
  final String name;
  final String? nameUrdu;
  final String? brand;
  final String? baseUnitId;
  final int hasVariants;
  final int trackExpiry;
  final double lowStockLevel;
  final int isActive;
  const ProductTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    this.categoryId,
    required this.name,
    this.nameUrdu,
    this.brand,
    this.baseUnitId,
    required this.hasVariants,
    required this.trackExpiry,
    required this.lowStockLevel,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameUrdu != null) {
      map['name_urdu'] = Variable<String>(nameUrdu);
    }
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || baseUnitId != null) {
      map['base_unit_id'] = Variable<String>(baseUnitId);
    }
    map['has_variants'] = Variable<int>(hasVariants);
    map['track_expiry'] = Variable<int>(trackExpiry);
    map['low_stock_level'] = Variable<double>(lowStockLevel);
    map['is_active'] = Variable<int>(isActive);
    return map;
  }

  ProductTableCompanion toCompanion(bool nullToAbsent) {
    return ProductTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      name: Value(name),
      nameUrdu: nameUrdu == null && nullToAbsent
          ? const Value.absent()
          : Value(nameUrdu),
      brand: brand == null && nullToAbsent
          ? const Value.absent()
          : Value(brand),
      baseUnitId: baseUnitId == null && nullToAbsent
          ? const Value.absent()
          : Value(baseUnitId),
      hasVariants: Value(hasVariants),
      trackExpiry: Value(trackExpiry),
      lowStockLevel: Value(lowStockLevel),
      isActive: Value(isActive),
    );
  }

  factory ProductTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      name: serializer.fromJson<String>(json['name']),
      nameUrdu: serializer.fromJson<String?>(json['nameUrdu']),
      brand: serializer.fromJson<String?>(json['brand']),
      baseUnitId: serializer.fromJson<String?>(json['baseUnitId']),
      hasVariants: serializer.fromJson<int>(json['hasVariants']),
      trackExpiry: serializer.fromJson<int>(json['trackExpiry']),
      lowStockLevel: serializer.fromJson<double>(json['lowStockLevel']),
      isActive: serializer.fromJson<int>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'categoryId': serializer.toJson<String?>(categoryId),
      'name': serializer.toJson<String>(name),
      'nameUrdu': serializer.toJson<String?>(nameUrdu),
      'brand': serializer.toJson<String?>(brand),
      'baseUnitId': serializer.toJson<String?>(baseUnitId),
      'hasVariants': serializer.toJson<int>(hasVariants),
      'trackExpiry': serializer.toJson<int>(trackExpiry),
      'lowStockLevel': serializer.toJson<double>(lowStockLevel),
      'isActive': serializer.toJson<int>(isActive),
    };
  }

  ProductTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    Value<String?> categoryId = const Value.absent(),
    String? name,
    Value<String?> nameUrdu = const Value.absent(),
    Value<String?> brand = const Value.absent(),
    Value<String?> baseUnitId = const Value.absent(),
    int? hasVariants,
    int? trackExpiry,
    double? lowStockLevel,
    int? isActive,
  }) => ProductTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    categoryId: categoryId.present ? categoryId.value : this.categoryId,
    name: name ?? this.name,
    nameUrdu: nameUrdu.present ? nameUrdu.value : this.nameUrdu,
    brand: brand.present ? brand.value : this.brand,
    baseUnitId: baseUnitId.present ? baseUnitId.value : this.baseUnitId,
    hasVariants: hasVariants ?? this.hasVariants,
    trackExpiry: trackExpiry ?? this.trackExpiry,
    lowStockLevel: lowStockLevel ?? this.lowStockLevel,
    isActive: isActive ?? this.isActive,
  );
  ProductTableData copyWithCompanion(ProductTableCompanion data) {
    return ProductTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      name: data.name.present ? data.name.value : this.name,
      nameUrdu: data.nameUrdu.present ? data.nameUrdu.value : this.nameUrdu,
      brand: data.brand.present ? data.brand.value : this.brand,
      baseUnitId: data.baseUnitId.present
          ? data.baseUnitId.value
          : this.baseUnitId,
      hasVariants: data.hasVariants.present
          ? data.hasVariants.value
          : this.hasVariants,
      trackExpiry: data.trackExpiry.present
          ? data.trackExpiry.value
          : this.trackExpiry,
      lowStockLevel: data.lowStockLevel.present
          ? data.lowStockLevel.value
          : this.lowStockLevel,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('nameUrdu: $nameUrdu, ')
          ..write('brand: $brand, ')
          ..write('baseUnitId: $baseUnitId, ')
          ..write('hasVariants: $hasVariants, ')
          ..write('trackExpiry: $trackExpiry, ')
          ..write('lowStockLevel: $lowStockLevel, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    categoryId,
    name,
    nameUrdu,
    brand,
    baseUnitId,
    hasVariants,
    trackExpiry,
    lowStockLevel,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.categoryId == this.categoryId &&
          other.name == this.name &&
          other.nameUrdu == this.nameUrdu &&
          other.brand == this.brand &&
          other.baseUnitId == this.baseUnitId &&
          other.hasVariants == this.hasVariants &&
          other.trackExpiry == this.trackExpiry &&
          other.lowStockLevel == this.lowStockLevel &&
          other.isActive == this.isActive);
}

class ProductTableCompanion extends UpdateCompanion<ProductTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String?> categoryId;
  final Value<String> name;
  final Value<String?> nameUrdu;
  final Value<String?> brand;
  final Value<String?> baseUnitId;
  final Value<int> hasVariants;
  final Value<int> trackExpiry;
  final Value<double> lowStockLevel;
  final Value<int> isActive;
  final Value<int> rowid;
  const ProductTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.name = const Value.absent(),
    this.nameUrdu = const Value.absent(),
    this.brand = const Value.absent(),
    this.baseUnitId = const Value.absent(),
    this.hasVariants = const Value.absent(),
    this.trackExpiry = const Value.absent(),
    this.lowStockLevel = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    this.categoryId = const Value.absent(),
    required String name,
    this.nameUrdu = const Value.absent(),
    this.brand = const Value.absent(),
    this.baseUnitId = const Value.absent(),
    this.hasVariants = const Value.absent(),
    this.trackExpiry = const Value.absent(),
    this.lowStockLevel = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       name = Value(name);
  static Insertable<ProductTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? categoryId,
    Expression<String>? name,
    Expression<String>? nameUrdu,
    Expression<String>? brand,
    Expression<String>? baseUnitId,
    Expression<int>? hasVariants,
    Expression<int>? trackExpiry,
    Expression<double>? lowStockLevel,
    Expression<int>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (categoryId != null) 'category_id': categoryId,
      if (name != null) 'name': name,
      if (nameUrdu != null) 'name_urdu': nameUrdu,
      if (brand != null) 'brand': brand,
      if (baseUnitId != null) 'base_unit_id': baseUnitId,
      if (hasVariants != null) 'has_variants': hasVariants,
      if (trackExpiry != null) 'track_expiry': trackExpiry,
      if (lowStockLevel != null) 'low_stock_level': lowStockLevel,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String?>? categoryId,
    Value<String>? name,
    Value<String?>? nameUrdu,
    Value<String?>? brand,
    Value<String?>? baseUnitId,
    Value<int>? hasVariants,
    Value<int>? trackExpiry,
    Value<double>? lowStockLevel,
    Value<int>? isActive,
    Value<int>? rowid,
  }) {
    return ProductTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      nameUrdu: nameUrdu ?? this.nameUrdu,
      brand: brand ?? this.brand,
      baseUnitId: baseUnitId ?? this.baseUnitId,
      hasVariants: hasVariants ?? this.hasVariants,
      trackExpiry: trackExpiry ?? this.trackExpiry,
      lowStockLevel: lowStockLevel ?? this.lowStockLevel,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameUrdu.present) {
      map['name_urdu'] = Variable<String>(nameUrdu.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (baseUnitId.present) {
      map['base_unit_id'] = Variable<String>(baseUnitId.value);
    }
    if (hasVariants.present) {
      map['has_variants'] = Variable<int>(hasVariants.value);
    }
    if (trackExpiry.present) {
      map['track_expiry'] = Variable<int>(trackExpiry.value);
    }
    if (lowStockLevel.present) {
      map['low_stock_level'] = Variable<double>(lowStockLevel.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('nameUrdu: $nameUrdu, ')
          ..write('brand: $brand, ')
          ..write('baseUnitId: $baseUnitId, ')
          ..write('hasVariants: $hasVariants, ')
          ..write('trackExpiry: $trackExpiry, ')
          ..write('lowStockLevel: $lowStockLevel, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductVariantTableTable extends ProductVariantTable
    with TableInfo<$ProductVariantTableTable, ProductVariantTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductVariantTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES product (id)',
    ),
  );
  static const VerificationMeta _barcodeMeta = const VerificationMeta(
    'barcode',
  );
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
    'barcode',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String> sku = GeneratedColumn<String>(
    'sku',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<String> size = GeneratedColumn<String>(
    'size',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _purchasePriceMeta = const VerificationMeta(
    'purchasePrice',
  );
  @override
  late final GeneratedColumn<double> purchasePrice = GeneratedColumn<double>(
    'purchase_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _salePriceMeta = const VerificationMeta(
    'salePrice',
  );
  @override
  late final GeneratedColumn<double> salePrice = GeneratedColumn<double>(
    'sale_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    productId,
    barcode,
    sku,
    size,
    color,
    purchasePrice,
    salePrice,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_variant';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductVariantTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('barcode')) {
      context.handle(
        _barcodeMeta,
        barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta),
      );
    }
    if (data.containsKey('sku')) {
      context.handle(
        _skuMeta,
        sku.isAcceptableOrUnknown(data['sku']!, _skuMeta),
      );
    }
    if (data.containsKey('size')) {
      context.handle(
        _sizeMeta,
        size.isAcceptableOrUnknown(data['size']!, _sizeMeta),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('purchase_price')) {
      context.handle(
        _purchasePriceMeta,
        purchasePrice.isAcceptableOrUnknown(
          data['purchase_price']!,
          _purchasePriceMeta,
        ),
      );
    }
    if (data.containsKey('sale_price')) {
      context.handle(
        _salePriceMeta,
        salePrice.isAcceptableOrUnknown(data['sale_price']!, _salePriceMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductVariantTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductVariantTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      barcode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}barcode'],
      ),
      sku: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sku'],
      ),
      size: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}size'],
      ),
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      ),
      purchasePrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}purchase_price'],
      )!,
      salePrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sale_price'],
      )!,
    );
  }

  @override
  $ProductVariantTableTable createAlias(String alias) {
    return $ProductVariantTableTable(attachedDatabase, alias);
  }
}

class ProductVariantTableData extends DataClass
    implements Insertable<ProductVariantTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String productId;
  final String? barcode;
  final String? sku;
  final String? size;
  final String? color;
  final double purchasePrice;
  final double salePrice;
  const ProductVariantTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.productId,
    this.barcode,
    this.sku,
    this.size,
    this.color,
    required this.purchasePrice,
    required this.salePrice,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['product_id'] = Variable<String>(productId);
    if (!nullToAbsent || barcode != null) {
      map['barcode'] = Variable<String>(barcode);
    }
    if (!nullToAbsent || sku != null) {
      map['sku'] = Variable<String>(sku);
    }
    if (!nullToAbsent || size != null) {
      map['size'] = Variable<String>(size);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    map['purchase_price'] = Variable<double>(purchasePrice);
    map['sale_price'] = Variable<double>(salePrice);
    return map;
  }

  ProductVariantTableCompanion toCompanion(bool nullToAbsent) {
    return ProductVariantTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      productId: Value(productId),
      barcode: barcode == null && nullToAbsent
          ? const Value.absent()
          : Value(barcode),
      sku: sku == null && nullToAbsent ? const Value.absent() : Value(sku),
      size: size == null && nullToAbsent ? const Value.absent() : Value(size),
      color: color == null && nullToAbsent
          ? const Value.absent()
          : Value(color),
      purchasePrice: Value(purchasePrice),
      salePrice: Value(salePrice),
    );
  }

  factory ProductVariantTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductVariantTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      productId: serializer.fromJson<String>(json['productId']),
      barcode: serializer.fromJson<String?>(json['barcode']),
      sku: serializer.fromJson<String?>(json['sku']),
      size: serializer.fromJson<String?>(json['size']),
      color: serializer.fromJson<String?>(json['color']),
      purchasePrice: serializer.fromJson<double>(json['purchasePrice']),
      salePrice: serializer.fromJson<double>(json['salePrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'productId': serializer.toJson<String>(productId),
      'barcode': serializer.toJson<String?>(barcode),
      'sku': serializer.toJson<String?>(sku),
      'size': serializer.toJson<String?>(size),
      'color': serializer.toJson<String?>(color),
      'purchasePrice': serializer.toJson<double>(purchasePrice),
      'salePrice': serializer.toJson<double>(salePrice),
    };
  }

  ProductVariantTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? productId,
    Value<String?> barcode = const Value.absent(),
    Value<String?> sku = const Value.absent(),
    Value<String?> size = const Value.absent(),
    Value<String?> color = const Value.absent(),
    double? purchasePrice,
    double? salePrice,
  }) => ProductVariantTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    productId: productId ?? this.productId,
    barcode: barcode.present ? barcode.value : this.barcode,
    sku: sku.present ? sku.value : this.sku,
    size: size.present ? size.value : this.size,
    color: color.present ? color.value : this.color,
    purchasePrice: purchasePrice ?? this.purchasePrice,
    salePrice: salePrice ?? this.salePrice,
  );
  ProductVariantTableData copyWithCompanion(ProductVariantTableCompanion data) {
    return ProductVariantTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      productId: data.productId.present ? data.productId.value : this.productId,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
      sku: data.sku.present ? data.sku.value : this.sku,
      size: data.size.present ? data.size.value : this.size,
      color: data.color.present ? data.color.value : this.color,
      purchasePrice: data.purchasePrice.present
          ? data.purchasePrice.value
          : this.purchasePrice,
      salePrice: data.salePrice.present ? data.salePrice.value : this.salePrice,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductVariantTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('productId: $productId, ')
          ..write('barcode: $barcode, ')
          ..write('sku: $sku, ')
          ..write('size: $size, ')
          ..write('color: $color, ')
          ..write('purchasePrice: $purchasePrice, ')
          ..write('salePrice: $salePrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    productId,
    barcode,
    sku,
    size,
    color,
    purchasePrice,
    salePrice,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductVariantTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.productId == this.productId &&
          other.barcode == this.barcode &&
          other.sku == this.sku &&
          other.size == this.size &&
          other.color == this.color &&
          other.purchasePrice == this.purchasePrice &&
          other.salePrice == this.salePrice);
}

class ProductVariantTableCompanion
    extends UpdateCompanion<ProductVariantTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> productId;
  final Value<String?> barcode;
  final Value<String?> sku;
  final Value<String?> size;
  final Value<String?> color;
  final Value<double> purchasePrice;
  final Value<double> salePrice;
  final Value<int> rowid;
  const ProductVariantTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.productId = const Value.absent(),
    this.barcode = const Value.absent(),
    this.sku = const Value.absent(),
    this.size = const Value.absent(),
    this.color = const Value.absent(),
    this.purchasePrice = const Value.absent(),
    this.salePrice = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductVariantTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String productId,
    this.barcode = const Value.absent(),
    this.sku = const Value.absent(),
    this.size = const Value.absent(),
    this.color = const Value.absent(),
    this.purchasePrice = const Value.absent(),
    this.salePrice = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       productId = Value(productId);
  static Insertable<ProductVariantTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? productId,
    Expression<String>? barcode,
    Expression<String>? sku,
    Expression<String>? size,
    Expression<String>? color,
    Expression<double>? purchasePrice,
    Expression<double>? salePrice,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (productId != null) 'product_id': productId,
      if (barcode != null) 'barcode': barcode,
      if (sku != null) 'sku': sku,
      if (size != null) 'size': size,
      if (color != null) 'color': color,
      if (purchasePrice != null) 'purchase_price': purchasePrice,
      if (salePrice != null) 'sale_price': salePrice,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductVariantTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? productId,
    Value<String?>? barcode,
    Value<String?>? sku,
    Value<String?>? size,
    Value<String?>? color,
    Value<double>? purchasePrice,
    Value<double>? salePrice,
    Value<int>? rowid,
  }) {
    return ProductVariantTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      productId: productId ?? this.productId,
      barcode: barcode ?? this.barcode,
      sku: sku ?? this.sku,
      size: size ?? this.size,
      color: color ?? this.color,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      salePrice: salePrice ?? this.salePrice,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (sku.present) {
      map['sku'] = Variable<String>(sku.value);
    }
    if (size.present) {
      map['size'] = Variable<String>(size.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (purchasePrice.present) {
      map['purchase_price'] = Variable<double>(purchasePrice.value);
    }
    if (salePrice.present) {
      map['sale_price'] = Variable<double>(salePrice.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductVariantTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('productId: $productId, ')
          ..write('barcode: $barcode, ')
          ..write('sku: $sku, ')
          ..write('size: $size, ')
          ..write('color: $color, ')
          ..write('purchasePrice: $purchasePrice, ')
          ..write('salePrice: $salePrice, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductUnitConversionTableTable extends ProductUnitConversionTable
    with
        TableInfo<
          $ProductUnitConversionTableTable,
          ProductUnitConversionTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductUnitConversionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES product (id)',
    ),
  );
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<String> unitId = GeneratedColumn<String>(
    'unit_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES unit (id)',
    ),
  );
  static const VerificationMeta _factorToBaseMeta = const VerificationMeta(
    'factorToBase',
  );
  @override
  late final GeneratedColumn<double> factorToBase = GeneratedColumn<double>(
    'factor_to_base',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _salePriceMeta = const VerificationMeta(
    'salePrice',
  );
  @override
  late final GeneratedColumn<double> salePrice = GeneratedColumn<double>(
    'sale_price',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    productId,
    unitId,
    factorToBase,
    salePrice,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_unit_conversion';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductUnitConversionTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(
        _unitIdMeta,
        unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta),
      );
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('factor_to_base')) {
      context.handle(
        _factorToBaseMeta,
        factorToBase.isAcceptableOrUnknown(
          data['factor_to_base']!,
          _factorToBaseMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_factorToBaseMeta);
    }
    if (data.containsKey('sale_price')) {
      context.handle(
        _salePriceMeta,
        salePrice.isAcceptableOrUnknown(data['sale_price']!, _salePriceMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductUnitConversionTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductUnitConversionTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      unitId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit_id'],
      )!,
      factorToBase: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}factor_to_base'],
      )!,
      salePrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sale_price'],
      ),
    );
  }

  @override
  $ProductUnitConversionTableTable createAlias(String alias) {
    return $ProductUnitConversionTableTable(attachedDatabase, alias);
  }
}

class ProductUnitConversionTableData extends DataClass
    implements Insertable<ProductUnitConversionTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String productId;
  final String unitId;
  final double factorToBase;
  final double? salePrice;
  const ProductUnitConversionTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.productId,
    required this.unitId,
    required this.factorToBase,
    this.salePrice,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['product_id'] = Variable<String>(productId);
    map['unit_id'] = Variable<String>(unitId);
    map['factor_to_base'] = Variable<double>(factorToBase);
    if (!nullToAbsent || salePrice != null) {
      map['sale_price'] = Variable<double>(salePrice);
    }
    return map;
  }

  ProductUnitConversionTableCompanion toCompanion(bool nullToAbsent) {
    return ProductUnitConversionTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      productId: Value(productId),
      unitId: Value(unitId),
      factorToBase: Value(factorToBase),
      salePrice: salePrice == null && nullToAbsent
          ? const Value.absent()
          : Value(salePrice),
    );
  }

  factory ProductUnitConversionTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductUnitConversionTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      productId: serializer.fromJson<String>(json['productId']),
      unitId: serializer.fromJson<String>(json['unitId']),
      factorToBase: serializer.fromJson<double>(json['factorToBase']),
      salePrice: serializer.fromJson<double?>(json['salePrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'productId': serializer.toJson<String>(productId),
      'unitId': serializer.toJson<String>(unitId),
      'factorToBase': serializer.toJson<double>(factorToBase),
      'salePrice': serializer.toJson<double?>(salePrice),
    };
  }

  ProductUnitConversionTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? productId,
    String? unitId,
    double? factorToBase,
    Value<double?> salePrice = const Value.absent(),
  }) => ProductUnitConversionTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    productId: productId ?? this.productId,
    unitId: unitId ?? this.unitId,
    factorToBase: factorToBase ?? this.factorToBase,
    salePrice: salePrice.present ? salePrice.value : this.salePrice,
  );
  ProductUnitConversionTableData copyWithCompanion(
    ProductUnitConversionTableCompanion data,
  ) {
    return ProductUnitConversionTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      productId: data.productId.present ? data.productId.value : this.productId,
      unitId: data.unitId.present ? data.unitId.value : this.unitId,
      factorToBase: data.factorToBase.present
          ? data.factorToBase.value
          : this.factorToBase,
      salePrice: data.salePrice.present ? data.salePrice.value : this.salePrice,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductUnitConversionTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('productId: $productId, ')
          ..write('unitId: $unitId, ')
          ..write('factorToBase: $factorToBase, ')
          ..write('salePrice: $salePrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    productId,
    unitId,
    factorToBase,
    salePrice,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductUnitConversionTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.productId == this.productId &&
          other.unitId == this.unitId &&
          other.factorToBase == this.factorToBase &&
          other.salePrice == this.salePrice);
}

class ProductUnitConversionTableCompanion
    extends UpdateCompanion<ProductUnitConversionTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> productId;
  final Value<String> unitId;
  final Value<double> factorToBase;
  final Value<double?> salePrice;
  final Value<int> rowid;
  const ProductUnitConversionTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.productId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.factorToBase = const Value.absent(),
    this.salePrice = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductUnitConversionTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String productId,
    required String unitId,
    required double factorToBase,
    this.salePrice = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       productId = Value(productId),
       unitId = Value(unitId),
       factorToBase = Value(factorToBase);
  static Insertable<ProductUnitConversionTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? productId,
    Expression<String>? unitId,
    Expression<double>? factorToBase,
    Expression<double>? salePrice,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (productId != null) 'product_id': productId,
      if (unitId != null) 'unit_id': unitId,
      if (factorToBase != null) 'factor_to_base': factorToBase,
      if (salePrice != null) 'sale_price': salePrice,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductUnitConversionTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? productId,
    Value<String>? unitId,
    Value<double>? factorToBase,
    Value<double?>? salePrice,
    Value<int>? rowid,
  }) {
    return ProductUnitConversionTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      factorToBase: factorToBase ?? this.factorToBase,
      salePrice: salePrice ?? this.salePrice,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (factorToBase.present) {
      map['factor_to_base'] = Variable<double>(factorToBase.value);
    }
    if (salePrice.present) {
      map['sale_price'] = Variable<double>(salePrice.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductUnitConversionTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('productId: $productId, ')
          ..write('unitId: $unitId, ')
          ..write('factorToBase: $factorToBase, ')
          ..write('salePrice: $salePrice, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StockMovementTableTable extends StockMovementTable
    with TableInfo<$StockMovementTableTable, StockMovementTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockMovementTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _variantIdMeta = const VerificationMeta(
    'variantId',
  );
  @override
  late final GeneratedColumn<String> variantId = GeneratedColumn<String>(
    'variant_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES product_variant (id)',
    ),
  );
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<double> qty = GeneratedColumn<double>(
    'qty',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String> reason = GeneratedColumn<String>(
    'reason',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _refTypeMeta = const VerificationMeta(
    'refType',
  );
  @override
  late final GeneratedColumn<String> refType = GeneratedColumn<String>(
    'ref_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _refIdMeta = const VerificationMeta('refId');
  @override
  late final GeneratedColumn<String> refId = GeneratedColumn<String>(
    'ref_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _batchNoMeta = const VerificationMeta(
    'batchNo',
  );
  @override
  late final GeneratedColumn<String> batchNo = GeneratedColumn<String>(
    'batch_no',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _expiryDateMeta = const VerificationMeta(
    'expiryDate',
  );
  @override
  late final GeneratedColumn<String> expiryDate = GeneratedColumn<String>(
    'expiry_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdByMeta = const VerificationMeta(
    'createdBy',
  );
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
    'created_by',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user (id)',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    variantId,
    qty,
    reason,
    refType,
    refId,
    batchNo,
    expiryDate,
    createdBy,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stock_movement';
  @override
  VerificationContext validateIntegrity(
    Insertable<StockMovementTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('variant_id')) {
      context.handle(
        _variantIdMeta,
        variantId.isAcceptableOrUnknown(data['variant_id']!, _variantIdMeta),
      );
    } else if (isInserting) {
      context.missing(_variantIdMeta);
    }
    if (data.containsKey('qty')) {
      context.handle(
        _qtyMeta,
        qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta),
      );
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('reason')) {
      context.handle(
        _reasonMeta,
        reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta),
      );
    } else if (isInserting) {
      context.missing(_reasonMeta);
    }
    if (data.containsKey('ref_type')) {
      context.handle(
        _refTypeMeta,
        refType.isAcceptableOrUnknown(data['ref_type']!, _refTypeMeta),
      );
    }
    if (data.containsKey('ref_id')) {
      context.handle(
        _refIdMeta,
        refId.isAcceptableOrUnknown(data['ref_id']!, _refIdMeta),
      );
    }
    if (data.containsKey('batch_no')) {
      context.handle(
        _batchNoMeta,
        batchNo.isAcceptableOrUnknown(data['batch_no']!, _batchNoMeta),
      );
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
        _expiryDateMeta,
        expiryDate.isAcceptableOrUnknown(data['expiry_date']!, _expiryDateMeta),
      );
    }
    if (data.containsKey('created_by')) {
      context.handle(
        _createdByMeta,
        createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StockMovementTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockMovementTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      variantId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}variant_id'],
      )!,
      qty: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}qty'],
      )!,
      reason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reason'],
      )!,
      refType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ref_type'],
      ),
      refId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ref_id'],
      ),
      batchNo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}batch_no'],
      ),
      expiryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}expiry_date'],
      ),
      createdBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $StockMovementTableTable createAlias(String alias) {
    return $StockMovementTableTable(attachedDatabase, alias);
  }
}

class StockMovementTableData extends DataClass
    implements Insertable<StockMovementTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String variantId;
  final double qty;
  final String reason;
  final String? refType;
  final String? refId;
  final String? batchNo;
  final String? expiryDate;
  final String? createdBy;
  final String createdAt;
  const StockMovementTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.variantId,
    required this.qty,
    required this.reason,
    this.refType,
    this.refId,
    this.batchNo,
    this.expiryDate,
    this.createdBy,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['variant_id'] = Variable<String>(variantId);
    map['qty'] = Variable<double>(qty);
    map['reason'] = Variable<String>(reason);
    if (!nullToAbsent || refType != null) {
      map['ref_type'] = Variable<String>(refType);
    }
    if (!nullToAbsent || refId != null) {
      map['ref_id'] = Variable<String>(refId);
    }
    if (!nullToAbsent || batchNo != null) {
      map['batch_no'] = Variable<String>(batchNo);
    }
    if (!nullToAbsent || expiryDate != null) {
      map['expiry_date'] = Variable<String>(expiryDate);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  StockMovementTableCompanion toCompanion(bool nullToAbsent) {
    return StockMovementTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      variantId: Value(variantId),
      qty: Value(qty),
      reason: Value(reason),
      refType: refType == null && nullToAbsent
          ? const Value.absent()
          : Value(refType),
      refId: refId == null && nullToAbsent
          ? const Value.absent()
          : Value(refId),
      batchNo: batchNo == null && nullToAbsent
          ? const Value.absent()
          : Value(batchNo),
      expiryDate: expiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expiryDate),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdAt: Value(createdAt),
    );
  }

  factory StockMovementTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockMovementTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      variantId: serializer.fromJson<String>(json['variantId']),
      qty: serializer.fromJson<double>(json['qty']),
      reason: serializer.fromJson<String>(json['reason']),
      refType: serializer.fromJson<String?>(json['refType']),
      refId: serializer.fromJson<String?>(json['refId']),
      batchNo: serializer.fromJson<String?>(json['batchNo']),
      expiryDate: serializer.fromJson<String?>(json['expiryDate']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'variantId': serializer.toJson<String>(variantId),
      'qty': serializer.toJson<double>(qty),
      'reason': serializer.toJson<String>(reason),
      'refType': serializer.toJson<String?>(refType),
      'refId': serializer.toJson<String?>(refId),
      'batchNo': serializer.toJson<String?>(batchNo),
      'expiryDate': serializer.toJson<String?>(expiryDate),
      'createdBy': serializer.toJson<String?>(createdBy),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  StockMovementTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? variantId,
    double? qty,
    String? reason,
    Value<String?> refType = const Value.absent(),
    Value<String?> refId = const Value.absent(),
    Value<String?> batchNo = const Value.absent(),
    Value<String?> expiryDate = const Value.absent(),
    Value<String?> createdBy = const Value.absent(),
    String? createdAt,
  }) => StockMovementTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    variantId: variantId ?? this.variantId,
    qty: qty ?? this.qty,
    reason: reason ?? this.reason,
    refType: refType.present ? refType.value : this.refType,
    refId: refId.present ? refId.value : this.refId,
    batchNo: batchNo.present ? batchNo.value : this.batchNo,
    expiryDate: expiryDate.present ? expiryDate.value : this.expiryDate,
    createdBy: createdBy.present ? createdBy.value : this.createdBy,
    createdAt: createdAt ?? this.createdAt,
  );
  StockMovementTableData copyWithCompanion(StockMovementTableCompanion data) {
    return StockMovementTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      variantId: data.variantId.present ? data.variantId.value : this.variantId,
      qty: data.qty.present ? data.qty.value : this.qty,
      reason: data.reason.present ? data.reason.value : this.reason,
      refType: data.refType.present ? data.refType.value : this.refType,
      refId: data.refId.present ? data.refId.value : this.refId,
      batchNo: data.batchNo.present ? data.batchNo.value : this.batchNo,
      expiryDate: data.expiryDate.present
          ? data.expiryDate.value
          : this.expiryDate,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockMovementTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('variantId: $variantId, ')
          ..write('qty: $qty, ')
          ..write('reason: $reason, ')
          ..write('refType: $refType, ')
          ..write('refId: $refId, ')
          ..write('batchNo: $batchNo, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    variantId,
    qty,
    reason,
    refType,
    refId,
    batchNo,
    expiryDate,
    createdBy,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockMovementTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.variantId == this.variantId &&
          other.qty == this.qty &&
          other.reason == this.reason &&
          other.refType == this.refType &&
          other.refId == this.refId &&
          other.batchNo == this.batchNo &&
          other.expiryDate == this.expiryDate &&
          other.createdBy == this.createdBy &&
          other.createdAt == this.createdAt);
}

class StockMovementTableCompanion
    extends UpdateCompanion<StockMovementTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> variantId;
  final Value<double> qty;
  final Value<String> reason;
  final Value<String?> refType;
  final Value<String?> refId;
  final Value<String?> batchNo;
  final Value<String?> expiryDate;
  final Value<String?> createdBy;
  final Value<String> createdAt;
  final Value<int> rowid;
  const StockMovementTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.variantId = const Value.absent(),
    this.qty = const Value.absent(),
    this.reason = const Value.absent(),
    this.refType = const Value.absent(),
    this.refId = const Value.absent(),
    this.batchNo = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StockMovementTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String variantId,
    required double qty,
    required String reason,
    this.refType = const Value.absent(),
    this.refId = const Value.absent(),
    this.batchNo = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.createdBy = const Value.absent(),
    required String createdAt,
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       variantId = Value(variantId),
       qty = Value(qty),
       reason = Value(reason),
       createdAt = Value(createdAt);
  static Insertable<StockMovementTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? variantId,
    Expression<double>? qty,
    Expression<String>? reason,
    Expression<String>? refType,
    Expression<String>? refId,
    Expression<String>? batchNo,
    Expression<String>? expiryDate,
    Expression<String>? createdBy,
    Expression<String>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (variantId != null) 'variant_id': variantId,
      if (qty != null) 'qty': qty,
      if (reason != null) 'reason': reason,
      if (refType != null) 'ref_type': refType,
      if (refId != null) 'ref_id': refId,
      if (batchNo != null) 'batch_no': batchNo,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (createdBy != null) 'created_by': createdBy,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StockMovementTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? variantId,
    Value<double>? qty,
    Value<String>? reason,
    Value<String?>? refType,
    Value<String?>? refId,
    Value<String?>? batchNo,
    Value<String?>? expiryDate,
    Value<String?>? createdBy,
    Value<String>? createdAt,
    Value<int>? rowid,
  }) {
    return StockMovementTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      variantId: variantId ?? this.variantId,
      qty: qty ?? this.qty,
      reason: reason ?? this.reason,
      refType: refType ?? this.refType,
      refId: refId ?? this.refId,
      batchNo: batchNo ?? this.batchNo,
      expiryDate: expiryDate ?? this.expiryDate,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (variantId.present) {
      map['variant_id'] = Variable<String>(variantId.value);
    }
    if (qty.present) {
      map['qty'] = Variable<double>(qty.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    if (refType.present) {
      map['ref_type'] = Variable<String>(refType.value);
    }
    if (refId.present) {
      map['ref_id'] = Variable<String>(refId.value);
    }
    if (batchNo.present) {
      map['batch_no'] = Variable<String>(batchNo.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<String>(expiryDate.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockMovementTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('variantId: $variantId, ')
          ..write('qty: $qty, ')
          ..write('reason: $reason, ')
          ..write('refType: $refType, ')
          ..write('refId: $refId, ')
          ..write('batchNo: $batchNo, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CustomerTableTable extends CustomerTable
    with TableInfo<$CustomerTableTable, CustomerTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _creditLimitMeta = const VerificationMeta(
    'creditLimit',
  );
  @override
  late final GeneratedColumn<double> creditLimit = GeneratedColumn<double>(
    'credit_limit',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
    phone,
    address,
    creditLimit,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customer';
  @override
  VerificationContext validateIntegrity(
    Insertable<CustomerTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('credit_limit')) {
      context.handle(
        _creditLimitMeta,
        creditLimit.isAcceptableOrUnknown(
          data['credit_limit']!,
          _creditLimitMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      creditLimit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}credit_limit'],
      )!,
    );
  }

  @override
  $CustomerTableTable createAlias(String alias) {
    return $CustomerTableTable(attachedDatabase, alias);
  }
}

class CustomerTableData extends DataClass
    implements Insertable<CustomerTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String name;
  final String? phone;
  final String? address;
  final double creditLimit;
  const CustomerTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.name,
    this.phone,
    this.address,
    required this.creditLimit,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['credit_limit'] = Variable<double>(creditLimit);
    return map;
  }

  CustomerTableCompanion toCompanion(bool nullToAbsent) {
    return CustomerTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      name: Value(name),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      creditLimit: Value(creditLimit),
    );
  }

  factory CustomerTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<String?>(json['address']),
      creditLimit: serializer.fromJson<double>(json['creditLimit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<String?>(address),
      'creditLimit': serializer.toJson<double>(creditLimit),
    };
  }

  CustomerTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? name,
    Value<String?> phone = const Value.absent(),
    Value<String?> address = const Value.absent(),
    double? creditLimit,
  }) => CustomerTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    name: name ?? this.name,
    phone: phone.present ? phone.value : this.phone,
    address: address.present ? address.value : this.address,
    creditLimit: creditLimit ?? this.creditLimit,
  );
  CustomerTableData copyWithCompanion(CustomerTableCompanion data) {
    return CustomerTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      name: data.name.present ? data.name.value : this.name,
      phone: data.phone.present ? data.phone.value : this.phone,
      address: data.address.present ? data.address.value : this.address,
      creditLimit: data.creditLimit.present
          ? data.creditLimit.value
          : this.creditLimit,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CustomerTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('creditLimit: $creditLimit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
    phone,
    address,
    creditLimit,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.creditLimit == this.creditLimit);
}

class CustomerTableCompanion extends UpdateCompanion<CustomerTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> name;
  final Value<String?> phone;
  final Value<String?> address;
  final Value<double> creditLimit;
  final Value<int> rowid;
  const CustomerTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CustomerTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String name,
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       name = Value(name);
  static Insertable<CustomerTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? name,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<double>? creditLimit,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (creditLimit != null) 'credit_limit': creditLimit,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CustomerTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? name,
    Value<String?>? phone,
    Value<String?>? address,
    Value<double>? creditLimit,
    Value<int>? rowid,
  }) {
    return CustomerTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      creditLimit: creditLimit ?? this.creditLimit,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (creditLimit.present) {
      map['credit_limit'] = Variable<double>(creditLimit.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SupplierTableTable extends SupplierTable
    with TableInfo<$SupplierTableTable, SupplierTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupplierTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
    phone,
    address,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'supplier';
  @override
  VerificationContext validateIntegrity(
    Insertable<SupplierTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupplierTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SupplierTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
    );
  }

  @override
  $SupplierTableTable createAlias(String alias) {
    return $SupplierTableTable(attachedDatabase, alias);
  }
}

class SupplierTableData extends DataClass
    implements Insertable<SupplierTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String name;
  final String? phone;
  final String? address;
  const SupplierTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.name,
    this.phone,
    this.address,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    return map;
  }

  SupplierTableCompanion toCompanion(bool nullToAbsent) {
    return SupplierTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      name: Value(name),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
    );
  }

  factory SupplierTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SupplierTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<String?>(json['address']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<String?>(address),
    };
  }

  SupplierTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? name,
    Value<String?> phone = const Value.absent(),
    Value<String?> address = const Value.absent(),
  }) => SupplierTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    name: name ?? this.name,
    phone: phone.present ? phone.value : this.phone,
    address: address.present ? address.value : this.address,
  );
  SupplierTableData copyWithCompanion(SupplierTableCompanion data) {
    return SupplierTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      name: data.name.present ? data.name.value : this.name,
      phone: data.phone.present ? data.phone.value : this.phone,
      address: data.address.present ? data.address.value : this.address,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SupplierTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    name,
    phone,
    address,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SupplierTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.address == this.address);
}

class SupplierTableCompanion extends UpdateCompanion<SupplierTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> name;
  final Value<String?> phone;
  final Value<String?> address;
  final Value<int> rowid;
  const SupplierTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SupplierTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String name,
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       name = Value(name);
  static Insertable<SupplierTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? name,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SupplierTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? name,
    Value<String?>? phone,
    Value<String?>? address,
    Value<int>? rowid,
  }) {
    return SupplierTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupplierTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SaleTableTable extends SaleTable
    with TableInfo<$SaleTableTable, SaleTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SaleTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _billNoMeta = const VerificationMeta('billNo');
  @override
  late final GeneratedColumn<String> billNo = GeneratedColumn<String>(
    'bill_no',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _customerIdMeta = const VerificationMeta(
    'customerId',
  );
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
    'customer_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES customer (id)',
    ),
  );
  static const VerificationMeta _saleDateMeta = const VerificationMeta(
    'saleDate',
  );
  @override
  late final GeneratedColumn<String> saleDate = GeneratedColumn<String>(
    'sale_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtotalMeta = const VerificationMeta(
    'subtotal',
  );
  @override
  late final GeneratedColumn<double> subtotal = GeneratedColumn<double>(
    'subtotal',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _discountMeta = const VerificationMeta(
    'discount',
  );
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
    'discount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<double> tax = GeneratedColumn<double>(
    'tax',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
    'total',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidMeta = const VerificationMeta('paid');
  @override
  late final GeneratedColumn<double> paid = GeneratedColumn<double>(
    'paid',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('completed'),
  );
  static const VerificationMeta _createdByMeta = const VerificationMeta(
    'createdBy',
  );
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
    'created_by',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    billNo,
    customerId,
    saleDate,
    subtotal,
    discount,
    tax,
    total,
    paid,
    status,
    createdBy,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sale';
  @override
  VerificationContext validateIntegrity(
    Insertable<SaleTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('bill_no')) {
      context.handle(
        _billNoMeta,
        billNo.isAcceptableOrUnknown(data['bill_no']!, _billNoMeta),
      );
    } else if (isInserting) {
      context.missing(_billNoMeta);
    }
    if (data.containsKey('customer_id')) {
      context.handle(
        _customerIdMeta,
        customerId.isAcceptableOrUnknown(data['customer_id']!, _customerIdMeta),
      );
    }
    if (data.containsKey('sale_date')) {
      context.handle(
        _saleDateMeta,
        saleDate.isAcceptableOrUnknown(data['sale_date']!, _saleDateMeta),
      );
    } else if (isInserting) {
      context.missing(_saleDateMeta);
    }
    if (data.containsKey('subtotal')) {
      context.handle(
        _subtotalMeta,
        subtotal.isAcceptableOrUnknown(data['subtotal']!, _subtotalMeta),
      );
    } else if (isInserting) {
      context.missing(_subtotalMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(
        _discountMeta,
        discount.isAcceptableOrUnknown(data['discount']!, _discountMeta),
      );
    }
    if (data.containsKey('tax')) {
      context.handle(
        _taxMeta,
        tax.isAcceptableOrUnknown(data['tax']!, _taxMeta),
      );
    }
    if (data.containsKey('total')) {
      context.handle(
        _totalMeta,
        total.isAcceptableOrUnknown(data['total']!, _totalMeta),
      );
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('paid')) {
      context.handle(
        _paidMeta,
        paid.isAcceptableOrUnknown(data['paid']!, _paidMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('created_by')) {
      context.handle(
        _createdByMeta,
        createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SaleTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SaleTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      billNo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bill_no'],
      )!,
      customerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_id'],
      ),
      saleDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sale_date'],
      )!,
      subtotal: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}subtotal'],
      )!,
      discount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}discount'],
      )!,
      tax: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}tax'],
      )!,
      total: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total'],
      )!,
      paid: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}paid'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      createdBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by'],
      ),
    );
  }

  @override
  $SaleTableTable createAlias(String alias) {
    return $SaleTableTable(attachedDatabase, alias);
  }
}

class SaleTableData extends DataClass implements Insertable<SaleTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String billNo;
  final String? customerId;
  final String saleDate;
  final double subtotal;
  final double discount;
  final double tax;
  final double total;
  final double paid;
  final String status;
  final String? createdBy;
  const SaleTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.billNo,
    this.customerId,
    required this.saleDate,
    required this.subtotal,
    required this.discount,
    required this.tax,
    required this.total,
    required this.paid,
    required this.status,
    this.createdBy,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['bill_no'] = Variable<String>(billNo);
    if (!nullToAbsent || customerId != null) {
      map['customer_id'] = Variable<String>(customerId);
    }
    map['sale_date'] = Variable<String>(saleDate);
    map['subtotal'] = Variable<double>(subtotal);
    map['discount'] = Variable<double>(discount);
    map['tax'] = Variable<double>(tax);
    map['total'] = Variable<double>(total);
    map['paid'] = Variable<double>(paid);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    return map;
  }

  SaleTableCompanion toCompanion(bool nullToAbsent) {
    return SaleTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      billNo: Value(billNo),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      saleDate: Value(saleDate),
      subtotal: Value(subtotal),
      discount: Value(discount),
      tax: Value(tax),
      total: Value(total),
      paid: Value(paid),
      status: Value(status),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
    );
  }

  factory SaleTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SaleTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      billNo: serializer.fromJson<String>(json['billNo']),
      customerId: serializer.fromJson<String?>(json['customerId']),
      saleDate: serializer.fromJson<String>(json['saleDate']),
      subtotal: serializer.fromJson<double>(json['subtotal']),
      discount: serializer.fromJson<double>(json['discount']),
      tax: serializer.fromJson<double>(json['tax']),
      total: serializer.fromJson<double>(json['total']),
      paid: serializer.fromJson<double>(json['paid']),
      status: serializer.fromJson<String>(json['status']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'billNo': serializer.toJson<String>(billNo),
      'customerId': serializer.toJson<String?>(customerId),
      'saleDate': serializer.toJson<String>(saleDate),
      'subtotal': serializer.toJson<double>(subtotal),
      'discount': serializer.toJson<double>(discount),
      'tax': serializer.toJson<double>(tax),
      'total': serializer.toJson<double>(total),
      'paid': serializer.toJson<double>(paid),
      'status': serializer.toJson<String>(status),
      'createdBy': serializer.toJson<String?>(createdBy),
    };
  }

  SaleTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? billNo,
    Value<String?> customerId = const Value.absent(),
    String? saleDate,
    double? subtotal,
    double? discount,
    double? tax,
    double? total,
    double? paid,
    String? status,
    Value<String?> createdBy = const Value.absent(),
  }) => SaleTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    billNo: billNo ?? this.billNo,
    customerId: customerId.present ? customerId.value : this.customerId,
    saleDate: saleDate ?? this.saleDate,
    subtotal: subtotal ?? this.subtotal,
    discount: discount ?? this.discount,
    tax: tax ?? this.tax,
    total: total ?? this.total,
    paid: paid ?? this.paid,
    status: status ?? this.status,
    createdBy: createdBy.present ? createdBy.value : this.createdBy,
  );
  SaleTableData copyWithCompanion(SaleTableCompanion data) {
    return SaleTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      billNo: data.billNo.present ? data.billNo.value : this.billNo,
      customerId: data.customerId.present
          ? data.customerId.value
          : this.customerId,
      saleDate: data.saleDate.present ? data.saleDate.value : this.saleDate,
      subtotal: data.subtotal.present ? data.subtotal.value : this.subtotal,
      discount: data.discount.present ? data.discount.value : this.discount,
      tax: data.tax.present ? data.tax.value : this.tax,
      total: data.total.present ? data.total.value : this.total,
      paid: data.paid.present ? data.paid.value : this.paid,
      status: data.status.present ? data.status.value : this.status,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SaleTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('billNo: $billNo, ')
          ..write('customerId: $customerId, ')
          ..write('saleDate: $saleDate, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('total: $total, ')
          ..write('paid: $paid, ')
          ..write('status: $status, ')
          ..write('createdBy: $createdBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    billNo,
    customerId,
    saleDate,
    subtotal,
    discount,
    tax,
    total,
    paid,
    status,
    createdBy,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SaleTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.billNo == this.billNo &&
          other.customerId == this.customerId &&
          other.saleDate == this.saleDate &&
          other.subtotal == this.subtotal &&
          other.discount == this.discount &&
          other.tax == this.tax &&
          other.total == this.total &&
          other.paid == this.paid &&
          other.status == this.status &&
          other.createdBy == this.createdBy);
}

class SaleTableCompanion extends UpdateCompanion<SaleTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> billNo;
  final Value<String?> customerId;
  final Value<String> saleDate;
  final Value<double> subtotal;
  final Value<double> discount;
  final Value<double> tax;
  final Value<double> total;
  final Value<double> paid;
  final Value<String> status;
  final Value<String?> createdBy;
  final Value<int> rowid;
  const SaleTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.billNo = const Value.absent(),
    this.customerId = const Value.absent(),
    this.saleDate = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    this.total = const Value.absent(),
    this.paid = const Value.absent(),
    this.status = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SaleTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String billNo,
    this.customerId = const Value.absent(),
    required String saleDate,
    required double subtotal,
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    required double total,
    this.paid = const Value.absent(),
    this.status = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       billNo = Value(billNo),
       saleDate = Value(saleDate),
       subtotal = Value(subtotal),
       total = Value(total);
  static Insertable<SaleTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? billNo,
    Expression<String>? customerId,
    Expression<String>? saleDate,
    Expression<double>? subtotal,
    Expression<double>? discount,
    Expression<double>? tax,
    Expression<double>? total,
    Expression<double>? paid,
    Expression<String>? status,
    Expression<String>? createdBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (billNo != null) 'bill_no': billNo,
      if (customerId != null) 'customer_id': customerId,
      if (saleDate != null) 'sale_date': saleDate,
      if (subtotal != null) 'subtotal': subtotal,
      if (discount != null) 'discount': discount,
      if (tax != null) 'tax': tax,
      if (total != null) 'total': total,
      if (paid != null) 'paid': paid,
      if (status != null) 'status': status,
      if (createdBy != null) 'created_by': createdBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SaleTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? billNo,
    Value<String?>? customerId,
    Value<String>? saleDate,
    Value<double>? subtotal,
    Value<double>? discount,
    Value<double>? tax,
    Value<double>? total,
    Value<double>? paid,
    Value<String>? status,
    Value<String?>? createdBy,
    Value<int>? rowid,
  }) {
    return SaleTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      billNo: billNo ?? this.billNo,
      customerId: customerId ?? this.customerId,
      saleDate: saleDate ?? this.saleDate,
      subtotal: subtotal ?? this.subtotal,
      discount: discount ?? this.discount,
      tax: tax ?? this.tax,
      total: total ?? this.total,
      paid: paid ?? this.paid,
      status: status ?? this.status,
      createdBy: createdBy ?? this.createdBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (billNo.present) {
      map['bill_no'] = Variable<String>(billNo.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (saleDate.present) {
      map['sale_date'] = Variable<String>(saleDate.value);
    }
    if (subtotal.present) {
      map['subtotal'] = Variable<double>(subtotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (paid.present) {
      map['paid'] = Variable<double>(paid.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SaleTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('billNo: $billNo, ')
          ..write('customerId: $customerId, ')
          ..write('saleDate: $saleDate, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('total: $total, ')
          ..write('paid: $paid, ')
          ..write('status: $status, ')
          ..write('createdBy: $createdBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SaleItemTableTable extends SaleItemTable
    with TableInfo<$SaleItemTableTable, SaleItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SaleItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _saleIdMeta = const VerificationMeta('saleId');
  @override
  late final GeneratedColumn<String> saleId = GeneratedColumn<String>(
    'sale_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sale (id)',
    ),
  );
  static const VerificationMeta _variantIdMeta = const VerificationMeta(
    'variantId',
  );
  @override
  late final GeneratedColumn<String> variantId = GeneratedColumn<String>(
    'variant_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES product_variant (id)',
    ),
  );
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<double> qty = GeneratedColumn<double>(
    'qty',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<String> unitId = GeneratedColumn<String>(
    'unit_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES unit (id)',
    ),
  );
  static const VerificationMeta _unitPriceMeta = const VerificationMeta(
    'unitPrice',
  );
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
    'unit_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _costPriceMeta = const VerificationMeta(
    'costPrice',
  );
  @override
  late final GeneratedColumn<double> costPrice = GeneratedColumn<double>(
    'cost_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _discountMeta = const VerificationMeta(
    'discount',
  );
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
    'discount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _lineTotalMeta = const VerificationMeta(
    'lineTotal',
  );
  @override
  late final GeneratedColumn<double> lineTotal = GeneratedColumn<double>(
    'line_total',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    saleId,
    variantId,
    qty,
    unitId,
    unitPrice,
    costPrice,
    discount,
    lineTotal,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sale_item';
  @override
  VerificationContext validateIntegrity(
    Insertable<SaleItemTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('sale_id')) {
      context.handle(
        _saleIdMeta,
        saleId.isAcceptableOrUnknown(data['sale_id']!, _saleIdMeta),
      );
    } else if (isInserting) {
      context.missing(_saleIdMeta);
    }
    if (data.containsKey('variant_id')) {
      context.handle(
        _variantIdMeta,
        variantId.isAcceptableOrUnknown(data['variant_id']!, _variantIdMeta),
      );
    } else if (isInserting) {
      context.missing(_variantIdMeta);
    }
    if (data.containsKey('qty')) {
      context.handle(
        _qtyMeta,
        qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta),
      );
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(
        _unitIdMeta,
        unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta),
      );
    }
    if (data.containsKey('unit_price')) {
      context.handle(
        _unitPriceMeta,
        unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta),
      );
    } else if (isInserting) {
      context.missing(_unitPriceMeta);
    }
    if (data.containsKey('cost_price')) {
      context.handle(
        _costPriceMeta,
        costPrice.isAcceptableOrUnknown(data['cost_price']!, _costPriceMeta),
      );
    }
    if (data.containsKey('discount')) {
      context.handle(
        _discountMeta,
        discount.isAcceptableOrUnknown(data['discount']!, _discountMeta),
      );
    }
    if (data.containsKey('line_total')) {
      context.handle(
        _lineTotalMeta,
        lineTotal.isAcceptableOrUnknown(data['line_total']!, _lineTotalMeta),
      );
    } else if (isInserting) {
      context.missing(_lineTotalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SaleItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SaleItemTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      saleId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sale_id'],
      )!,
      variantId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}variant_id'],
      )!,
      qty: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}qty'],
      )!,
      unitId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit_id'],
      ),
      unitPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}unit_price'],
      )!,
      costPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}cost_price'],
      )!,
      discount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}discount'],
      )!,
      lineTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}line_total'],
      )!,
    );
  }

  @override
  $SaleItemTableTable createAlias(String alias) {
    return $SaleItemTableTable(attachedDatabase, alias);
  }
}

class SaleItemTableData extends DataClass
    implements Insertable<SaleItemTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String saleId;
  final String variantId;
  final double qty;
  final String? unitId;
  final double unitPrice;
  final double costPrice;
  final double discount;
  final double lineTotal;
  const SaleItemTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.saleId,
    required this.variantId,
    required this.qty,
    this.unitId,
    required this.unitPrice,
    required this.costPrice,
    required this.discount,
    required this.lineTotal,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['sale_id'] = Variable<String>(saleId);
    map['variant_id'] = Variable<String>(variantId);
    map['qty'] = Variable<double>(qty);
    if (!nullToAbsent || unitId != null) {
      map['unit_id'] = Variable<String>(unitId);
    }
    map['unit_price'] = Variable<double>(unitPrice);
    map['cost_price'] = Variable<double>(costPrice);
    map['discount'] = Variable<double>(discount);
    map['line_total'] = Variable<double>(lineTotal);
    return map;
  }

  SaleItemTableCompanion toCompanion(bool nullToAbsent) {
    return SaleItemTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      saleId: Value(saleId),
      variantId: Value(variantId),
      qty: Value(qty),
      unitId: unitId == null && nullToAbsent
          ? const Value.absent()
          : Value(unitId),
      unitPrice: Value(unitPrice),
      costPrice: Value(costPrice),
      discount: Value(discount),
      lineTotal: Value(lineTotal),
    );
  }

  factory SaleItemTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SaleItemTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      saleId: serializer.fromJson<String>(json['saleId']),
      variantId: serializer.fromJson<String>(json['variantId']),
      qty: serializer.fromJson<double>(json['qty']),
      unitId: serializer.fromJson<String?>(json['unitId']),
      unitPrice: serializer.fromJson<double>(json['unitPrice']),
      costPrice: serializer.fromJson<double>(json['costPrice']),
      discount: serializer.fromJson<double>(json['discount']),
      lineTotal: serializer.fromJson<double>(json['lineTotal']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'saleId': serializer.toJson<String>(saleId),
      'variantId': serializer.toJson<String>(variantId),
      'qty': serializer.toJson<double>(qty),
      'unitId': serializer.toJson<String?>(unitId),
      'unitPrice': serializer.toJson<double>(unitPrice),
      'costPrice': serializer.toJson<double>(costPrice),
      'discount': serializer.toJson<double>(discount),
      'lineTotal': serializer.toJson<double>(lineTotal),
    };
  }

  SaleItemTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? saleId,
    String? variantId,
    double? qty,
    Value<String?> unitId = const Value.absent(),
    double? unitPrice,
    double? costPrice,
    double? discount,
    double? lineTotal,
  }) => SaleItemTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    saleId: saleId ?? this.saleId,
    variantId: variantId ?? this.variantId,
    qty: qty ?? this.qty,
    unitId: unitId.present ? unitId.value : this.unitId,
    unitPrice: unitPrice ?? this.unitPrice,
    costPrice: costPrice ?? this.costPrice,
    discount: discount ?? this.discount,
    lineTotal: lineTotal ?? this.lineTotal,
  );
  SaleItemTableData copyWithCompanion(SaleItemTableCompanion data) {
    return SaleItemTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      saleId: data.saleId.present ? data.saleId.value : this.saleId,
      variantId: data.variantId.present ? data.variantId.value : this.variantId,
      qty: data.qty.present ? data.qty.value : this.qty,
      unitId: data.unitId.present ? data.unitId.value : this.unitId,
      unitPrice: data.unitPrice.present ? data.unitPrice.value : this.unitPrice,
      costPrice: data.costPrice.present ? data.costPrice.value : this.costPrice,
      discount: data.discount.present ? data.discount.value : this.discount,
      lineTotal: data.lineTotal.present ? data.lineTotal.value : this.lineTotal,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SaleItemTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('saleId: $saleId, ')
          ..write('variantId: $variantId, ')
          ..write('qty: $qty, ')
          ..write('unitId: $unitId, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('costPrice: $costPrice, ')
          ..write('discount: $discount, ')
          ..write('lineTotal: $lineTotal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    saleId,
    variantId,
    qty,
    unitId,
    unitPrice,
    costPrice,
    discount,
    lineTotal,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SaleItemTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.saleId == this.saleId &&
          other.variantId == this.variantId &&
          other.qty == this.qty &&
          other.unitId == this.unitId &&
          other.unitPrice == this.unitPrice &&
          other.costPrice == this.costPrice &&
          other.discount == this.discount &&
          other.lineTotal == this.lineTotal);
}

class SaleItemTableCompanion extends UpdateCompanion<SaleItemTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> saleId;
  final Value<String> variantId;
  final Value<double> qty;
  final Value<String?> unitId;
  final Value<double> unitPrice;
  final Value<double> costPrice;
  final Value<double> discount;
  final Value<double> lineTotal;
  final Value<int> rowid;
  const SaleItemTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.saleId = const Value.absent(),
    this.variantId = const Value.absent(),
    this.qty = const Value.absent(),
    this.unitId = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.discount = const Value.absent(),
    this.lineTotal = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SaleItemTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String saleId,
    required String variantId,
    required double qty,
    this.unitId = const Value.absent(),
    required double unitPrice,
    this.costPrice = const Value.absent(),
    this.discount = const Value.absent(),
    required double lineTotal,
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       saleId = Value(saleId),
       variantId = Value(variantId),
       qty = Value(qty),
       unitPrice = Value(unitPrice),
       lineTotal = Value(lineTotal);
  static Insertable<SaleItemTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? saleId,
    Expression<String>? variantId,
    Expression<double>? qty,
    Expression<String>? unitId,
    Expression<double>? unitPrice,
    Expression<double>? costPrice,
    Expression<double>? discount,
    Expression<double>? lineTotal,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (saleId != null) 'sale_id': saleId,
      if (variantId != null) 'variant_id': variantId,
      if (qty != null) 'qty': qty,
      if (unitId != null) 'unit_id': unitId,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (costPrice != null) 'cost_price': costPrice,
      if (discount != null) 'discount': discount,
      if (lineTotal != null) 'line_total': lineTotal,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SaleItemTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? saleId,
    Value<String>? variantId,
    Value<double>? qty,
    Value<String?>? unitId,
    Value<double>? unitPrice,
    Value<double>? costPrice,
    Value<double>? discount,
    Value<double>? lineTotal,
    Value<int>? rowid,
  }) {
    return SaleItemTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      saleId: saleId ?? this.saleId,
      variantId: variantId ?? this.variantId,
      qty: qty ?? this.qty,
      unitId: unitId ?? this.unitId,
      unitPrice: unitPrice ?? this.unitPrice,
      costPrice: costPrice ?? this.costPrice,
      discount: discount ?? this.discount,
      lineTotal: lineTotal ?? this.lineTotal,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (saleId.present) {
      map['sale_id'] = Variable<String>(saleId.value);
    }
    if (variantId.present) {
      map['variant_id'] = Variable<String>(variantId.value);
    }
    if (qty.present) {
      map['qty'] = Variable<double>(qty.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (costPrice.present) {
      map['cost_price'] = Variable<double>(costPrice.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (lineTotal.present) {
      map['line_total'] = Variable<double>(lineTotal.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SaleItemTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('saleId: $saleId, ')
          ..write('variantId: $variantId, ')
          ..write('qty: $qty, ')
          ..write('unitId: $unitId, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('costPrice: $costPrice, ')
          ..write('discount: $discount, ')
          ..write('lineTotal: $lineTotal, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PurchaseTableTable extends PurchaseTable
    with TableInfo<$PurchaseTableTable, PurchaseTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PurchaseTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _supplierIdMeta = const VerificationMeta(
    'supplierId',
  );
  @override
  late final GeneratedColumn<String> supplierId = GeneratedColumn<String>(
    'supplier_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES supplier (id)',
    ),
  );
  static const VerificationMeta _invoiceNoMeta = const VerificationMeta(
    'invoiceNo',
  );
  @override
  late final GeneratedColumn<String> invoiceNo = GeneratedColumn<String>(
    'invoice_no',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _purchaseDateMeta = const VerificationMeta(
    'purchaseDate',
  );
  @override
  late final GeneratedColumn<String> purchaseDate = GeneratedColumn<String>(
    'purchase_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
    'total',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidMeta = const VerificationMeta('paid');
  @override
  late final GeneratedColumn<double> paid = GeneratedColumn<double>(
    'paid',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _createdByMeta = const VerificationMeta(
    'createdBy',
  );
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
    'created_by',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    supplierId,
    invoiceNo,
    purchaseDate,
    total,
    paid,
    createdBy,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'purchase';
  @override
  VerificationContext validateIntegrity(
    Insertable<PurchaseTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('supplier_id')) {
      context.handle(
        _supplierIdMeta,
        supplierId.isAcceptableOrUnknown(data['supplier_id']!, _supplierIdMeta),
      );
    }
    if (data.containsKey('invoice_no')) {
      context.handle(
        _invoiceNoMeta,
        invoiceNo.isAcceptableOrUnknown(data['invoice_no']!, _invoiceNoMeta),
      );
    }
    if (data.containsKey('purchase_date')) {
      context.handle(
        _purchaseDateMeta,
        purchaseDate.isAcceptableOrUnknown(
          data['purchase_date']!,
          _purchaseDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_purchaseDateMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
        _totalMeta,
        total.isAcceptableOrUnknown(data['total']!, _totalMeta),
      );
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('paid')) {
      context.handle(
        _paidMeta,
        paid.isAcceptableOrUnknown(data['paid']!, _paidMeta),
      );
    }
    if (data.containsKey('created_by')) {
      context.handle(
        _createdByMeta,
        createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PurchaseTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PurchaseTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      supplierId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}supplier_id'],
      ),
      invoiceNo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}invoice_no'],
      ),
      purchaseDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}purchase_date'],
      )!,
      total: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total'],
      )!,
      paid: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}paid'],
      )!,
      createdBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by'],
      ),
    );
  }

  @override
  $PurchaseTableTable createAlias(String alias) {
    return $PurchaseTableTable(attachedDatabase, alias);
  }
}

class PurchaseTableData extends DataClass
    implements Insertable<PurchaseTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String? supplierId;
  final String? invoiceNo;
  final String purchaseDate;
  final double total;
  final double paid;
  final String? createdBy;
  const PurchaseTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    this.supplierId,
    this.invoiceNo,
    required this.purchaseDate,
    required this.total,
    required this.paid,
    this.createdBy,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    if (!nullToAbsent || supplierId != null) {
      map['supplier_id'] = Variable<String>(supplierId);
    }
    if (!nullToAbsent || invoiceNo != null) {
      map['invoice_no'] = Variable<String>(invoiceNo);
    }
    map['purchase_date'] = Variable<String>(purchaseDate);
    map['total'] = Variable<double>(total);
    map['paid'] = Variable<double>(paid);
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    return map;
  }

  PurchaseTableCompanion toCompanion(bool nullToAbsent) {
    return PurchaseTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      supplierId: supplierId == null && nullToAbsent
          ? const Value.absent()
          : Value(supplierId),
      invoiceNo: invoiceNo == null && nullToAbsent
          ? const Value.absent()
          : Value(invoiceNo),
      purchaseDate: Value(purchaseDate),
      total: Value(total),
      paid: Value(paid),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
    );
  }

  factory PurchaseTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PurchaseTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      supplierId: serializer.fromJson<String?>(json['supplierId']),
      invoiceNo: serializer.fromJson<String?>(json['invoiceNo']),
      purchaseDate: serializer.fromJson<String>(json['purchaseDate']),
      total: serializer.fromJson<double>(json['total']),
      paid: serializer.fromJson<double>(json['paid']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'supplierId': serializer.toJson<String?>(supplierId),
      'invoiceNo': serializer.toJson<String?>(invoiceNo),
      'purchaseDate': serializer.toJson<String>(purchaseDate),
      'total': serializer.toJson<double>(total),
      'paid': serializer.toJson<double>(paid),
      'createdBy': serializer.toJson<String?>(createdBy),
    };
  }

  PurchaseTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    Value<String?> supplierId = const Value.absent(),
    Value<String?> invoiceNo = const Value.absent(),
    String? purchaseDate,
    double? total,
    double? paid,
    Value<String?> createdBy = const Value.absent(),
  }) => PurchaseTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    supplierId: supplierId.present ? supplierId.value : this.supplierId,
    invoiceNo: invoiceNo.present ? invoiceNo.value : this.invoiceNo,
    purchaseDate: purchaseDate ?? this.purchaseDate,
    total: total ?? this.total,
    paid: paid ?? this.paid,
    createdBy: createdBy.present ? createdBy.value : this.createdBy,
  );
  PurchaseTableData copyWithCompanion(PurchaseTableCompanion data) {
    return PurchaseTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      supplierId: data.supplierId.present
          ? data.supplierId.value
          : this.supplierId,
      invoiceNo: data.invoiceNo.present ? data.invoiceNo.value : this.invoiceNo,
      purchaseDate: data.purchaseDate.present
          ? data.purchaseDate.value
          : this.purchaseDate,
      total: data.total.present ? data.total.value : this.total,
      paid: data.paid.present ? data.paid.value : this.paid,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('supplierId: $supplierId, ')
          ..write('invoiceNo: $invoiceNo, ')
          ..write('purchaseDate: $purchaseDate, ')
          ..write('total: $total, ')
          ..write('paid: $paid, ')
          ..write('createdBy: $createdBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    supplierId,
    invoiceNo,
    purchaseDate,
    total,
    paid,
    createdBy,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PurchaseTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.supplierId == this.supplierId &&
          other.invoiceNo == this.invoiceNo &&
          other.purchaseDate == this.purchaseDate &&
          other.total == this.total &&
          other.paid == this.paid &&
          other.createdBy == this.createdBy);
}

class PurchaseTableCompanion extends UpdateCompanion<PurchaseTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String?> supplierId;
  final Value<String?> invoiceNo;
  final Value<String> purchaseDate;
  final Value<double> total;
  final Value<double> paid;
  final Value<String?> createdBy;
  final Value<int> rowid;
  const PurchaseTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.supplierId = const Value.absent(),
    this.invoiceNo = const Value.absent(),
    this.purchaseDate = const Value.absent(),
    this.total = const Value.absent(),
    this.paid = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PurchaseTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    this.supplierId = const Value.absent(),
    this.invoiceNo = const Value.absent(),
    required String purchaseDate,
    required double total,
    this.paid = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       purchaseDate = Value(purchaseDate),
       total = Value(total);
  static Insertable<PurchaseTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? supplierId,
    Expression<String>? invoiceNo,
    Expression<String>? purchaseDate,
    Expression<double>? total,
    Expression<double>? paid,
    Expression<String>? createdBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (supplierId != null) 'supplier_id': supplierId,
      if (invoiceNo != null) 'invoice_no': invoiceNo,
      if (purchaseDate != null) 'purchase_date': purchaseDate,
      if (total != null) 'total': total,
      if (paid != null) 'paid': paid,
      if (createdBy != null) 'created_by': createdBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PurchaseTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String?>? supplierId,
    Value<String?>? invoiceNo,
    Value<String>? purchaseDate,
    Value<double>? total,
    Value<double>? paid,
    Value<String?>? createdBy,
    Value<int>? rowid,
  }) {
    return PurchaseTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      supplierId: supplierId ?? this.supplierId,
      invoiceNo: invoiceNo ?? this.invoiceNo,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      total: total ?? this.total,
      paid: paid ?? this.paid,
      createdBy: createdBy ?? this.createdBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (supplierId.present) {
      map['supplier_id'] = Variable<String>(supplierId.value);
    }
    if (invoiceNo.present) {
      map['invoice_no'] = Variable<String>(invoiceNo.value);
    }
    if (purchaseDate.present) {
      map['purchase_date'] = Variable<String>(purchaseDate.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (paid.present) {
      map['paid'] = Variable<double>(paid.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('supplierId: $supplierId, ')
          ..write('invoiceNo: $invoiceNo, ')
          ..write('purchaseDate: $purchaseDate, ')
          ..write('total: $total, ')
          ..write('paid: $paid, ')
          ..write('createdBy: $createdBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PurchaseItemTableTable extends PurchaseItemTable
    with TableInfo<$PurchaseItemTableTable, PurchaseItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PurchaseItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _purchaseIdMeta = const VerificationMeta(
    'purchaseId',
  );
  @override
  late final GeneratedColumn<String> purchaseId = GeneratedColumn<String>(
    'purchase_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES purchase (id)',
    ),
  );
  static const VerificationMeta _variantIdMeta = const VerificationMeta(
    'variantId',
  );
  @override
  late final GeneratedColumn<String> variantId = GeneratedColumn<String>(
    'variant_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES product_variant (id)',
    ),
  );
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<double> qty = GeneratedColumn<double>(
    'qty',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<String> unitId = GeneratedColumn<String>(
    'unit_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES unit (id)',
    ),
  );
  static const VerificationMeta _unitCostMeta = const VerificationMeta(
    'unitCost',
  );
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
    'unit_cost',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiryDateMeta = const VerificationMeta(
    'expiryDate',
  );
  @override
  late final GeneratedColumn<String> expiryDate = GeneratedColumn<String>(
    'expiry_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lineTotalMeta = const VerificationMeta(
    'lineTotal',
  );
  @override
  late final GeneratedColumn<double> lineTotal = GeneratedColumn<double>(
    'line_total',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    purchaseId,
    variantId,
    qty,
    unitId,
    unitCost,
    expiryDate,
    lineTotal,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'purchase_item';
  @override
  VerificationContext validateIntegrity(
    Insertable<PurchaseItemTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('purchase_id')) {
      context.handle(
        _purchaseIdMeta,
        purchaseId.isAcceptableOrUnknown(data['purchase_id']!, _purchaseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_purchaseIdMeta);
    }
    if (data.containsKey('variant_id')) {
      context.handle(
        _variantIdMeta,
        variantId.isAcceptableOrUnknown(data['variant_id']!, _variantIdMeta),
      );
    } else if (isInserting) {
      context.missing(_variantIdMeta);
    }
    if (data.containsKey('qty')) {
      context.handle(
        _qtyMeta,
        qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta),
      );
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(
        _unitIdMeta,
        unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta),
      );
    }
    if (data.containsKey('unit_cost')) {
      context.handle(
        _unitCostMeta,
        unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta),
      );
    } else if (isInserting) {
      context.missing(_unitCostMeta);
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
        _expiryDateMeta,
        expiryDate.isAcceptableOrUnknown(data['expiry_date']!, _expiryDateMeta),
      );
    }
    if (data.containsKey('line_total')) {
      context.handle(
        _lineTotalMeta,
        lineTotal.isAcceptableOrUnknown(data['line_total']!, _lineTotalMeta),
      );
    } else if (isInserting) {
      context.missing(_lineTotalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PurchaseItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PurchaseItemTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      purchaseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}purchase_id'],
      )!,
      variantId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}variant_id'],
      )!,
      qty: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}qty'],
      )!,
      unitId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit_id'],
      ),
      unitCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}unit_cost'],
      )!,
      expiryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}expiry_date'],
      ),
      lineTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}line_total'],
      )!,
    );
  }

  @override
  $PurchaseItemTableTable createAlias(String alias) {
    return $PurchaseItemTableTable(attachedDatabase, alias);
  }
}

class PurchaseItemTableData extends DataClass
    implements Insertable<PurchaseItemTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String purchaseId;
  final String variantId;
  final double qty;
  final String? unitId;
  final double unitCost;
  final String? expiryDate;
  final double lineTotal;
  const PurchaseItemTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.purchaseId,
    required this.variantId,
    required this.qty,
    this.unitId,
    required this.unitCost,
    this.expiryDate,
    required this.lineTotal,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['purchase_id'] = Variable<String>(purchaseId);
    map['variant_id'] = Variable<String>(variantId);
    map['qty'] = Variable<double>(qty);
    if (!nullToAbsent || unitId != null) {
      map['unit_id'] = Variable<String>(unitId);
    }
    map['unit_cost'] = Variable<double>(unitCost);
    if (!nullToAbsent || expiryDate != null) {
      map['expiry_date'] = Variable<String>(expiryDate);
    }
    map['line_total'] = Variable<double>(lineTotal);
    return map;
  }

  PurchaseItemTableCompanion toCompanion(bool nullToAbsent) {
    return PurchaseItemTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      purchaseId: Value(purchaseId),
      variantId: Value(variantId),
      qty: Value(qty),
      unitId: unitId == null && nullToAbsent
          ? const Value.absent()
          : Value(unitId),
      unitCost: Value(unitCost),
      expiryDate: expiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expiryDate),
      lineTotal: Value(lineTotal),
    );
  }

  factory PurchaseItemTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PurchaseItemTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      purchaseId: serializer.fromJson<String>(json['purchaseId']),
      variantId: serializer.fromJson<String>(json['variantId']),
      qty: serializer.fromJson<double>(json['qty']),
      unitId: serializer.fromJson<String?>(json['unitId']),
      unitCost: serializer.fromJson<double>(json['unitCost']),
      expiryDate: serializer.fromJson<String?>(json['expiryDate']),
      lineTotal: serializer.fromJson<double>(json['lineTotal']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'purchaseId': serializer.toJson<String>(purchaseId),
      'variantId': serializer.toJson<String>(variantId),
      'qty': serializer.toJson<double>(qty),
      'unitId': serializer.toJson<String?>(unitId),
      'unitCost': serializer.toJson<double>(unitCost),
      'expiryDate': serializer.toJson<String?>(expiryDate),
      'lineTotal': serializer.toJson<double>(lineTotal),
    };
  }

  PurchaseItemTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? purchaseId,
    String? variantId,
    double? qty,
    Value<String?> unitId = const Value.absent(),
    double? unitCost,
    Value<String?> expiryDate = const Value.absent(),
    double? lineTotal,
  }) => PurchaseItemTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    purchaseId: purchaseId ?? this.purchaseId,
    variantId: variantId ?? this.variantId,
    qty: qty ?? this.qty,
    unitId: unitId.present ? unitId.value : this.unitId,
    unitCost: unitCost ?? this.unitCost,
    expiryDate: expiryDate.present ? expiryDate.value : this.expiryDate,
    lineTotal: lineTotal ?? this.lineTotal,
  );
  PurchaseItemTableData copyWithCompanion(PurchaseItemTableCompanion data) {
    return PurchaseItemTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      purchaseId: data.purchaseId.present
          ? data.purchaseId.value
          : this.purchaseId,
      variantId: data.variantId.present ? data.variantId.value : this.variantId,
      qty: data.qty.present ? data.qty.value : this.qty,
      unitId: data.unitId.present ? data.unitId.value : this.unitId,
      unitCost: data.unitCost.present ? data.unitCost.value : this.unitCost,
      expiryDate: data.expiryDate.present
          ? data.expiryDate.value
          : this.expiryDate,
      lineTotal: data.lineTotal.present ? data.lineTotal.value : this.lineTotal,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseItemTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('purchaseId: $purchaseId, ')
          ..write('variantId: $variantId, ')
          ..write('qty: $qty, ')
          ..write('unitId: $unitId, ')
          ..write('unitCost: $unitCost, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('lineTotal: $lineTotal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    purchaseId,
    variantId,
    qty,
    unitId,
    unitCost,
    expiryDate,
    lineTotal,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PurchaseItemTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.purchaseId == this.purchaseId &&
          other.variantId == this.variantId &&
          other.qty == this.qty &&
          other.unitId == this.unitId &&
          other.unitCost == this.unitCost &&
          other.expiryDate == this.expiryDate &&
          other.lineTotal == this.lineTotal);
}

class PurchaseItemTableCompanion
    extends UpdateCompanion<PurchaseItemTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> purchaseId;
  final Value<String> variantId;
  final Value<double> qty;
  final Value<String?> unitId;
  final Value<double> unitCost;
  final Value<String?> expiryDate;
  final Value<double> lineTotal;
  final Value<int> rowid;
  const PurchaseItemTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.purchaseId = const Value.absent(),
    this.variantId = const Value.absent(),
    this.qty = const Value.absent(),
    this.unitId = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.lineTotal = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PurchaseItemTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String purchaseId,
    required String variantId,
    required double qty,
    this.unitId = const Value.absent(),
    required double unitCost,
    this.expiryDate = const Value.absent(),
    required double lineTotal,
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       purchaseId = Value(purchaseId),
       variantId = Value(variantId),
       qty = Value(qty),
       unitCost = Value(unitCost),
       lineTotal = Value(lineTotal);
  static Insertable<PurchaseItemTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? purchaseId,
    Expression<String>? variantId,
    Expression<double>? qty,
    Expression<String>? unitId,
    Expression<double>? unitCost,
    Expression<String>? expiryDate,
    Expression<double>? lineTotal,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (purchaseId != null) 'purchase_id': purchaseId,
      if (variantId != null) 'variant_id': variantId,
      if (qty != null) 'qty': qty,
      if (unitId != null) 'unit_id': unitId,
      if (unitCost != null) 'unit_cost': unitCost,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (lineTotal != null) 'line_total': lineTotal,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PurchaseItemTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? purchaseId,
    Value<String>? variantId,
    Value<double>? qty,
    Value<String?>? unitId,
    Value<double>? unitCost,
    Value<String?>? expiryDate,
    Value<double>? lineTotal,
    Value<int>? rowid,
  }) {
    return PurchaseItemTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      purchaseId: purchaseId ?? this.purchaseId,
      variantId: variantId ?? this.variantId,
      qty: qty ?? this.qty,
      unitId: unitId ?? this.unitId,
      unitCost: unitCost ?? this.unitCost,
      expiryDate: expiryDate ?? this.expiryDate,
      lineTotal: lineTotal ?? this.lineTotal,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (purchaseId.present) {
      map['purchase_id'] = Variable<String>(purchaseId.value);
    }
    if (variantId.present) {
      map['variant_id'] = Variable<String>(variantId.value);
    }
    if (qty.present) {
      map['qty'] = Variable<double>(qty.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<String>(expiryDate.value);
    }
    if (lineTotal.present) {
      map['line_total'] = Variable<double>(lineTotal.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseItemTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('purchaseId: $purchaseId, ')
          ..write('variantId: $variantId, ')
          ..write('qty: $qty, ')
          ..write('unitId: $unitId, ')
          ..write('unitCost: $unitCost, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('lineTotal: $lineTotal, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LedgerEntryTableTable extends LedgerEntryTable
    with TableInfo<$LedgerEntryTableTable, LedgerEntryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LedgerEntryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _partyTypeMeta = const VerificationMeta(
    'partyType',
  );
  @override
  late final GeneratedColumn<String> partyType = GeneratedColumn<String>(
    'party_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _partyIdMeta = const VerificationMeta(
    'partyId',
  );
  @override
  late final GeneratedColumn<String> partyId = GeneratedColumn<String>(
    'party_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entryDateMeta = const VerificationMeta(
    'entryDate',
  );
  @override
  late final GeneratedColumn<String> entryDate = GeneratedColumn<String>(
    'entry_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _debitMeta = const VerificationMeta('debit');
  @override
  late final GeneratedColumn<double> debit = GeneratedColumn<double>(
    'debit',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _creditMeta = const VerificationMeta('credit');
  @override
  late final GeneratedColumn<double> credit = GeneratedColumn<double>(
    'credit',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _refTypeMeta = const VerificationMeta(
    'refType',
  );
  @override
  late final GeneratedColumn<String> refType = GeneratedColumn<String>(
    'ref_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _refIdMeta = const VerificationMeta('refId');
  @override
  late final GeneratedColumn<String> refId = GeneratedColumn<String>(
    'ref_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    partyType,
    partyId,
    entryDate,
    debit,
    credit,
    refType,
    refId,
    note,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ledger_entry';
  @override
  VerificationContext validateIntegrity(
    Insertable<LedgerEntryTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('party_type')) {
      context.handle(
        _partyTypeMeta,
        partyType.isAcceptableOrUnknown(data['party_type']!, _partyTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_partyTypeMeta);
    }
    if (data.containsKey('party_id')) {
      context.handle(
        _partyIdMeta,
        partyId.isAcceptableOrUnknown(data['party_id']!, _partyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_partyIdMeta);
    }
    if (data.containsKey('entry_date')) {
      context.handle(
        _entryDateMeta,
        entryDate.isAcceptableOrUnknown(data['entry_date']!, _entryDateMeta),
      );
    } else if (isInserting) {
      context.missing(_entryDateMeta);
    }
    if (data.containsKey('debit')) {
      context.handle(
        _debitMeta,
        debit.isAcceptableOrUnknown(data['debit']!, _debitMeta),
      );
    }
    if (data.containsKey('credit')) {
      context.handle(
        _creditMeta,
        credit.isAcceptableOrUnknown(data['credit']!, _creditMeta),
      );
    }
    if (data.containsKey('ref_type')) {
      context.handle(
        _refTypeMeta,
        refType.isAcceptableOrUnknown(data['ref_type']!, _refTypeMeta),
      );
    }
    if (data.containsKey('ref_id')) {
      context.handle(
        _refIdMeta,
        refId.isAcceptableOrUnknown(data['ref_id']!, _refIdMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LedgerEntryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LedgerEntryTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      partyType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}party_type'],
      )!,
      partyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}party_id'],
      )!,
      entryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entry_date'],
      )!,
      debit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}debit'],
      )!,
      credit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}credit'],
      )!,
      refType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ref_type'],
      ),
      refId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ref_id'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
    );
  }

  @override
  $LedgerEntryTableTable createAlias(String alias) {
    return $LedgerEntryTableTable(attachedDatabase, alias);
  }
}

class LedgerEntryTableData extends DataClass
    implements Insertable<LedgerEntryTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String partyType;
  final String partyId;
  final String entryDate;
  final double debit;
  final double credit;
  final String? refType;
  final String? refId;
  final String? note;
  const LedgerEntryTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.partyType,
    required this.partyId,
    required this.entryDate,
    required this.debit,
    required this.credit,
    this.refType,
    this.refId,
    this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['party_type'] = Variable<String>(partyType);
    map['party_id'] = Variable<String>(partyId);
    map['entry_date'] = Variable<String>(entryDate);
    map['debit'] = Variable<double>(debit);
    map['credit'] = Variable<double>(credit);
    if (!nullToAbsent || refType != null) {
      map['ref_type'] = Variable<String>(refType);
    }
    if (!nullToAbsent || refId != null) {
      map['ref_id'] = Variable<String>(refId);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  LedgerEntryTableCompanion toCompanion(bool nullToAbsent) {
    return LedgerEntryTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      partyType: Value(partyType),
      partyId: Value(partyId),
      entryDate: Value(entryDate),
      debit: Value(debit),
      credit: Value(credit),
      refType: refType == null && nullToAbsent
          ? const Value.absent()
          : Value(refType),
      refId: refId == null && nullToAbsent
          ? const Value.absent()
          : Value(refId),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory LedgerEntryTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LedgerEntryTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      partyType: serializer.fromJson<String>(json['partyType']),
      partyId: serializer.fromJson<String>(json['partyId']),
      entryDate: serializer.fromJson<String>(json['entryDate']),
      debit: serializer.fromJson<double>(json['debit']),
      credit: serializer.fromJson<double>(json['credit']),
      refType: serializer.fromJson<String?>(json['refType']),
      refId: serializer.fromJson<String?>(json['refId']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'partyType': serializer.toJson<String>(partyType),
      'partyId': serializer.toJson<String>(partyId),
      'entryDate': serializer.toJson<String>(entryDate),
      'debit': serializer.toJson<double>(debit),
      'credit': serializer.toJson<double>(credit),
      'refType': serializer.toJson<String?>(refType),
      'refId': serializer.toJson<String?>(refId),
      'note': serializer.toJson<String?>(note),
    };
  }

  LedgerEntryTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? partyType,
    String? partyId,
    String? entryDate,
    double? debit,
    double? credit,
    Value<String?> refType = const Value.absent(),
    Value<String?> refId = const Value.absent(),
    Value<String?> note = const Value.absent(),
  }) => LedgerEntryTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    partyType: partyType ?? this.partyType,
    partyId: partyId ?? this.partyId,
    entryDate: entryDate ?? this.entryDate,
    debit: debit ?? this.debit,
    credit: credit ?? this.credit,
    refType: refType.present ? refType.value : this.refType,
    refId: refId.present ? refId.value : this.refId,
    note: note.present ? note.value : this.note,
  );
  LedgerEntryTableData copyWithCompanion(LedgerEntryTableCompanion data) {
    return LedgerEntryTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      partyType: data.partyType.present ? data.partyType.value : this.partyType,
      partyId: data.partyId.present ? data.partyId.value : this.partyId,
      entryDate: data.entryDate.present ? data.entryDate.value : this.entryDate,
      debit: data.debit.present ? data.debit.value : this.debit,
      credit: data.credit.present ? data.credit.value : this.credit,
      refType: data.refType.present ? data.refType.value : this.refType,
      refId: data.refId.present ? data.refId.value : this.refId,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LedgerEntryTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('partyType: $partyType, ')
          ..write('partyId: $partyId, ')
          ..write('entryDate: $entryDate, ')
          ..write('debit: $debit, ')
          ..write('credit: $credit, ')
          ..write('refType: $refType, ')
          ..write('refId: $refId, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    partyType,
    partyId,
    entryDate,
    debit,
    credit,
    refType,
    refId,
    note,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LedgerEntryTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.partyType == this.partyType &&
          other.partyId == this.partyId &&
          other.entryDate == this.entryDate &&
          other.debit == this.debit &&
          other.credit == this.credit &&
          other.refType == this.refType &&
          other.refId == this.refId &&
          other.note == this.note);
}

class LedgerEntryTableCompanion extends UpdateCompanion<LedgerEntryTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> partyType;
  final Value<String> partyId;
  final Value<String> entryDate;
  final Value<double> debit;
  final Value<double> credit;
  final Value<String?> refType;
  final Value<String?> refId;
  final Value<String?> note;
  final Value<int> rowid;
  const LedgerEntryTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.partyType = const Value.absent(),
    this.partyId = const Value.absent(),
    this.entryDate = const Value.absent(),
    this.debit = const Value.absent(),
    this.credit = const Value.absent(),
    this.refType = const Value.absent(),
    this.refId = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LedgerEntryTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String partyType,
    required String partyId,
    required String entryDate,
    this.debit = const Value.absent(),
    this.credit = const Value.absent(),
    this.refType = const Value.absent(),
    this.refId = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       partyType = Value(partyType),
       partyId = Value(partyId),
       entryDate = Value(entryDate);
  static Insertable<LedgerEntryTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? partyType,
    Expression<String>? partyId,
    Expression<String>? entryDate,
    Expression<double>? debit,
    Expression<double>? credit,
    Expression<String>? refType,
    Expression<String>? refId,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (partyType != null) 'party_type': partyType,
      if (partyId != null) 'party_id': partyId,
      if (entryDate != null) 'entry_date': entryDate,
      if (debit != null) 'debit': debit,
      if (credit != null) 'credit': credit,
      if (refType != null) 'ref_type': refType,
      if (refId != null) 'ref_id': refId,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LedgerEntryTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? partyType,
    Value<String>? partyId,
    Value<String>? entryDate,
    Value<double>? debit,
    Value<double>? credit,
    Value<String?>? refType,
    Value<String?>? refId,
    Value<String?>? note,
    Value<int>? rowid,
  }) {
    return LedgerEntryTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      partyType: partyType ?? this.partyType,
      partyId: partyId ?? this.partyId,
      entryDate: entryDate ?? this.entryDate,
      debit: debit ?? this.debit,
      credit: credit ?? this.credit,
      refType: refType ?? this.refType,
      refId: refId ?? this.refId,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (partyType.present) {
      map['party_type'] = Variable<String>(partyType.value);
    }
    if (partyId.present) {
      map['party_id'] = Variable<String>(partyId.value);
    }
    if (entryDate.present) {
      map['entry_date'] = Variable<String>(entryDate.value);
    }
    if (debit.present) {
      map['debit'] = Variable<double>(debit.value);
    }
    if (credit.present) {
      map['credit'] = Variable<double>(credit.value);
    }
    if (refType.present) {
      map['ref_type'] = Variable<String>(refType.value);
    }
    if (refId.present) {
      map['ref_id'] = Variable<String>(refId.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LedgerEntryTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('partyType: $partyType, ')
          ..write('partyId: $partyId, ')
          ..write('entryDate: $entryDate, ')
          ..write('debit: $debit, ')
          ..write('credit: $credit, ')
          ..write('refType: $refType, ')
          ..write('refId: $refId, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PaymentTableTable extends PaymentTable
    with TableInfo<$PaymentTableTable, PaymentTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _refTypeMeta = const VerificationMeta(
    'refType',
  );
  @override
  late final GeneratedColumn<String> refType = GeneratedColumn<String>(
    'ref_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _refIdMeta = const VerificationMeta('refId');
  @override
  late final GeneratedColumn<String> refId = GeneratedColumn<String>(
    'ref_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _partyTypeMeta = const VerificationMeta(
    'partyType',
  );
  @override
  late final GeneratedColumn<String> partyType = GeneratedColumn<String>(
    'party_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _partyIdMeta = const VerificationMeta(
    'partyId',
  );
  @override
  late final GeneratedColumn<String> partyId = GeneratedColumn<String>(
    'party_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _methodMeta = const VerificationMeta('method');
  @override
  late final GeneratedColumn<String> method = GeneratedColumn<String>(
    'method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _directionMeta = const VerificationMeta(
    'direction',
  );
  @override
  late final GeneratedColumn<String> direction = GeneratedColumn<String>(
    'direction',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidAtMeta = const VerificationMeta('paidAt');
  @override
  late final GeneratedColumn<String> paidAt = GeneratedColumn<String>(
    'paid_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdByMeta = const VerificationMeta(
    'createdBy',
  );
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
    'created_by',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    refType,
    refId,
    partyType,
    partyId,
    method,
    amount,
    direction,
    paidAt,
    createdBy,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payment';
  @override
  VerificationContext validateIntegrity(
    Insertable<PaymentTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('ref_type')) {
      context.handle(
        _refTypeMeta,
        refType.isAcceptableOrUnknown(data['ref_type']!, _refTypeMeta),
      );
    }
    if (data.containsKey('ref_id')) {
      context.handle(
        _refIdMeta,
        refId.isAcceptableOrUnknown(data['ref_id']!, _refIdMeta),
      );
    }
    if (data.containsKey('party_type')) {
      context.handle(
        _partyTypeMeta,
        partyType.isAcceptableOrUnknown(data['party_type']!, _partyTypeMeta),
      );
    }
    if (data.containsKey('party_id')) {
      context.handle(
        _partyIdMeta,
        partyId.isAcceptableOrUnknown(data['party_id']!, _partyIdMeta),
      );
    }
    if (data.containsKey('method')) {
      context.handle(
        _methodMeta,
        method.isAcceptableOrUnknown(data['method']!, _methodMeta),
      );
    } else if (isInserting) {
      context.missing(_methodMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('direction')) {
      context.handle(
        _directionMeta,
        direction.isAcceptableOrUnknown(data['direction']!, _directionMeta),
      );
    } else if (isInserting) {
      context.missing(_directionMeta);
    }
    if (data.containsKey('paid_at')) {
      context.handle(
        _paidAtMeta,
        paidAt.isAcceptableOrUnknown(data['paid_at']!, _paidAtMeta),
      );
    } else if (isInserting) {
      context.missing(_paidAtMeta);
    }
    if (data.containsKey('created_by')) {
      context.handle(
        _createdByMeta,
        createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PaymentTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      refType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ref_type'],
      ),
      refId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ref_id'],
      ),
      partyType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}party_type'],
      ),
      partyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}party_id'],
      ),
      method: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}method'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      direction: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}direction'],
      )!,
      paidAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}paid_at'],
      )!,
      createdBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by'],
      ),
    );
  }

  @override
  $PaymentTableTable createAlias(String alias) {
    return $PaymentTableTable(attachedDatabase, alias);
  }
}

class PaymentTableData extends DataClass
    implements Insertable<PaymentTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String? refType;
  final String? refId;
  final String? partyType;
  final String? partyId;
  final String method;
  final double amount;
  final String direction;
  final String paidAt;
  final String? createdBy;
  const PaymentTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    this.refType,
    this.refId,
    this.partyType,
    this.partyId,
    required this.method,
    required this.amount,
    required this.direction,
    required this.paidAt,
    this.createdBy,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    if (!nullToAbsent || refType != null) {
      map['ref_type'] = Variable<String>(refType);
    }
    if (!nullToAbsent || refId != null) {
      map['ref_id'] = Variable<String>(refId);
    }
    if (!nullToAbsent || partyType != null) {
      map['party_type'] = Variable<String>(partyType);
    }
    if (!nullToAbsent || partyId != null) {
      map['party_id'] = Variable<String>(partyId);
    }
    map['method'] = Variable<String>(method);
    map['amount'] = Variable<double>(amount);
    map['direction'] = Variable<String>(direction);
    map['paid_at'] = Variable<String>(paidAt);
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    return map;
  }

  PaymentTableCompanion toCompanion(bool nullToAbsent) {
    return PaymentTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      refType: refType == null && nullToAbsent
          ? const Value.absent()
          : Value(refType),
      refId: refId == null && nullToAbsent
          ? const Value.absent()
          : Value(refId),
      partyType: partyType == null && nullToAbsent
          ? const Value.absent()
          : Value(partyType),
      partyId: partyId == null && nullToAbsent
          ? const Value.absent()
          : Value(partyId),
      method: Value(method),
      amount: Value(amount),
      direction: Value(direction),
      paidAt: Value(paidAt),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
    );
  }

  factory PaymentTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      refType: serializer.fromJson<String?>(json['refType']),
      refId: serializer.fromJson<String?>(json['refId']),
      partyType: serializer.fromJson<String?>(json['partyType']),
      partyId: serializer.fromJson<String?>(json['partyId']),
      method: serializer.fromJson<String>(json['method']),
      amount: serializer.fromJson<double>(json['amount']),
      direction: serializer.fromJson<String>(json['direction']),
      paidAt: serializer.fromJson<String>(json['paidAt']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'refType': serializer.toJson<String?>(refType),
      'refId': serializer.toJson<String?>(refId),
      'partyType': serializer.toJson<String?>(partyType),
      'partyId': serializer.toJson<String?>(partyId),
      'method': serializer.toJson<String>(method),
      'amount': serializer.toJson<double>(amount),
      'direction': serializer.toJson<String>(direction),
      'paidAt': serializer.toJson<String>(paidAt),
      'createdBy': serializer.toJson<String?>(createdBy),
    };
  }

  PaymentTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    Value<String?> refType = const Value.absent(),
    Value<String?> refId = const Value.absent(),
    Value<String?> partyType = const Value.absent(),
    Value<String?> partyId = const Value.absent(),
    String? method,
    double? amount,
    String? direction,
    String? paidAt,
    Value<String?> createdBy = const Value.absent(),
  }) => PaymentTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    refType: refType.present ? refType.value : this.refType,
    refId: refId.present ? refId.value : this.refId,
    partyType: partyType.present ? partyType.value : this.partyType,
    partyId: partyId.present ? partyId.value : this.partyId,
    method: method ?? this.method,
    amount: amount ?? this.amount,
    direction: direction ?? this.direction,
    paidAt: paidAt ?? this.paidAt,
    createdBy: createdBy.present ? createdBy.value : this.createdBy,
  );
  PaymentTableData copyWithCompanion(PaymentTableCompanion data) {
    return PaymentTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      refType: data.refType.present ? data.refType.value : this.refType,
      refId: data.refId.present ? data.refId.value : this.refId,
      partyType: data.partyType.present ? data.partyType.value : this.partyType,
      partyId: data.partyId.present ? data.partyId.value : this.partyId,
      method: data.method.present ? data.method.value : this.method,
      amount: data.amount.present ? data.amount.value : this.amount,
      direction: data.direction.present ? data.direction.value : this.direction,
      paidAt: data.paidAt.present ? data.paidAt.value : this.paidAt,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PaymentTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('refType: $refType, ')
          ..write('refId: $refId, ')
          ..write('partyType: $partyType, ')
          ..write('partyId: $partyId, ')
          ..write('method: $method, ')
          ..write('amount: $amount, ')
          ..write('direction: $direction, ')
          ..write('paidAt: $paidAt, ')
          ..write('createdBy: $createdBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    refType,
    refId,
    partyType,
    partyId,
    method,
    amount,
    direction,
    paidAt,
    createdBy,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.refType == this.refType &&
          other.refId == this.refId &&
          other.partyType == this.partyType &&
          other.partyId == this.partyId &&
          other.method == this.method &&
          other.amount == this.amount &&
          other.direction == this.direction &&
          other.paidAt == this.paidAt &&
          other.createdBy == this.createdBy);
}

class PaymentTableCompanion extends UpdateCompanion<PaymentTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String?> refType;
  final Value<String?> refId;
  final Value<String?> partyType;
  final Value<String?> partyId;
  final Value<String> method;
  final Value<double> amount;
  final Value<String> direction;
  final Value<String> paidAt;
  final Value<String?> createdBy;
  final Value<int> rowid;
  const PaymentTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.refType = const Value.absent(),
    this.refId = const Value.absent(),
    this.partyType = const Value.absent(),
    this.partyId = const Value.absent(),
    this.method = const Value.absent(),
    this.amount = const Value.absent(),
    this.direction = const Value.absent(),
    this.paidAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PaymentTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    this.refType = const Value.absent(),
    this.refId = const Value.absent(),
    this.partyType = const Value.absent(),
    this.partyId = const Value.absent(),
    required String method,
    required double amount,
    required String direction,
    required String paidAt,
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       method = Value(method),
       amount = Value(amount),
       direction = Value(direction),
       paidAt = Value(paidAt);
  static Insertable<PaymentTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? refType,
    Expression<String>? refId,
    Expression<String>? partyType,
    Expression<String>? partyId,
    Expression<String>? method,
    Expression<double>? amount,
    Expression<String>? direction,
    Expression<String>? paidAt,
    Expression<String>? createdBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (refType != null) 'ref_type': refType,
      if (refId != null) 'ref_id': refId,
      if (partyType != null) 'party_type': partyType,
      if (partyId != null) 'party_id': partyId,
      if (method != null) 'method': method,
      if (amount != null) 'amount': amount,
      if (direction != null) 'direction': direction,
      if (paidAt != null) 'paid_at': paidAt,
      if (createdBy != null) 'created_by': createdBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PaymentTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String?>? refType,
    Value<String?>? refId,
    Value<String?>? partyType,
    Value<String?>? partyId,
    Value<String>? method,
    Value<double>? amount,
    Value<String>? direction,
    Value<String>? paidAt,
    Value<String?>? createdBy,
    Value<int>? rowid,
  }) {
    return PaymentTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      refType: refType ?? this.refType,
      refId: refId ?? this.refId,
      partyType: partyType ?? this.partyType,
      partyId: partyId ?? this.partyId,
      method: method ?? this.method,
      amount: amount ?? this.amount,
      direction: direction ?? this.direction,
      paidAt: paidAt ?? this.paidAt,
      createdBy: createdBy ?? this.createdBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (refType.present) {
      map['ref_type'] = Variable<String>(refType.value);
    }
    if (refId.present) {
      map['ref_id'] = Variable<String>(refId.value);
    }
    if (partyType.present) {
      map['party_type'] = Variable<String>(partyType.value);
    }
    if (partyId.present) {
      map['party_id'] = Variable<String>(partyId.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(method.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (direction.present) {
      map['direction'] = Variable<String>(direction.value);
    }
    if (paidAt.present) {
      map['paid_at'] = Variable<String>(paidAt.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('refType: $refType, ')
          ..write('refId: $refId, ')
          ..write('partyType: $partyType, ')
          ..write('partyId: $partyId, ')
          ..write('method: $method, ')
          ..write('amount: $amount, ')
          ..write('direction: $direction, ')
          ..write('paidAt: $paidAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExpenseTableTable extends ExpenseTable
    with TableInfo<$ExpenseTableTable, ExpenseTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpenseTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expenseDateMeta = const VerificationMeta(
    'expenseDate',
  );
  @override
  late final GeneratedColumn<String> expenseDate = GeneratedColumn<String>(
    'expense_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdByMeta = const VerificationMeta(
    'createdBy',
  );
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
    'created_by',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    title,
    amount,
    expenseDate,
    note,
    createdBy,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expense';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExpenseTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('expense_date')) {
      context.handle(
        _expenseDateMeta,
        expenseDate.isAcceptableOrUnknown(
          data['expense_date']!,
          _expenseDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_expenseDateMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('created_by')) {
      context.handle(
        _createdByMeta,
        createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExpenseTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExpenseTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      expenseDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}expense_date'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      createdBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by'],
      ),
    );
  }

  @override
  $ExpenseTableTable createAlias(String alias) {
    return $ExpenseTableTable(attachedDatabase, alias);
  }
}

class ExpenseTableData extends DataClass
    implements Insertable<ExpenseTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String title;
  final double amount;
  final String expenseDate;
  final String? note;
  final String? createdBy;
  const ExpenseTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.title,
    required this.amount,
    required this.expenseDate,
    this.note,
    this.createdBy,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['title'] = Variable<String>(title);
    map['amount'] = Variable<double>(amount);
    map['expense_date'] = Variable<String>(expenseDate);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    return map;
  }

  ExpenseTableCompanion toCompanion(bool nullToAbsent) {
    return ExpenseTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      title: Value(title),
      amount: Value(amount),
      expenseDate: Value(expenseDate),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
    );
  }

  factory ExpenseTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpenseTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      title: serializer.fromJson<String>(json['title']),
      amount: serializer.fromJson<double>(json['amount']),
      expenseDate: serializer.fromJson<String>(json['expenseDate']),
      note: serializer.fromJson<String?>(json['note']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'title': serializer.toJson<String>(title),
      'amount': serializer.toJson<double>(amount),
      'expenseDate': serializer.toJson<String>(expenseDate),
      'note': serializer.toJson<String?>(note),
      'createdBy': serializer.toJson<String?>(createdBy),
    };
  }

  ExpenseTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? title,
    double? amount,
    String? expenseDate,
    Value<String?> note = const Value.absent(),
    Value<String?> createdBy = const Value.absent(),
  }) => ExpenseTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    title: title ?? this.title,
    amount: amount ?? this.amount,
    expenseDate: expenseDate ?? this.expenseDate,
    note: note.present ? note.value : this.note,
    createdBy: createdBy.present ? createdBy.value : this.createdBy,
  );
  ExpenseTableData copyWithCompanion(ExpenseTableCompanion data) {
    return ExpenseTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      title: data.title.present ? data.title.value : this.title,
      amount: data.amount.present ? data.amount.value : this.amount,
      expenseDate: data.expenseDate.present
          ? data.expenseDate.value
          : this.expenseDate,
      note: data.note.present ? data.note.value : this.note,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExpenseTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('title: $title, ')
          ..write('amount: $amount, ')
          ..write('expenseDate: $expenseDate, ')
          ..write('note: $note, ')
          ..write('createdBy: $createdBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    title,
    amount,
    expenseDate,
    note,
    createdBy,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpenseTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.title == this.title &&
          other.amount == this.amount &&
          other.expenseDate == this.expenseDate &&
          other.note == this.note &&
          other.createdBy == this.createdBy);
}

class ExpenseTableCompanion extends UpdateCompanion<ExpenseTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> title;
  final Value<double> amount;
  final Value<String> expenseDate;
  final Value<String?> note;
  final Value<String?> createdBy;
  final Value<int> rowid;
  const ExpenseTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.title = const Value.absent(),
    this.amount = const Value.absent(),
    this.expenseDate = const Value.absent(),
    this.note = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExpenseTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String title,
    required double amount,
    required String expenseDate,
    this.note = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       title = Value(title),
       amount = Value(amount),
       expenseDate = Value(expenseDate);
  static Insertable<ExpenseTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? title,
    Expression<double>? amount,
    Expression<String>? expenseDate,
    Expression<String>? note,
    Expression<String>? createdBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (title != null) 'title': title,
      if (amount != null) 'amount': amount,
      if (expenseDate != null) 'expense_date': expenseDate,
      if (note != null) 'note': note,
      if (createdBy != null) 'created_by': createdBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExpenseTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? title,
    Value<double>? amount,
    Value<String>? expenseDate,
    Value<String?>? note,
    Value<String?>? createdBy,
    Value<int>? rowid,
  }) {
    return ExpenseTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      expenseDate: expenseDate ?? this.expenseDate,
      note: note ?? this.note,
      createdBy: createdBy ?? this.createdBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (expenseDate.present) {
      map['expense_date'] = Variable<String>(expenseDate.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpenseTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('title: $title, ')
          ..write('amount: $amount, ')
          ..write('expenseDate: $expenseDate, ')
          ..write('note: $note, ')
          ..write('createdBy: $createdBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DayClosingTableTable extends DayClosingTable
    with TableInfo<$DayClosingTableTable, DayClosingTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DayClosingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.nowIso,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _closeDateMeta = const VerificationMeta(
    'closeDate',
  );
  @override
  late final GeneratedColumn<String> closeDate = GeneratedColumn<String>(
    'close_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _openingCashMeta = const VerificationMeta(
    'openingCash',
  );
  @override
  late final GeneratedColumn<double> openingCash = GeneratedColumn<double>(
    'opening_cash',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _expectedCashMeta = const VerificationMeta(
    'expectedCash',
  );
  @override
  late final GeneratedColumn<double> expectedCash = GeneratedColumn<double>(
    'expected_cash',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _countedCashMeta = const VerificationMeta(
    'countedCash',
  );
  @override
  late final GeneratedColumn<double> countedCash = GeneratedColumn<double>(
    'counted_cash',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _differenceMeta = const VerificationMeta(
    'difference',
  );
  @override
  late final GeneratedColumn<double> difference = GeneratedColumn<double>(
    'difference',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _closedByMeta = const VerificationMeta(
    'closedBy',
  );
  @override
  late final GeneratedColumn<String> closedBy = GeneratedColumn<String>(
    'closed_by',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    closeDate,
    openingCash,
    expectedCash,
    countedCash,
    difference,
    closedBy,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'day_closing';
  @override
  VerificationContext validateIntegrity(
    Insertable<DayClosingTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('close_date')) {
      context.handle(
        _closeDateMeta,
        closeDate.isAcceptableOrUnknown(data['close_date']!, _closeDateMeta),
      );
    } else if (isInserting) {
      context.missing(_closeDateMeta);
    }
    if (data.containsKey('opening_cash')) {
      context.handle(
        _openingCashMeta,
        openingCash.isAcceptableOrUnknown(
          data['opening_cash']!,
          _openingCashMeta,
        ),
      );
    }
    if (data.containsKey('expected_cash')) {
      context.handle(
        _expectedCashMeta,
        expectedCash.isAcceptableOrUnknown(
          data['expected_cash']!,
          _expectedCashMeta,
        ),
      );
    }
    if (data.containsKey('counted_cash')) {
      context.handle(
        _countedCashMeta,
        countedCash.isAcceptableOrUnknown(
          data['counted_cash']!,
          _countedCashMeta,
        ),
      );
    }
    if (data.containsKey('difference')) {
      context.handle(
        _differenceMeta,
        difference.isAcceptableOrUnknown(data['difference']!, _differenceMeta),
      );
    }
    if (data.containsKey('closed_by')) {
      context.handle(
        _closedByMeta,
        closedBy.isAcceptableOrUnknown(data['closed_by']!, _closedByMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DayClosingTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DayClosingTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      closeDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}close_date'],
      )!,
      openingCash: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}opening_cash'],
      )!,
      expectedCash: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}expected_cash'],
      )!,
      countedCash: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}counted_cash'],
      )!,
      difference: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}difference'],
      )!,
      closedBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}closed_by'],
      ),
    );
  }

  @override
  $DayClosingTableTable createAlias(String alias) {
    return $DayClosingTableTable(attachedDatabase, alias);
  }
}

class DayClosingTableData extends DataClass
    implements Insertable<DayClosingTableData> {
  /// UUID v4 primary key — generated on device via [DbHelper.newId()].
  final String id;

  /// ISO 8601 UTC datetime — auto-set on insert via clientDefault.
  /// Must also be updated on every mutation via [DbHelper.updateWithSync].
  final String updatedAt;

  /// Soft delete timestamp — NULL means the record is active.
  /// Never hard-delete; set this field instead.
  final String? deletedAt;

  /// 0 = changed locally and not yet confirmed by the cloud.
  /// 1 = cloud has acknowledged this version.
  final int synced;
  final String shopId;
  final String closeDate;
  final double openingCash;
  final double expectedCash;
  final double countedCash;
  final double difference;
  final String? closedBy;
  const DayClosingTableData({
    required this.id,
    required this.updatedAt,
    this.deletedAt,
    required this.synced,
    required this.shopId,
    required this.closeDate,
    required this.openingCash,
    required this.expectedCash,
    required this.countedCash,
    required this.difference,
    this.closedBy,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    map['synced'] = Variable<int>(synced);
    map['shop_id'] = Variable<String>(shopId);
    map['close_date'] = Variable<String>(closeDate);
    map['opening_cash'] = Variable<double>(openingCash);
    map['expected_cash'] = Variable<double>(expectedCash);
    map['counted_cash'] = Variable<double>(countedCash);
    map['difference'] = Variable<double>(difference);
    if (!nullToAbsent || closedBy != null) {
      map['closed_by'] = Variable<String>(closedBy);
    }
    return map;
  }

  DayClosingTableCompanion toCompanion(bool nullToAbsent) {
    return DayClosingTableCompanion(
      id: Value(id),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      synced: Value(synced),
      shopId: Value(shopId),
      closeDate: Value(closeDate),
      openingCash: Value(openingCash),
      expectedCash: Value(expectedCash),
      countedCash: Value(countedCash),
      difference: Value(difference),
      closedBy: closedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(closedBy),
    );
  }

  factory DayClosingTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DayClosingTableData(
      id: serializer.fromJson<String>(json['id']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
      synced: serializer.fromJson<int>(json['synced']),
      shopId: serializer.fromJson<String>(json['shopId']),
      closeDate: serializer.fromJson<String>(json['closeDate']),
      openingCash: serializer.fromJson<double>(json['openingCash']),
      expectedCash: serializer.fromJson<double>(json['expectedCash']),
      countedCash: serializer.fromJson<double>(json['countedCash']),
      difference: serializer.fromJson<double>(json['difference']),
      closedBy: serializer.fromJson<String?>(json['closedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
      'synced': serializer.toJson<int>(synced),
      'shopId': serializer.toJson<String>(shopId),
      'closeDate': serializer.toJson<String>(closeDate),
      'openingCash': serializer.toJson<double>(openingCash),
      'expectedCash': serializer.toJson<double>(expectedCash),
      'countedCash': serializer.toJson<double>(countedCash),
      'difference': serializer.toJson<double>(difference),
      'closedBy': serializer.toJson<String?>(closedBy),
    };
  }

  DayClosingTableData copyWith({
    String? id,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
    int? synced,
    String? shopId,
    String? closeDate,
    double? openingCash,
    double? expectedCash,
    double? countedCash,
    double? difference,
    Value<String?> closedBy = const Value.absent(),
  }) => DayClosingTableData(
    id: id ?? this.id,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    synced: synced ?? this.synced,
    shopId: shopId ?? this.shopId,
    closeDate: closeDate ?? this.closeDate,
    openingCash: openingCash ?? this.openingCash,
    expectedCash: expectedCash ?? this.expectedCash,
    countedCash: countedCash ?? this.countedCash,
    difference: difference ?? this.difference,
    closedBy: closedBy.present ? closedBy.value : this.closedBy,
  );
  DayClosingTableData copyWithCompanion(DayClosingTableCompanion data) {
    return DayClosingTableData(
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      closeDate: data.closeDate.present ? data.closeDate.value : this.closeDate,
      openingCash: data.openingCash.present
          ? data.openingCash.value
          : this.openingCash,
      expectedCash: data.expectedCash.present
          ? data.expectedCash.value
          : this.expectedCash,
      countedCash: data.countedCash.present
          ? data.countedCash.value
          : this.countedCash,
      difference: data.difference.present
          ? data.difference.value
          : this.difference,
      closedBy: data.closedBy.present ? data.closedBy.value : this.closedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DayClosingTableData(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('closeDate: $closeDate, ')
          ..write('openingCash: $openingCash, ')
          ..write('expectedCash: $expectedCash, ')
          ..write('countedCash: $countedCash, ')
          ..write('difference: $difference, ')
          ..write('closedBy: $closedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    updatedAt,
    deletedAt,
    synced,
    shopId,
    closeDate,
    openingCash,
    expectedCash,
    countedCash,
    difference,
    closedBy,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DayClosingTableData &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.synced == this.synced &&
          other.shopId == this.shopId &&
          other.closeDate == this.closeDate &&
          other.openingCash == this.openingCash &&
          other.expectedCash == this.expectedCash &&
          other.countedCash == this.countedCash &&
          other.difference == this.difference &&
          other.closedBy == this.closedBy);
}

class DayClosingTableCompanion extends UpdateCompanion<DayClosingTableData> {
  final Value<String> id;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> synced;
  final Value<String> shopId;
  final Value<String> closeDate;
  final Value<double> openingCash;
  final Value<double> expectedCash;
  final Value<double> countedCash;
  final Value<double> difference;
  final Value<String?> closedBy;
  final Value<int> rowid;
  const DayClosingTableCompanion({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.shopId = const Value.absent(),
    this.closeDate = const Value.absent(),
    this.openingCash = const Value.absent(),
    this.expectedCash = const Value.absent(),
    this.countedCash = const Value.absent(),
    this.difference = const Value.absent(),
    this.closedBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DayClosingTableCompanion.insert({
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.synced = const Value.absent(),
    required String shopId,
    required String closeDate,
    this.openingCash = const Value.absent(),
    this.expectedCash = const Value.absent(),
    this.countedCash = const Value.absent(),
    this.difference = const Value.absent(),
    this.closedBy = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       closeDate = Value(closeDate);
  static Insertable<DayClosingTableData> custom({
    Expression<String>? id,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? synced,
    Expression<String>? shopId,
    Expression<String>? closeDate,
    Expression<double>? openingCash,
    Expression<double>? expectedCash,
    Expression<double>? countedCash,
    Expression<double>? difference,
    Expression<String>? closedBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (synced != null) 'synced': synced,
      if (shopId != null) 'shop_id': shopId,
      if (closeDate != null) 'close_date': closeDate,
      if (openingCash != null) 'opening_cash': openingCash,
      if (expectedCash != null) 'expected_cash': expectedCash,
      if (countedCash != null) 'counted_cash': countedCash,
      if (difference != null) 'difference': difference,
      if (closedBy != null) 'closed_by': closedBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DayClosingTableCompanion copyWith({
    Value<String>? id,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? synced,
    Value<String>? shopId,
    Value<String>? closeDate,
    Value<double>? openingCash,
    Value<double>? expectedCash,
    Value<double>? countedCash,
    Value<double>? difference,
    Value<String?>? closedBy,
    Value<int>? rowid,
  }) {
    return DayClosingTableCompanion(
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      synced: synced ?? this.synced,
      shopId: shopId ?? this.shopId,
      closeDate: closeDate ?? this.closeDate,
      openingCash: openingCash ?? this.openingCash,
      expectedCash: expectedCash ?? this.expectedCash,
      countedCash: countedCash ?? this.countedCash,
      difference: difference ?? this.difference,
      closedBy: closedBy ?? this.closedBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (closeDate.present) {
      map['close_date'] = Variable<String>(closeDate.value);
    }
    if (openingCash.present) {
      map['opening_cash'] = Variable<double>(openingCash.value);
    }
    if (expectedCash.present) {
      map['expected_cash'] = Variable<double>(expectedCash.value);
    }
    if (countedCash.present) {
      map['counted_cash'] = Variable<double>(countedCash.value);
    }
    if (difference.present) {
      map['difference'] = Variable<double>(difference.value);
    }
    if (closedBy.present) {
      map['closed_by'] = Variable<String>(closedBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DayClosingTableCompanion(')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('synced: $synced, ')
          ..write('shopId: $shopId, ')
          ..write('closeDate: $closeDate, ')
          ..write('openingCash: $openingCash, ')
          ..write('expectedCash: $expectedCash, ')
          ..write('countedCash: $countedCash, ')
          ..write('difference: $difference, ')
          ..write('closedBy: $closedBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ActivityLogTableTable extends ActivityLogTable
    with TableInfo<$ActivityLogTableTable, ActivityLogTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivityLogTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: DbHelper.newId,
  );
  static const VerificationMeta _shopIdMeta = const VerificationMeta('shopId');
  @override
  late final GeneratedColumn<String> shopId = GeneratedColumn<String>(
    'shop_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user (id)',
    ),
  );
  static const VerificationMeta _actionMeta = const VerificationMeta('action');
  @override
  late final GeneratedColumn<String> action = GeneratedColumn<String>(
    'action',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tableName2Meta = const VerificationMeta(
    'tableName2',
  );
  @override
  late final GeneratedColumn<String> tableName2 = GeneratedColumn<String>(
    'table_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _recordIdMeta = const VerificationMeta(
    'recordId',
  );
  @override
  late final GeneratedColumn<String> recordId = GeneratedColumn<String>(
    'record_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _detailMeta = const VerificationMeta('detail');
  @override
  late final GeneratedColumn<String> detail = GeneratedColumn<String>(
    'detail',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    shopId,
    userId,
    action,
    tableName2,
    recordId,
    detail,
    createdAt,
    synced,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activity_log';
  @override
  VerificationContext validateIntegrity(
    Insertable<ActivityLogTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('shop_id')) {
      context.handle(
        _shopIdMeta,
        shopId.isAcceptableOrUnknown(data['shop_id']!, _shopIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shopIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    if (data.containsKey('action')) {
      context.handle(
        _actionMeta,
        action.isAcceptableOrUnknown(data['action']!, _actionMeta),
      );
    } else if (isInserting) {
      context.missing(_actionMeta);
    }
    if (data.containsKey('table_name')) {
      context.handle(
        _tableName2Meta,
        tableName2.isAcceptableOrUnknown(data['table_name']!, _tableName2Meta),
      );
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    }
    if (data.containsKey('detail')) {
      context.handle(
        _detailMeta,
        detail.isAcceptableOrUnknown(data['detail']!, _detailMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActivityLogTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivityLogTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      shopId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shop_id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
      action: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}action'],
      )!,
      tableName2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}table_name'],
      ),
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}record_id'],
      ),
      detail: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}detail'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
    );
  }

  @override
  $ActivityLogTableTable createAlias(String alias) {
    return $ActivityLogTableTable(attachedDatabase, alias);
  }
}

class ActivityLogTableData extends DataClass
    implements Insertable<ActivityLogTableData> {
  final String id;
  final String shopId;
  final String? userId;
  final String action;
  final String? tableName2;
  final String? recordId;
  final String? detail;
  final String createdAt;
  final int synced;
  const ActivityLogTableData({
    required this.id,
    required this.shopId,
    this.userId,
    required this.action,
    this.tableName2,
    this.recordId,
    this.detail,
    required this.createdAt,
    required this.synced,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['shop_id'] = Variable<String>(shopId);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    map['action'] = Variable<String>(action);
    if (!nullToAbsent || tableName2 != null) {
      map['table_name'] = Variable<String>(tableName2);
    }
    if (!nullToAbsent || recordId != null) {
      map['record_id'] = Variable<String>(recordId);
    }
    if (!nullToAbsent || detail != null) {
      map['detail'] = Variable<String>(detail);
    }
    map['created_at'] = Variable<String>(createdAt);
    map['synced'] = Variable<int>(synced);
    return map;
  }

  ActivityLogTableCompanion toCompanion(bool nullToAbsent) {
    return ActivityLogTableCompanion(
      id: Value(id),
      shopId: Value(shopId),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
      action: Value(action),
      tableName2: tableName2 == null && nullToAbsent
          ? const Value.absent()
          : Value(tableName2),
      recordId: recordId == null && nullToAbsent
          ? const Value.absent()
          : Value(recordId),
      detail: detail == null && nullToAbsent
          ? const Value.absent()
          : Value(detail),
      createdAt: Value(createdAt),
      synced: Value(synced),
    );
  }

  factory ActivityLogTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivityLogTableData(
      id: serializer.fromJson<String>(json['id']),
      shopId: serializer.fromJson<String>(json['shopId']),
      userId: serializer.fromJson<String?>(json['userId']),
      action: serializer.fromJson<String>(json['action']),
      tableName2: serializer.fromJson<String?>(json['tableName2']),
      recordId: serializer.fromJson<String?>(json['recordId']),
      detail: serializer.fromJson<String?>(json['detail']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      synced: serializer.fromJson<int>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'shopId': serializer.toJson<String>(shopId),
      'userId': serializer.toJson<String?>(userId),
      'action': serializer.toJson<String>(action),
      'tableName2': serializer.toJson<String?>(tableName2),
      'recordId': serializer.toJson<String?>(recordId),
      'detail': serializer.toJson<String?>(detail),
      'createdAt': serializer.toJson<String>(createdAt),
      'synced': serializer.toJson<int>(synced),
    };
  }

  ActivityLogTableData copyWith({
    String? id,
    String? shopId,
    Value<String?> userId = const Value.absent(),
    String? action,
    Value<String?> tableName2 = const Value.absent(),
    Value<String?> recordId = const Value.absent(),
    Value<String?> detail = const Value.absent(),
    String? createdAt,
    int? synced,
  }) => ActivityLogTableData(
    id: id ?? this.id,
    shopId: shopId ?? this.shopId,
    userId: userId.present ? userId.value : this.userId,
    action: action ?? this.action,
    tableName2: tableName2.present ? tableName2.value : this.tableName2,
    recordId: recordId.present ? recordId.value : this.recordId,
    detail: detail.present ? detail.value : this.detail,
    createdAt: createdAt ?? this.createdAt,
    synced: synced ?? this.synced,
  );
  ActivityLogTableData copyWithCompanion(ActivityLogTableCompanion data) {
    return ActivityLogTableData(
      id: data.id.present ? data.id.value : this.id,
      shopId: data.shopId.present ? data.shopId.value : this.shopId,
      userId: data.userId.present ? data.userId.value : this.userId,
      action: data.action.present ? data.action.value : this.action,
      tableName2: data.tableName2.present
          ? data.tableName2.value
          : this.tableName2,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      detail: data.detail.present ? data.detail.value : this.detail,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      synced: data.synced.present ? data.synced.value : this.synced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActivityLogTableData(')
          ..write('id: $id, ')
          ..write('shopId: $shopId, ')
          ..write('userId: $userId, ')
          ..write('action: $action, ')
          ..write('tableName2: $tableName2, ')
          ..write('recordId: $recordId, ')
          ..write('detail: $detail, ')
          ..write('createdAt: $createdAt, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    shopId,
    userId,
    action,
    tableName2,
    recordId,
    detail,
    createdAt,
    synced,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivityLogTableData &&
          other.id == this.id &&
          other.shopId == this.shopId &&
          other.userId == this.userId &&
          other.action == this.action &&
          other.tableName2 == this.tableName2 &&
          other.recordId == this.recordId &&
          other.detail == this.detail &&
          other.createdAt == this.createdAt &&
          other.synced == this.synced);
}

class ActivityLogTableCompanion extends UpdateCompanion<ActivityLogTableData> {
  final Value<String> id;
  final Value<String> shopId;
  final Value<String?> userId;
  final Value<String> action;
  final Value<String?> tableName2;
  final Value<String?> recordId;
  final Value<String?> detail;
  final Value<String> createdAt;
  final Value<int> synced;
  final Value<int> rowid;
  const ActivityLogTableCompanion({
    this.id = const Value.absent(),
    this.shopId = const Value.absent(),
    this.userId = const Value.absent(),
    this.action = const Value.absent(),
    this.tableName2 = const Value.absent(),
    this.recordId = const Value.absent(),
    this.detail = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ActivityLogTableCompanion.insert({
    this.id = const Value.absent(),
    required String shopId,
    this.userId = const Value.absent(),
    required String action,
    this.tableName2 = const Value.absent(),
    this.recordId = const Value.absent(),
    this.detail = const Value.absent(),
    required String createdAt,
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : shopId = Value(shopId),
       action = Value(action),
       createdAt = Value(createdAt);
  static Insertable<ActivityLogTableData> custom({
    Expression<String>? id,
    Expression<String>? shopId,
    Expression<String>? userId,
    Expression<String>? action,
    Expression<String>? tableName2,
    Expression<String>? recordId,
    Expression<String>? detail,
    Expression<String>? createdAt,
    Expression<int>? synced,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (shopId != null) 'shop_id': shopId,
      if (userId != null) 'user_id': userId,
      if (action != null) 'action': action,
      if (tableName2 != null) 'table_name': tableName2,
      if (recordId != null) 'record_id': recordId,
      if (detail != null) 'detail': detail,
      if (createdAt != null) 'created_at': createdAt,
      if (synced != null) 'synced': synced,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ActivityLogTableCompanion copyWith({
    Value<String>? id,
    Value<String>? shopId,
    Value<String?>? userId,
    Value<String>? action,
    Value<String?>? tableName2,
    Value<String?>? recordId,
    Value<String?>? detail,
    Value<String>? createdAt,
    Value<int>? synced,
    Value<int>? rowid,
  }) {
    return ActivityLogTableCompanion(
      id: id ?? this.id,
      shopId: shopId ?? this.shopId,
      userId: userId ?? this.userId,
      action: action ?? this.action,
      tableName2: tableName2 ?? this.tableName2,
      recordId: recordId ?? this.recordId,
      detail: detail ?? this.detail,
      createdAt: createdAt ?? this.createdAt,
      synced: synced ?? this.synced,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (shopId.present) {
      map['shop_id'] = Variable<String>(shopId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (action.present) {
      map['action'] = Variable<String>(action.value);
    }
    if (tableName2.present) {
      map['table_name'] = Variable<String>(tableName2.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<String>(recordId.value);
    }
    if (detail.present) {
      map['detail'] = Variable<String>(detail.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivityLogTableCompanion(')
          ..write('id: $id, ')
          ..write('shopId: $shopId, ')
          ..write('userId: $userId, ')
          ..write('action: $action, ')
          ..write('tableName2: $tableName2, ')
          ..write('recordId: $recordId, ')
          ..write('detail: $detail, ')
          ..write('createdAt: $createdAt, ')
          ..write('synced: $synced, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncStateTableTable extends SyncStateTable
    with TableInfo<$SyncStateTableTable, SyncStateTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncStateTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL CHECK (id = 1)',
  );
  static const VerificationMeta _lastSyncedAtMeta = const VerificationMeta(
    'lastSyncedAt',
  );
  @override
  late final GeneratedColumn<String> lastSyncedAt = GeneratedColumn<String>(
    'last_synced_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deviceIdMeta = const VerificationMeta(
    'deviceId',
  );
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
    'device_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, lastSyncedAt, deviceId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_state';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncStateTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('last_synced_at')) {
      context.handle(
        _lastSyncedAtMeta,
        lastSyncedAt.isAcceptableOrUnknown(
          data['last_synced_at']!,
          _lastSyncedAtMeta,
        ),
      );
    }
    if (data.containsKey('device_id')) {
      context.handle(
        _deviceIdMeta,
        deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncStateTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncStateTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      lastSyncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_synced_at'],
      ),
      deviceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_id'],
      )!,
    );
  }

  @override
  $SyncStateTableTable createAlias(String alias) {
    return $SyncStateTableTable(attachedDatabase, alias);
  }
}

class SyncStateTableData extends DataClass
    implements Insertable<SyncStateTableData> {
  final int id;
  final String? lastSyncedAt;
  final String deviceId;
  const SyncStateTableData({
    required this.id,
    this.lastSyncedAt,
    required this.deviceId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || lastSyncedAt != null) {
      map['last_synced_at'] = Variable<String>(lastSyncedAt);
    }
    map['device_id'] = Variable<String>(deviceId);
    return map;
  }

  SyncStateTableCompanion toCompanion(bool nullToAbsent) {
    return SyncStateTableCompanion(
      id: Value(id),
      lastSyncedAt: lastSyncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncedAt),
      deviceId: Value(deviceId),
    );
  }

  factory SyncStateTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncStateTableData(
      id: serializer.fromJson<int>(json['id']),
      lastSyncedAt: serializer.fromJson<String?>(json['lastSyncedAt']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lastSyncedAt': serializer.toJson<String?>(lastSyncedAt),
      'deviceId': serializer.toJson<String>(deviceId),
    };
  }

  SyncStateTableData copyWith({
    int? id,
    Value<String?> lastSyncedAt = const Value.absent(),
    String? deviceId,
  }) => SyncStateTableData(
    id: id ?? this.id,
    lastSyncedAt: lastSyncedAt.present ? lastSyncedAt.value : this.lastSyncedAt,
    deviceId: deviceId ?? this.deviceId,
  );
  SyncStateTableData copyWithCompanion(SyncStateTableCompanion data) {
    return SyncStateTableData(
      id: data.id.present ? data.id.value : this.id,
      lastSyncedAt: data.lastSyncedAt.present
          ? data.lastSyncedAt.value
          : this.lastSyncedAt,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncStateTableData(')
          ..write('id: $id, ')
          ..write('lastSyncedAt: $lastSyncedAt, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastSyncedAt, deviceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncStateTableData &&
          other.id == this.id &&
          other.lastSyncedAt == this.lastSyncedAt &&
          other.deviceId == this.deviceId);
}

class SyncStateTableCompanion extends UpdateCompanion<SyncStateTableData> {
  final Value<int> id;
  final Value<String?> lastSyncedAt;
  final Value<String> deviceId;
  const SyncStateTableCompanion({
    this.id = const Value.absent(),
    this.lastSyncedAt = const Value.absent(),
    this.deviceId = const Value.absent(),
  });
  SyncStateTableCompanion.insert({
    this.id = const Value.absent(),
    this.lastSyncedAt = const Value.absent(),
    required String deviceId,
  }) : deviceId = Value(deviceId);
  static Insertable<SyncStateTableData> custom({
    Expression<int>? id,
    Expression<String>? lastSyncedAt,
    Expression<String>? deviceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastSyncedAt != null) 'last_synced_at': lastSyncedAt,
      if (deviceId != null) 'device_id': deviceId,
    });
  }

  SyncStateTableCompanion copyWith({
    Value<int>? id,
    Value<String?>? lastSyncedAt,
    Value<String>? deviceId,
  }) {
    return SyncStateTableCompanion(
      id: id ?? this.id,
      lastSyncedAt: lastSyncedAt ?? this.lastSyncedAt,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lastSyncedAt.present) {
      map['last_synced_at'] = Variable<String>(lastSyncedAt.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncStateTableCompanion(')
          ..write('id: $id, ')
          ..write('lastSyncedAt: $lastSyncedAt, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ShopTableTable shopTable = $ShopTableTable(this);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $UnitTableTable unitTable = $UnitTableTable(this);
  late final $ProductTableTable productTable = $ProductTableTable(this);
  late final $ProductVariantTableTable productVariantTable =
      $ProductVariantTableTable(this);
  late final $ProductUnitConversionTableTable productUnitConversionTable =
      $ProductUnitConversionTableTable(this);
  late final $StockMovementTableTable stockMovementTable =
      $StockMovementTableTable(this);
  late final $CustomerTableTable customerTable = $CustomerTableTable(this);
  late final $SupplierTableTable supplierTable = $SupplierTableTable(this);
  late final $SaleTableTable saleTable = $SaleTableTable(this);
  late final $SaleItemTableTable saleItemTable = $SaleItemTableTable(this);
  late final $PurchaseTableTable purchaseTable = $PurchaseTableTable(this);
  late final $PurchaseItemTableTable purchaseItemTable =
      $PurchaseItemTableTable(this);
  late final $LedgerEntryTableTable ledgerEntryTable = $LedgerEntryTableTable(
    this,
  );
  late final $PaymentTableTable paymentTable = $PaymentTableTable(this);
  late final $ExpenseTableTable expenseTable = $ExpenseTableTable(this);
  late final $DayClosingTableTable dayClosingTable = $DayClosingTableTable(
    this,
  );
  late final $ActivityLogTableTable activityLogTable = $ActivityLogTableTable(
    this,
  );
  late final $SyncStateTableTable syncStateTable = $SyncStateTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    shopTable,
    userTable,
    categoryTable,
    unitTable,
    productTable,
    productVariantTable,
    productUnitConversionTable,
    stockMovementTable,
    customerTable,
    supplierTable,
    saleTable,
    saleItemTable,
    purchaseTable,
    purchaseItemTable,
    ledgerEntryTable,
    paymentTable,
    expenseTable,
    dayClosingTable,
    activityLogTable,
    syncStateTable,
  ];
}

typedef $$ShopTableTableCreateCompanionBuilder = ShopTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  required String name,
  Value<String?> shopType,
  Value<String?> phone,
  Value<String?> address,
  Value<String> currency,
  Value<String?> receiptFooter,
  Value<int> rowid,
});
typedef $$ShopTableTableUpdateCompanionBuilder = ShopTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  Value<String> name,
  Value<String?> shopType,
  Value<String?> phone,
  Value<String?> address,
  Value<String> currency,
  Value<String?> receiptFooter,
  Value<int> rowid,
});

final class $$ShopTableTableReferences
    extends BaseReferences<_$AppDatabase, $ShopTableTable, ShopTableData> {
  $$ShopTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$UserTableTable, List<UserTableData>>
  _userTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.userTable,
    aliasName: 'shop__id__user__shop_id',
  );

  $$UserTableTableProcessedTableManager get userTableRefs {
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.shopId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_userTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ShopTableTableFilterComposer
    extends Composer<_$AppDatabase, $ShopTableTable> {
  $$ShopTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopType => $composableBuilder(
    column: $table.shopType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get receiptFooter => $composableBuilder(
    column: $table.receiptFooter,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> userTableRefs(
    Expression<bool> Function($$UserTableTableFilterComposer f) f,
  ) {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.shopId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ShopTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ShopTableTable> {
  $$ShopTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopType => $composableBuilder(
    column: $table.shopType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get receiptFooter => $composableBuilder(
    column: $table.receiptFooter,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ShopTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ShopTableTable> {
  $$ShopTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get shopType =>
      $composableBuilder(column: $table.shopType, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<String> get receiptFooter => $composableBuilder(
    column: $table.receiptFooter,
    builder: (column) => column,
  );

  Expression<T> userTableRefs<T extends Object>(
    Expression<T> Function($$UserTableTableAnnotationComposer a) f,
  ) {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.shopId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ShopTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ShopTableTable,
          ShopTableData,
          $$ShopTableTableFilterComposer,
          $$ShopTableTableOrderingComposer,
          $$ShopTableTableAnnotationComposer,
          $$ShopTableTableCreateCompanionBuilder,
          $$ShopTableTableUpdateCompanionBuilder,
          (ShopTableData, $$ShopTableTableReferences),
          ShopTableData,
          PrefetchHooks Function({bool userTableRefs})
        > {
  $$ShopTableTableTableManager(_$AppDatabase db, $ShopTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ShopTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ShopTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ShopTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> shopType = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String?> receiptFooter = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShopTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                name: name,
                shopType: shopType,
                phone: phone,
                address: address,
                currency: currency,
                receiptFooter: receiptFooter,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String name,
                Value<String?> shopType = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String?> receiptFooter = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShopTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                name: name,
                shopType: shopType,
                phone: phone,
                address: address,
                currency: currency,
                receiptFooter: receiptFooter,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ShopTableTable, ShopTableData>(table),
                  $$ShopTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (userTableRefs) db.userTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (userTableRefs)
                    await $_getPrefetchedData<
                      ShopTableData,
                      $ShopTableTable,
                      UserTableData
                    >(
                      currentTable: table,
                      referencedTable: $$ShopTableTableReferences
                          ._userTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ShopTableTableReferences(
                            db,
                            table,
                            p0,
                          ).userTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.shopId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ShopTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ShopTableTable,
      ShopTableData,
      $$ShopTableTableFilterComposer,
      $$ShopTableTableOrderingComposer,
      $$ShopTableTableAnnotationComposer,
      $$ShopTableTableCreateCompanionBuilder,
      $$ShopTableTableUpdateCompanionBuilder,
      (ShopTableData, $$ShopTableTableReferences),
      ShopTableData,
      PrefetchHooks Function({bool userTableRefs})
    >;
typedef $$UserTableTableCreateCompanionBuilder = UserTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  required String shopId,
  required String name,
  required String username,
  required String passwordHash,
  required String role,
  Value<int> isActive,
  Value<int> rowid,
});
typedef $$UserTableTableUpdateCompanionBuilder = UserTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  Value<String> shopId,
  Value<String> name,
  Value<String> username,
  Value<String> passwordHash,
  Value<String> role,
  Value<int> isActive,
  Value<int> rowid,
});

final class $$UserTableTableReferences
    extends BaseReferences<_$AppDatabase, $UserTableTable, UserTableData> {
  $$UserTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ShopTableTable _shopIdTable(_$AppDatabase db) =>
      db.shopTable.createAlias('user__shop_id__shop__id');

  $$ShopTableTableProcessedTableManager get shopId {
    final $_column = $_itemColumn<String>('shop_id')!;

    final manager = $$ShopTableTableTableManager(
      $_db,
      $_db.shopTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_shopIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $StockMovementTableTable,
    List<StockMovementTableData>
  >
  _stockMovementTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.stockMovementTable,
        aliasName: 'user__id__stock_movement__created_by',
      );

  $$StockMovementTableTableProcessedTableManager get stockMovementTableRefs {
    final manager = $$StockMovementTableTableTableManager(
      $_db,
      $_db.stockMovementTable,
    ).filter((f) => f.createdBy.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _stockMovementTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SaleTableTable, List<SaleTableData>>
  _saleTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.saleTable,
    aliasName: 'user__id__sale__created_by',
  );

  $$SaleTableTableProcessedTableManager get saleTableRefs {
    final manager = $$SaleTableTableTableManager(
      $_db,
      $_db.saleTable,
    ).filter((f) => f.createdBy.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_saleTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PurchaseTableTable, List<PurchaseTableData>>
  _purchaseTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.purchaseTable,
    aliasName: 'user__id__purchase__created_by',
  );

  $$PurchaseTableTableProcessedTableManager get purchaseTableRefs {
    final manager = $$PurchaseTableTableTableManager(
      $_db,
      $_db.purchaseTable,
    ).filter((f) => f.createdBy.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_purchaseTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PaymentTableTable, List<PaymentTableData>>
  _paymentTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.paymentTable,
    aliasName: 'user__id__payment__created_by',
  );

  $$PaymentTableTableProcessedTableManager get paymentTableRefs {
    final manager = $$PaymentTableTableTableManager(
      $_db,
      $_db.paymentTable,
    ).filter((f) => f.createdBy.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_paymentTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ExpenseTableTable, List<ExpenseTableData>>
  _expenseTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.expenseTable,
    aliasName: 'user__id__expense__created_by',
  );

  $$ExpenseTableTableProcessedTableManager get expenseTableRefs {
    final manager = $$ExpenseTableTableTableManager(
      $_db,
      $_db.expenseTable,
    ).filter((f) => f.createdBy.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_expenseTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$DayClosingTableTable, List<DayClosingTableData>>
  _dayClosingTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.dayClosingTable,
    aliasName: 'user__id__day_closing__closed_by',
  );

  $$DayClosingTableTableProcessedTableManager get dayClosingTableRefs {
    final manager = $$DayClosingTableTableTableManager(
      $_db,
      $_db.dayClosingTable,
    ).filter((f) => f.closedBy.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _dayClosingTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ActivityLogTableTable, List<ActivityLogTableData>>
  _activityLogTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.activityLogTable,
    aliasName: 'user__id__activity_log__user_id',
  );

  $$ActivityLogTableTableProcessedTableManager get activityLogTableRefs {
    final manager = $$ActivityLogTableTableTableManager(
      $_db,
      $_db.activityLogTable,
    ).filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _activityLogTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$UserTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  $$ShopTableTableFilterComposer get shopId {
    final $$ShopTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.shopId,
      referencedTable: $db.shopTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShopTableTableFilterComposer(
            $db: $db,
            $table: $db.shopTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> stockMovementTableRefs(
    Expression<bool> Function($$StockMovementTableTableFilterComposer f) f,
  ) {
    final $$StockMovementTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stockMovementTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StockMovementTableTableFilterComposer(
            $db: $db,
            $table: $db.stockMovementTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> saleTableRefs(
    Expression<bool> Function($$SaleTableTableFilterComposer f) f,
  ) {
    final $$SaleTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleTableTableFilterComposer(
            $db: $db,
            $table: $db.saleTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> purchaseTableRefs(
    Expression<bool> Function($$PurchaseTableTableFilterComposer f) f,
  ) {
    final $$PurchaseTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.purchaseTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseTableTableFilterComposer(
            $db: $db,
            $table: $db.purchaseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> paymentTableRefs(
    Expression<bool> Function($$PaymentTableTableFilterComposer f) f,
  ) {
    final $$PaymentTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.paymentTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentTableTableFilterComposer(
            $db: $db,
            $table: $db.paymentTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> expenseTableRefs(
    Expression<bool> Function($$ExpenseTableTableFilterComposer f) f,
  ) {
    final $$ExpenseTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.expenseTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExpenseTableTableFilterComposer(
            $db: $db,
            $table: $db.expenseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> dayClosingTableRefs(
    Expression<bool> Function($$DayClosingTableTableFilterComposer f) f,
  ) {
    final $$DayClosingTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayClosingTable,
      getReferencedColumn: (t) => t.closedBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayClosingTableTableFilterComposer(
            $db: $db,
            $table: $db.dayClosingTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> activityLogTableRefs(
    Expression<bool> Function($$ActivityLogTableTableFilterComposer f) f,
  ) {
    final $$ActivityLogTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.activityLogTable,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ActivityLogTableTableFilterComposer(
            $db: $db,
            $table: $db.activityLogTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UserTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  $$ShopTableTableOrderingComposer get shopId {
    final $$ShopTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.shopId,
      referencedTable: $db.shopTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShopTableTableOrderingComposer(
            $db: $db,
            $table: $db.shopTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UserTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => column,
  );

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  $$ShopTableTableAnnotationComposer get shopId {
    final $$ShopTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.shopId,
      referencedTable: $db.shopTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShopTableTableAnnotationComposer(
            $db: $db,
            $table: $db.shopTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> stockMovementTableRefs<T extends Object>(
    Expression<T> Function($$StockMovementTableTableAnnotationComposer a) f,
  ) {
    final $$StockMovementTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.stockMovementTable,
          getReferencedColumn: (t) => t.createdBy,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$StockMovementTableTableAnnotationComposer(
                $db: $db,
                $table: $db.stockMovementTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> saleTableRefs<T extends Object>(
    Expression<T> Function($$SaleTableTableAnnotationComposer a) f,
  ) {
    final $$SaleTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleTableTableAnnotationComposer(
            $db: $db,
            $table: $db.saleTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> purchaseTableRefs<T extends Object>(
    Expression<T> Function($$PurchaseTableTableAnnotationComposer a) f,
  ) {
    final $$PurchaseTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.purchaseTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseTableTableAnnotationComposer(
            $db: $db,
            $table: $db.purchaseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> paymentTableRefs<T extends Object>(
    Expression<T> Function($$PaymentTableTableAnnotationComposer a) f,
  ) {
    final $$PaymentTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.paymentTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentTableTableAnnotationComposer(
            $db: $db,
            $table: $db.paymentTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> expenseTableRefs<T extends Object>(
    Expression<T> Function($$ExpenseTableTableAnnotationComposer a) f,
  ) {
    final $$ExpenseTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.expenseTable,
      getReferencedColumn: (t) => t.createdBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExpenseTableTableAnnotationComposer(
            $db: $db,
            $table: $db.expenseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> dayClosingTableRefs<T extends Object>(
    Expression<T> Function($$DayClosingTableTableAnnotationComposer a) f,
  ) {
    final $$DayClosingTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayClosingTable,
      getReferencedColumn: (t) => t.closedBy,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayClosingTableTableAnnotationComposer(
            $db: $db,
            $table: $db.dayClosingTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> activityLogTableRefs<T extends Object>(
    Expression<T> Function($$ActivityLogTableTableAnnotationComposer a) f,
  ) {
    final $$ActivityLogTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.activityLogTable,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ActivityLogTableTableAnnotationComposer(
            $db: $db,
            $table: $db.activityLogTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UserTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserTableTable,
          UserTableData,
          $$UserTableTableFilterComposer,
          $$UserTableTableOrderingComposer,
          $$UserTableTableAnnotationComposer,
          $$UserTableTableCreateCompanionBuilder,
          $$UserTableTableUpdateCompanionBuilder,
          (UserTableData, $$UserTableTableReferences),
          UserTableData,
          PrefetchHooks Function({
            bool shopId,
            bool stockMovementTableRefs,
            bool saleTableRefs,
            bool purchaseTableRefs,
            bool paymentTableRefs,
            bool expenseTableRefs,
            bool dayClosingTableRefs,
            bool activityLogTableRefs,
          })
        > {
  $$UserTableTableTableManager(_$AppDatabase db, $UserTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> username = const Value.absent(),
                Value<String> passwordHash = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                username: username,
                passwordHash: passwordHash,
                role: role,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String name,
                required String username,
                required String passwordHash,
                required String role,
                Value<int> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                username: username,
                passwordHash: passwordHash,
                role: role,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserTableTable, UserTableData>(table),
                  $$UserTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                shopId = false,
                stockMovementTableRefs = false,
                saleTableRefs = false,
                purchaseTableRefs = false,
                paymentTableRefs = false,
                expenseTableRefs = false,
                dayClosingTableRefs = false,
                activityLogTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (stockMovementTableRefs) db.stockMovementTable,
                    if (saleTableRefs) db.saleTable,
                    if (purchaseTableRefs) db.purchaseTable,
                    if (paymentTableRefs) db.paymentTable,
                    if (expenseTableRefs) db.expenseTable,
                    if (dayClosingTableRefs) db.dayClosingTable,
                    if (activityLogTableRefs) db.activityLogTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (shopId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.shopId,
                            referencedTable: $$UserTableTableReferences
                                ._shopIdTable(db),
                            referencedColumn: $$UserTableTableReferences
                                ._shopIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (stockMovementTableRefs)
                        await $_getPrefetchedData<
                          UserTableData,
                          $UserTableTable,
                          StockMovementTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UserTableTableReferences
                              ._stockMovementTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UserTableTableReferences(
                                db,
                                table,
                                p0,
                              ).stockMovementTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.createdBy == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (saleTableRefs)
                        await $_getPrefetchedData<
                          UserTableData,
                          $UserTableTable,
                          SaleTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UserTableTableReferences
                              ._saleTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UserTableTableReferences(
                                db,
                                table,
                                p0,
                              ).saleTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.createdBy == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (purchaseTableRefs)
                        await $_getPrefetchedData<
                          UserTableData,
                          $UserTableTable,
                          PurchaseTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UserTableTableReferences
                              ._purchaseTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UserTableTableReferences(
                                db,
                                table,
                                p0,
                              ).purchaseTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.createdBy == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (paymentTableRefs)
                        await $_getPrefetchedData<
                          UserTableData,
                          $UserTableTable,
                          PaymentTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UserTableTableReferences
                              ._paymentTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UserTableTableReferences(
                                db,
                                table,
                                p0,
                              ).paymentTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.createdBy == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (expenseTableRefs)
                        await $_getPrefetchedData<
                          UserTableData,
                          $UserTableTable,
                          ExpenseTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UserTableTableReferences
                              ._expenseTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UserTableTableReferences(
                                db,
                                table,
                                p0,
                              ).expenseTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.createdBy == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (dayClosingTableRefs)
                        await $_getPrefetchedData<
                          UserTableData,
                          $UserTableTable,
                          DayClosingTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UserTableTableReferences
                              ._dayClosingTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UserTableTableReferences(
                                db,
                                table,
                                p0,
                              ).dayClosingTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.closedBy == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (activityLogTableRefs)
                        await $_getPrefetchedData<
                          UserTableData,
                          $UserTableTable,
                          ActivityLogTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UserTableTableReferences
                              ._activityLogTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UserTableTableReferences(
                                db,
                                table,
                                p0,
                              ).activityLogTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$UserTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserTableTable,
      UserTableData,
      $$UserTableTableFilterComposer,
      $$UserTableTableOrderingComposer,
      $$UserTableTableAnnotationComposer,
      $$UserTableTableCreateCompanionBuilder,
      $$UserTableTableUpdateCompanionBuilder,
      (UserTableData, $$UserTableTableReferences),
      UserTableData,
      PrefetchHooks Function({
        bool shopId,
        bool stockMovementTableRefs,
        bool saleTableRefs,
        bool purchaseTableRefs,
        bool paymentTableRefs,
        bool expenseTableRefs,
        bool dayClosingTableRefs,
        bool activityLogTableRefs,
      })
    >;
typedef $$CategoryTableTableCreateCompanionBuilder =
    CategoryTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String name,
      Value<int> rowid,
    });
typedef $$CategoryTableTableUpdateCompanionBuilder =
    CategoryTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> name,
      Value<int> rowid,
    });

final class $$CategoryTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $CategoryTableTable, CategoryTableData> {
  $$CategoryTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$ProductTableTable, List<ProductTableData>>
  _productTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.productTable,
    aliasName: 'category__id__product__category_id',
  );

  $$ProductTableTableProcessedTableManager get productTableRefs {
    final manager = $$ProductTableTableTableManager(
      $_db,
      $_db.productTable,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_productTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoryTableTableFilterComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> productTableRefs(
    Expression<bool> Function($$ProductTableTableFilterComposer f) f,
  ) {
    final $$ProductTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableFilterComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> productTableRefs<T extends Object>(
    Expression<T> Function($$ProductTableTableAnnotationComposer a) f,
  ) {
    final $$ProductTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableAnnotationComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoryTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoryTableTable,
          CategoryTableData,
          $$CategoryTableTableFilterComposer,
          $$CategoryTableTableOrderingComposer,
          $$CategoryTableTableAnnotationComposer,
          $$CategoryTableTableCreateCompanionBuilder,
          $$CategoryTableTableUpdateCompanionBuilder,
          (CategoryTableData, $$CategoryTableTableReferences),
          CategoryTableData,
          PrefetchHooks Function({bool productTableRefs})
        > {
  $$CategoryTableTableTableManager(_$AppDatabase db, $CategoryTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoryTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String name,
                Value<int> rowid = const Value.absent(),
              }) => CategoryTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CategoryTableTable, CategoryTableData>(table),
                  $$CategoryTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (productTableRefs) db.productTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productTableRefs)
                    await $_getPrefetchedData<
                      CategoryTableData,
                      $CategoryTableTable,
                      ProductTableData
                    >(
                      currentTable: table,
                      referencedTable: $$CategoryTableTableReferences
                          ._productTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CategoryTableTableReferences(
                            db,
                            table,
                            p0,
                          ).productTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.categoryId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CategoryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoryTableTable,
      CategoryTableData,
      $$CategoryTableTableFilterComposer,
      $$CategoryTableTableOrderingComposer,
      $$CategoryTableTableAnnotationComposer,
      $$CategoryTableTableCreateCompanionBuilder,
      $$CategoryTableTableUpdateCompanionBuilder,
      (CategoryTableData, $$CategoryTableTableReferences),
      CategoryTableData,
      PrefetchHooks Function({bool productTableRefs})
    >;
typedef $$UnitTableTableCreateCompanionBuilder = UnitTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  required String shopId,
  required String name,
  Value<int> rowid,
});
typedef $$UnitTableTableUpdateCompanionBuilder = UnitTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  Value<String> shopId,
  Value<String> name,
  Value<int> rowid,
});

final class $$UnitTableTableReferences
    extends BaseReferences<_$AppDatabase, $UnitTableTable, UnitTableData> {
  $$UnitTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ProductTableTable, List<ProductTableData>>
  _productTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.productTable,
    aliasName: 'unit__id__product__base_unit_id',
  );

  $$ProductTableTableProcessedTableManager get productTableRefs {
    final manager = $$ProductTableTableTableManager(
      $_db,
      $_db.productTable,
    ).filter((f) => f.baseUnitId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_productTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $ProductUnitConversionTableTable,
    List<ProductUnitConversionTableData>
  >
  _productUnitConversionTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.productUnitConversionTable,
        aliasName: 'unit__id__product_unit_conversion__unit_id',
      );

  $$ProductUnitConversionTableTableProcessedTableManager
  get productUnitConversionTableRefs {
    final manager = $$ProductUnitConversionTableTableTableManager(
      $_db,
      $_db.productUnitConversionTable,
    ).filter((f) => f.unitId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _productUnitConversionTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SaleItemTableTable, List<SaleItemTableData>>
  _saleItemTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.saleItemTable,
    aliasName: 'unit__id__sale_item__unit_id',
  );

  $$SaleItemTableTableProcessedTableManager get saleItemTableRefs {
    final manager = $$SaleItemTableTableTableManager(
      $_db,
      $_db.saleItemTable,
    ).filter((f) => f.unitId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_saleItemTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $PurchaseItemTableTable,
    List<PurchaseItemTableData>
  >
  _purchaseItemTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.purchaseItemTable,
        aliasName: 'unit__id__purchase_item__unit_id',
      );

  $$PurchaseItemTableTableProcessedTableManager get purchaseItemTableRefs {
    final manager = $$PurchaseItemTableTableTableManager(
      $_db,
      $_db.purchaseItemTable,
    ).filter((f) => f.unitId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _purchaseItemTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$UnitTableTableFilterComposer
    extends Composer<_$AppDatabase, $UnitTableTable> {
  $$UnitTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> productTableRefs(
    Expression<bool> Function($$ProductTableTableFilterComposer f) f,
  ) {
    final $$ProductTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.baseUnitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableFilterComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> productUnitConversionTableRefs(
    Expression<bool> Function($$ProductUnitConversionTableTableFilterComposer f)
    f,
  ) {
    final $$ProductUnitConversionTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productUnitConversionTable,
          getReferencedColumn: (t) => t.unitId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductUnitConversionTableTableFilterComposer(
                $db: $db,
                $table: $db.productUnitConversionTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<bool> saleItemTableRefs(
    Expression<bool> Function($$SaleItemTableTableFilterComposer f) f,
  ) {
    final $$SaleItemTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItemTable,
      getReferencedColumn: (t) => t.unitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemTableTableFilterComposer(
            $db: $db,
            $table: $db.saleItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> purchaseItemTableRefs(
    Expression<bool> Function($$PurchaseItemTableTableFilterComposer f) f,
  ) {
    final $$PurchaseItemTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.purchaseItemTable,
      getReferencedColumn: (t) => t.unitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseItemTableTableFilterComposer(
            $db: $db,
            $table: $db.purchaseItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UnitTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UnitTableTable> {
  $$UnitTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UnitTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UnitTableTable> {
  $$UnitTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> productTableRefs<T extends Object>(
    Expression<T> Function($$ProductTableTableAnnotationComposer a) f,
  ) {
    final $$ProductTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.baseUnitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableAnnotationComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> productUnitConversionTableRefs<T extends Object>(
    Expression<T> Function(
      $$ProductUnitConversionTableTableAnnotationComposer a,
    )
    f,
  ) {
    final $$ProductUnitConversionTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productUnitConversionTable,
          getReferencedColumn: (t) => t.unitId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductUnitConversionTableTableAnnotationComposer(
                $db: $db,
                $table: $db.productUnitConversionTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> saleItemTableRefs<T extends Object>(
    Expression<T> Function($$SaleItemTableTableAnnotationComposer a) f,
  ) {
    final $$SaleItemTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItemTable,
      getReferencedColumn: (t) => t.unitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemTableTableAnnotationComposer(
            $db: $db,
            $table: $db.saleItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> purchaseItemTableRefs<T extends Object>(
    Expression<T> Function($$PurchaseItemTableTableAnnotationComposer a) f,
  ) {
    final $$PurchaseItemTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.purchaseItemTable,
          getReferencedColumn: (t) => t.unitId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PurchaseItemTableTableAnnotationComposer(
                $db: $db,
                $table: $db.purchaseItemTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$UnitTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UnitTableTable,
          UnitTableData,
          $$UnitTableTableFilterComposer,
          $$UnitTableTableOrderingComposer,
          $$UnitTableTableAnnotationComposer,
          $$UnitTableTableCreateCompanionBuilder,
          $$UnitTableTableUpdateCompanionBuilder,
          (UnitTableData, $$UnitTableTableReferences),
          UnitTableData,
          PrefetchHooks Function({
            bool productTableRefs,
            bool productUnitConversionTableRefs,
            bool saleItemTableRefs,
            bool purchaseItemTableRefs,
          })
        > {
  $$UnitTableTableTableManager(_$AppDatabase db, $UnitTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UnitTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UnitTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UnitTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UnitTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String name,
                Value<int> rowid = const Value.absent(),
              }) => UnitTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UnitTableTable, UnitTableData>(table),
                  $$UnitTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                productTableRefs = false,
                productUnitConversionTableRefs = false,
                saleItemTableRefs = false,
                purchaseItemTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (productTableRefs) db.productTable,
                    if (productUnitConversionTableRefs)
                      db.productUnitConversionTable,
                    if (saleItemTableRefs) db.saleItemTable,
                    if (purchaseItemTableRefs) db.purchaseItemTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (productTableRefs)
                        await $_getPrefetchedData<
                          UnitTableData,
                          $UnitTableTable,
                          ProductTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UnitTableTableReferences
                              ._productTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UnitTableTableReferences(
                                db,
                                table,
                                p0,
                              ).productTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.baseUnitId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (productUnitConversionTableRefs)
                        await $_getPrefetchedData<
                          UnitTableData,
                          $UnitTableTable,
                          ProductUnitConversionTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UnitTableTableReferences
                              ._productUnitConversionTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UnitTableTableReferences(
                                db,
                                table,
                                p0,
                              ).productUnitConversionTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.unitId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (saleItemTableRefs)
                        await $_getPrefetchedData<
                          UnitTableData,
                          $UnitTableTable,
                          SaleItemTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UnitTableTableReferences
                              ._saleItemTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UnitTableTableReferences(
                                db,
                                table,
                                p0,
                              ).saleItemTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.unitId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (purchaseItemTableRefs)
                        await $_getPrefetchedData<
                          UnitTableData,
                          $UnitTableTable,
                          PurchaseItemTableData
                        >(
                          currentTable: table,
                          referencedTable: $$UnitTableTableReferences
                              ._purchaseItemTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UnitTableTableReferences(
                                db,
                                table,
                                p0,
                              ).purchaseItemTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.unitId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$UnitTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UnitTableTable,
      UnitTableData,
      $$UnitTableTableFilterComposer,
      $$UnitTableTableOrderingComposer,
      $$UnitTableTableAnnotationComposer,
      $$UnitTableTableCreateCompanionBuilder,
      $$UnitTableTableUpdateCompanionBuilder,
      (UnitTableData, $$UnitTableTableReferences),
      UnitTableData,
      PrefetchHooks Function({
        bool productTableRefs,
        bool productUnitConversionTableRefs,
        bool saleItemTableRefs,
        bool purchaseItemTableRefs,
      })
    >;
typedef $$ProductTableTableCreateCompanionBuilder =
    ProductTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      Value<String?> categoryId,
      required String name,
      Value<String?> nameUrdu,
      Value<String?> brand,
      Value<String?> baseUnitId,
      Value<int> hasVariants,
      Value<int> trackExpiry,
      Value<double> lowStockLevel,
      Value<int> isActive,
      Value<int> rowid,
    });
typedef $$ProductTableTableUpdateCompanionBuilder =
    ProductTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String?> categoryId,
      Value<String> name,
      Value<String?> nameUrdu,
      Value<String?> brand,
      Value<String?> baseUnitId,
      Value<int> hasVariants,
      Value<int> trackExpiry,
      Value<double> lowStockLevel,
      Value<int> isActive,
      Value<int> rowid,
    });

final class $$ProductTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $ProductTableTable, ProductTableData> {
  $$ProductTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoryTableTable _categoryIdTable(_$AppDatabase db) =>
      db.categoryTable.createAlias('product__category_id__category__id');

  $$CategoryTableTableProcessedTableManager? get categoryId {
    final $_column = $_itemColumn<String>('category_id');
    if ($_column == null) return null;
    final manager = $$CategoryTableTableTableManager(
      $_db,
      $_db.categoryTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $UnitTableTable _baseUnitIdTable(_$AppDatabase db) =>
      db.unitTable.createAlias('product__base_unit_id__unit__id');

  $$UnitTableTableProcessedTableManager? get baseUnitId {
    final $_column = $_itemColumn<String>('base_unit_id');
    if ($_column == null) return null;
    final manager = $$UnitTableTableTableManager(
      $_db,
      $_db.unitTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_baseUnitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $ProductVariantTableTable,
    List<ProductVariantTableData>
  >
  _productVariantTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.productVariantTable,
        aliasName: 'product__id__product_variant__product_id',
      );

  $$ProductVariantTableTableProcessedTableManager get productVariantTableRefs {
    final manager = $$ProductVariantTableTableTableManager(
      $_db,
      $_db.productVariantTable,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _productVariantTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $ProductUnitConversionTableTable,
    List<ProductUnitConversionTableData>
  >
  _productUnitConversionTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.productUnitConversionTable,
        aliasName: 'product__id__product_unit_conversion__product_id',
      );

  $$ProductUnitConversionTableTableProcessedTableManager
  get productUnitConversionTableRefs {
    final manager = $$ProductUnitConversionTableTableTableManager(
      $_db,
      $_db.productUnitConversionTable,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _productUnitConversionTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProductTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameUrdu => $composableBuilder(
    column: $table.nameUrdu,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hasVariants => $composableBuilder(
    column: $table.hasVariants,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get trackExpiry => $composableBuilder(
    column: $table.trackExpiry,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lowStockLevel => $composableBuilder(
    column: $table.lowStockLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoryTableTableFilterComposer get categoryId {
    final $$CategoryTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoryTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableTableFilterComposer(
            $db: $db,
            $table: $db.categoryTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableFilterComposer get baseUnitId {
    final $$UnitTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.baseUnitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableFilterComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> productVariantTableRefs(
    Expression<bool> Function($$ProductVariantTableTableFilterComposer f) f,
  ) {
    final $$ProductVariantTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.productVariantTable,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductVariantTableTableFilterComposer(
            $db: $db,
            $table: $db.productVariantTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> productUnitConversionTableRefs(
    Expression<bool> Function($$ProductUnitConversionTableTableFilterComposer f)
    f,
  ) {
    final $$ProductUnitConversionTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productUnitConversionTable,
          getReferencedColumn: (t) => t.productId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductUnitConversionTableTableFilterComposer(
                $db: $db,
                $table: $db.productUnitConversionTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$ProductTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameUrdu => $composableBuilder(
    column: $table.nameUrdu,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hasVariants => $composableBuilder(
    column: $table.hasVariants,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get trackExpiry => $composableBuilder(
    column: $table.trackExpiry,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lowStockLevel => $composableBuilder(
    column: $table.lowStockLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoryTableTableOrderingComposer get categoryId {
    final $$CategoryTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoryTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableTableOrderingComposer(
            $db: $db,
            $table: $db.categoryTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableOrderingComposer get baseUnitId {
    final $$UnitTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.baseUnitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableOrderingComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nameUrdu =>
      $composableBuilder(column: $table.nameUrdu, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<int> get hasVariants => $composableBuilder(
    column: $table.hasVariants,
    builder: (column) => column,
  );

  GeneratedColumn<int> get trackExpiry => $composableBuilder(
    column: $table.trackExpiry,
    builder: (column) => column,
  );

  GeneratedColumn<double> get lowStockLevel => $composableBuilder(
    column: $table.lowStockLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  $$CategoryTableTableAnnotationComposer get categoryId {
    final $$CategoryTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoryTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableTableAnnotationComposer(
            $db: $db,
            $table: $db.categoryTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableAnnotationComposer get baseUnitId {
    final $$UnitTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.baseUnitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableAnnotationComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> productVariantTableRefs<T extends Object>(
    Expression<T> Function($$ProductVariantTableTableAnnotationComposer a) f,
  ) {
    final $$ProductVariantTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productVariantTable,
          getReferencedColumn: (t) => t.productId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductVariantTableTableAnnotationComposer(
                $db: $db,
                $table: $db.productVariantTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> productUnitConversionTableRefs<T extends Object>(
    Expression<T> Function(
      $$ProductUnitConversionTableTableAnnotationComposer a,
    )
    f,
  ) {
    final $$ProductUnitConversionTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productUnitConversionTable,
          getReferencedColumn: (t) => t.productId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductUnitConversionTableTableAnnotationComposer(
                $db: $db,
                $table: $db.productUnitConversionTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$ProductTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductTableTable,
          ProductTableData,
          $$ProductTableTableFilterComposer,
          $$ProductTableTableOrderingComposer,
          $$ProductTableTableAnnotationComposer,
          $$ProductTableTableCreateCompanionBuilder,
          $$ProductTableTableUpdateCompanionBuilder,
          (ProductTableData, $$ProductTableTableReferences),
          ProductTableData,
          PrefetchHooks Function({
            bool categoryId,
            bool baseUnitId,
            bool productVariantTableRefs,
            bool productUnitConversionTableRefs,
          })
        > {
  $$ProductTableTableTableManager(_$AppDatabase db, $ProductTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String?> categoryId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> nameUrdu = const Value.absent(),
                Value<String?> brand = const Value.absent(),
                Value<String?> baseUnitId = const Value.absent(),
                Value<int> hasVariants = const Value.absent(),
                Value<int> trackExpiry = const Value.absent(),
                Value<double> lowStockLevel = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                categoryId: categoryId,
                name: name,
                nameUrdu: nameUrdu,
                brand: brand,
                baseUnitId: baseUnitId,
                hasVariants: hasVariants,
                trackExpiry: trackExpiry,
                lowStockLevel: lowStockLevel,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                Value<String?> categoryId = const Value.absent(),
                required String name,
                Value<String?> nameUrdu = const Value.absent(),
                Value<String?> brand = const Value.absent(),
                Value<String?> baseUnitId = const Value.absent(),
                Value<int> hasVariants = const Value.absent(),
                Value<int> trackExpiry = const Value.absent(),
                Value<double> lowStockLevel = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                categoryId: categoryId,
                name: name,
                nameUrdu: nameUrdu,
                brand: brand,
                baseUnitId: baseUnitId,
                hasVariants: hasVariants,
                trackExpiry: trackExpiry,
                lowStockLevel: lowStockLevel,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ProductTableTable, ProductTableData>(table),
                  $$ProductTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                categoryId = false,
                baseUnitId = false,
                productVariantTableRefs = false,
                productUnitConversionTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (productVariantTableRefs) db.productVariantTable,
                    if (productUnitConversionTableRefs)
                      db.productUnitConversionTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (categoryId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.categoryId,
                            referencedTable: $$ProductTableTableReferences
                                ._categoryIdTable(db),
                            referencedColumn: $$ProductTableTableReferences
                                ._categoryIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (baseUnitId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.baseUnitId,
                            referencedTable: $$ProductTableTableReferences
                                ._baseUnitIdTable(db),
                            referencedColumn: $$ProductTableTableReferences
                                ._baseUnitIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (productVariantTableRefs)
                        await $_getPrefetchedData<
                          ProductTableData,
                          $ProductTableTable,
                          ProductVariantTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ProductTableTableReferences
                              ._productVariantTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductTableTableReferences(
                                db,
                                table,
                                p0,
                              ).productVariantTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.productId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (productUnitConversionTableRefs)
                        await $_getPrefetchedData<
                          ProductTableData,
                          $ProductTableTable,
                          ProductUnitConversionTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ProductTableTableReferences
                              ._productUnitConversionTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductTableTableReferences(
                                db,
                                table,
                                p0,
                              ).productUnitConversionTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.productId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ProductTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductTableTable,
      ProductTableData,
      $$ProductTableTableFilterComposer,
      $$ProductTableTableOrderingComposer,
      $$ProductTableTableAnnotationComposer,
      $$ProductTableTableCreateCompanionBuilder,
      $$ProductTableTableUpdateCompanionBuilder,
      (ProductTableData, $$ProductTableTableReferences),
      ProductTableData,
      PrefetchHooks Function({
        bool categoryId,
        bool baseUnitId,
        bool productVariantTableRefs,
        bool productUnitConversionTableRefs,
      })
    >;
typedef $$ProductVariantTableTableCreateCompanionBuilder =
    ProductVariantTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String productId,
      Value<String?> barcode,
      Value<String?> sku,
      Value<String?> size,
      Value<String?> color,
      Value<double> purchasePrice,
      Value<double> salePrice,
      Value<int> rowid,
    });
typedef $$ProductVariantTableTableUpdateCompanionBuilder =
    ProductVariantTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> productId,
      Value<String?> barcode,
      Value<String?> sku,
      Value<String?> size,
      Value<String?> color,
      Value<double> purchasePrice,
      Value<double> salePrice,
      Value<int> rowid,
    });

final class $$ProductVariantTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ProductVariantTableTable,
          ProductVariantTableData
        > {
  $$ProductVariantTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProductTableTable _productIdTable(_$AppDatabase db) =>
      db.productTable.createAlias('product_variant__product_id__product__id');

  $$ProductTableTableProcessedTableManager get productId {
    final $_column = $_itemColumn<String>('product_id')!;

    final manager = $$ProductTableTableTableManager(
      $_db,
      $_db.productTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $StockMovementTableTable,
    List<StockMovementTableData>
  >
  _stockMovementTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.stockMovementTable,
        aliasName: 'product_variant__id__stock_movement__variant_id',
      );

  $$StockMovementTableTableProcessedTableManager get stockMovementTableRefs {
    final manager = $$StockMovementTableTableTableManager(
      $_db,
      $_db.stockMovementTable,
    ).filter((f) => f.variantId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _stockMovementTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SaleItemTableTable, List<SaleItemTableData>>
  _saleItemTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.saleItemTable,
    aliasName: 'product_variant__id__sale_item__variant_id',
  );

  $$SaleItemTableTableProcessedTableManager get saleItemTableRefs {
    final manager = $$SaleItemTableTableTableManager(
      $_db,
      $_db.saleItemTable,
    ).filter((f) => f.variantId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_saleItemTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $PurchaseItemTableTable,
    List<PurchaseItemTableData>
  >
  _purchaseItemTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.purchaseItemTable,
        aliasName: 'product_variant__id__purchase_item__variant_id',
      );

  $$PurchaseItemTableTableProcessedTableManager get purchaseItemTableRefs {
    final manager = $$PurchaseItemTableTableTableManager(
      $_db,
      $_db.purchaseItemTable,
    ).filter((f) => f.variantId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _purchaseItemTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProductVariantTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProductVariantTableTable> {
  $$ProductVariantTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sku => $composableBuilder(
    column: $table.sku,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get purchasePrice => $composableBuilder(
    column: $table.purchasePrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get salePrice => $composableBuilder(
    column: $table.salePrice,
    builder: (column) => ColumnFilters(column),
  );

  $$ProductTableTableFilterComposer get productId {
    final $$ProductTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableFilterComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> stockMovementTableRefs(
    Expression<bool> Function($$StockMovementTableTableFilterComposer f) f,
  ) {
    final $$StockMovementTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stockMovementTable,
      getReferencedColumn: (t) => t.variantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StockMovementTableTableFilterComposer(
            $db: $db,
            $table: $db.stockMovementTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> saleItemTableRefs(
    Expression<bool> Function($$SaleItemTableTableFilterComposer f) f,
  ) {
    final $$SaleItemTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItemTable,
      getReferencedColumn: (t) => t.variantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemTableTableFilterComposer(
            $db: $db,
            $table: $db.saleItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> purchaseItemTableRefs(
    Expression<bool> Function($$PurchaseItemTableTableFilterComposer f) f,
  ) {
    final $$PurchaseItemTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.purchaseItemTable,
      getReferencedColumn: (t) => t.variantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseItemTableTableFilterComposer(
            $db: $db,
            $table: $db.purchaseItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProductVariantTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductVariantTableTable> {
  $$ProductVariantTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sku => $composableBuilder(
    column: $table.sku,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get purchasePrice => $composableBuilder(
    column: $table.purchasePrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get salePrice => $composableBuilder(
    column: $table.salePrice,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProductTableTableOrderingComposer get productId {
    final $$ProductTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableOrderingComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductVariantTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductVariantTableTable> {
  $$ProductVariantTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);

  GeneratedColumn<String> get sku =>
      $composableBuilder(column: $table.sku, builder: (column) => column);

  GeneratedColumn<String> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<double> get purchasePrice => $composableBuilder(
    column: $table.purchasePrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get salePrice =>
      $composableBuilder(column: $table.salePrice, builder: (column) => column);

  $$ProductTableTableAnnotationComposer get productId {
    final $$ProductTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableAnnotationComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> stockMovementTableRefs<T extends Object>(
    Expression<T> Function($$StockMovementTableTableAnnotationComposer a) f,
  ) {
    final $$StockMovementTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.stockMovementTable,
          getReferencedColumn: (t) => t.variantId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$StockMovementTableTableAnnotationComposer(
                $db: $db,
                $table: $db.stockMovementTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> saleItemTableRefs<T extends Object>(
    Expression<T> Function($$SaleItemTableTableAnnotationComposer a) f,
  ) {
    final $$SaleItemTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItemTable,
      getReferencedColumn: (t) => t.variantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemTableTableAnnotationComposer(
            $db: $db,
            $table: $db.saleItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> purchaseItemTableRefs<T extends Object>(
    Expression<T> Function($$PurchaseItemTableTableAnnotationComposer a) f,
  ) {
    final $$PurchaseItemTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.purchaseItemTable,
          getReferencedColumn: (t) => t.variantId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PurchaseItemTableTableAnnotationComposer(
                $db: $db,
                $table: $db.purchaseItemTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$ProductVariantTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductVariantTableTable,
          ProductVariantTableData,
          $$ProductVariantTableTableFilterComposer,
          $$ProductVariantTableTableOrderingComposer,
          $$ProductVariantTableTableAnnotationComposer,
          $$ProductVariantTableTableCreateCompanionBuilder,
          $$ProductVariantTableTableUpdateCompanionBuilder,
          (ProductVariantTableData, $$ProductVariantTableTableReferences),
          ProductVariantTableData,
          PrefetchHooks Function({
            bool productId,
            bool stockMovementTableRefs,
            bool saleItemTableRefs,
            bool purchaseItemTableRefs,
          })
        > {
  $$ProductVariantTableTableTableManager(
    _$AppDatabase db,
    $ProductVariantTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductVariantTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductVariantTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ProductVariantTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<String?> barcode = const Value.absent(),
                Value<String?> sku = const Value.absent(),
                Value<String?> size = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<double> purchasePrice = const Value.absent(),
                Value<double> salePrice = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductVariantTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                productId: productId,
                barcode: barcode,
                sku: sku,
                size: size,
                color: color,
                purchasePrice: purchasePrice,
                salePrice: salePrice,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String productId,
                Value<String?> barcode = const Value.absent(),
                Value<String?> sku = const Value.absent(),
                Value<String?> size = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<double> purchasePrice = const Value.absent(),
                Value<double> salePrice = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductVariantTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                productId: productId,
                barcode: barcode,
                sku: sku,
                size: size,
                color: color,
                purchasePrice: purchasePrice,
                salePrice: salePrice,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<
                    $ProductVariantTableTable,
                    ProductVariantTableData
                  >(table),
                  $$ProductVariantTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                productId = false,
                stockMovementTableRefs = false,
                saleItemTableRefs = false,
                purchaseItemTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (stockMovementTableRefs) db.stockMovementTable,
                    if (saleItemTableRefs) db.saleItemTable,
                    if (purchaseItemTableRefs) db.purchaseItemTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (productId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.productId,
                            referencedTable:
                                $$ProductVariantTableTableReferences
                                    ._productIdTable(db),
                            referencedColumn:
                                $$ProductVariantTableTableReferences
                                    ._productIdTable(db)
                                    .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (stockMovementTableRefs)
                        await $_getPrefetchedData<
                          ProductVariantTableData,
                          $ProductVariantTableTable,
                          StockMovementTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ProductVariantTableTableReferences
                              ._stockMovementTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductVariantTableTableReferences(
                                db,
                                table,
                                p0,
                              ).stockMovementTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.variantId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (saleItemTableRefs)
                        await $_getPrefetchedData<
                          ProductVariantTableData,
                          $ProductVariantTableTable,
                          SaleItemTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ProductVariantTableTableReferences
                              ._saleItemTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductVariantTableTableReferences(
                                db,
                                table,
                                p0,
                              ).saleItemTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.variantId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (purchaseItemTableRefs)
                        await $_getPrefetchedData<
                          ProductVariantTableData,
                          $ProductVariantTableTable,
                          PurchaseItemTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ProductVariantTableTableReferences
                              ._purchaseItemTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductVariantTableTableReferences(
                                db,
                                table,
                                p0,
                              ).purchaseItemTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.variantId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ProductVariantTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductVariantTableTable,
      ProductVariantTableData,
      $$ProductVariantTableTableFilterComposer,
      $$ProductVariantTableTableOrderingComposer,
      $$ProductVariantTableTableAnnotationComposer,
      $$ProductVariantTableTableCreateCompanionBuilder,
      $$ProductVariantTableTableUpdateCompanionBuilder,
      (ProductVariantTableData, $$ProductVariantTableTableReferences),
      ProductVariantTableData,
      PrefetchHooks Function({
        bool productId,
        bool stockMovementTableRefs,
        bool saleItemTableRefs,
        bool purchaseItemTableRefs,
      })
    >;
typedef $$ProductUnitConversionTableTableCreateCompanionBuilder =
    ProductUnitConversionTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String productId,
      required String unitId,
      required double factorToBase,
      Value<double?> salePrice,
      Value<int> rowid,
    });
typedef $$ProductUnitConversionTableTableUpdateCompanionBuilder =
    ProductUnitConversionTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> productId,
      Value<String> unitId,
      Value<double> factorToBase,
      Value<double?> salePrice,
      Value<int> rowid,
    });

final class $$ProductUnitConversionTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ProductUnitConversionTableTable,
          ProductUnitConversionTableData
        > {
  $$ProductUnitConversionTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProductTableTable _productIdTable(_$AppDatabase db) => db.productTable
      .createAlias('product_unit_conversion__product_id__product__id');

  $$ProductTableTableProcessedTableManager get productId {
    final $_column = $_itemColumn<String>('product_id')!;

    final manager = $$ProductTableTableTableManager(
      $_db,
      $_db.productTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $UnitTableTable _unitIdTable(_$AppDatabase db) =>
      db.unitTable.createAlias('product_unit_conversion__unit_id__unit__id');

  $$UnitTableTableProcessedTableManager get unitId {
    final $_column = $_itemColumn<String>('unit_id')!;

    final manager = $$UnitTableTableTableManager(
      $_db,
      $_db.unitTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_unitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ProductUnitConversionTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProductUnitConversionTableTable> {
  $$ProductUnitConversionTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get factorToBase => $composableBuilder(
    column: $table.factorToBase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get salePrice => $composableBuilder(
    column: $table.salePrice,
    builder: (column) => ColumnFilters(column),
  );

  $$ProductTableTableFilterComposer get productId {
    final $$ProductTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableFilterComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableFilterComposer get unitId {
    final $$UnitTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableFilterComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductUnitConversionTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductUnitConversionTableTable> {
  $$ProductUnitConversionTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get factorToBase => $composableBuilder(
    column: $table.factorToBase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get salePrice => $composableBuilder(
    column: $table.salePrice,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProductTableTableOrderingComposer get productId {
    final $$ProductTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableOrderingComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableOrderingComposer get unitId {
    final $$UnitTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableOrderingComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductUnitConversionTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductUnitConversionTableTable> {
  $$ProductUnitConversionTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<double> get factorToBase => $composableBuilder(
    column: $table.factorToBase,
    builder: (column) => column,
  );

  GeneratedColumn<double> get salePrice =>
      $composableBuilder(column: $table.salePrice, builder: (column) => column);

  $$ProductTableTableAnnotationComposer get productId {
    final $$ProductTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductTableTableAnnotationComposer(
            $db: $db,
            $table: $db.productTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableAnnotationComposer get unitId {
    final $$UnitTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableAnnotationComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductUnitConversionTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductUnitConversionTableTable,
          ProductUnitConversionTableData,
          $$ProductUnitConversionTableTableFilterComposer,
          $$ProductUnitConversionTableTableOrderingComposer,
          $$ProductUnitConversionTableTableAnnotationComposer,
          $$ProductUnitConversionTableTableCreateCompanionBuilder,
          $$ProductUnitConversionTableTableUpdateCompanionBuilder,
          (
            ProductUnitConversionTableData,
            $$ProductUnitConversionTableTableReferences,
          ),
          ProductUnitConversionTableData,
          PrefetchHooks Function({bool productId, bool unitId})
        > {
  $$ProductUnitConversionTableTableTableManager(
    _$AppDatabase db,
    $ProductUnitConversionTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductUnitConversionTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ProductUnitConversionTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ProductUnitConversionTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<String> unitId = const Value.absent(),
                Value<double> factorToBase = const Value.absent(),
                Value<double?> salePrice = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductUnitConversionTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                productId: productId,
                unitId: unitId,
                factorToBase: factorToBase,
                salePrice: salePrice,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String productId,
                required String unitId,
                required double factorToBase,
                Value<double?> salePrice = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductUnitConversionTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                productId: productId,
                unitId: unitId,
                factorToBase: factorToBase,
                salePrice: salePrice,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<
                    $ProductUnitConversionTableTable,
                    ProductUnitConversionTableData
                  >(table),
                  $$ProductUnitConversionTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productId = false, unitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (productId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.productId,
                        referencedTable:
                            $$ProductUnitConversionTableTableReferences
                                ._productIdTable(db),
                        referencedColumn:
                            $$ProductUnitConversionTableTableReferences
                                ._productIdTable(db)
                                .id,
                      ) as T;
                    }
                    if (unitId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.unitId,
                        referencedTable:
                            $$ProductUnitConversionTableTableReferences
                                ._unitIdTable(db),
                        referencedColumn:
                            $$ProductUnitConversionTableTableReferences
                                ._unitIdTable(db)
                                .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ProductUnitConversionTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductUnitConversionTableTable,
      ProductUnitConversionTableData,
      $$ProductUnitConversionTableTableFilterComposer,
      $$ProductUnitConversionTableTableOrderingComposer,
      $$ProductUnitConversionTableTableAnnotationComposer,
      $$ProductUnitConversionTableTableCreateCompanionBuilder,
      $$ProductUnitConversionTableTableUpdateCompanionBuilder,
      (
        ProductUnitConversionTableData,
        $$ProductUnitConversionTableTableReferences,
      ),
      ProductUnitConversionTableData,
      PrefetchHooks Function({bool productId, bool unitId})
    >;
typedef $$StockMovementTableTableCreateCompanionBuilder =
    StockMovementTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String variantId,
      required double qty,
      required String reason,
      Value<String?> refType,
      Value<String?> refId,
      Value<String?> batchNo,
      Value<String?> expiryDate,
      Value<String?> createdBy,
      required String createdAt,
      Value<int> rowid,
    });
typedef $$StockMovementTableTableUpdateCompanionBuilder =
    StockMovementTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> variantId,
      Value<double> qty,
      Value<String> reason,
      Value<String?> refType,
      Value<String?> refId,
      Value<String?> batchNo,
      Value<String?> expiryDate,
      Value<String?> createdBy,
      Value<String> createdAt,
      Value<int> rowid,
    });

final class $$StockMovementTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $StockMovementTableTable,
          StockMovementTableData
        > {
  $$StockMovementTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProductVariantTableTable _variantIdTable(_$AppDatabase db) => db
      .productVariantTable
      .createAlias('stock_movement__variant_id__product_variant__id');

  $$ProductVariantTableTableProcessedTableManager get variantId {
    final $_column = $_itemColumn<String>('variant_id')!;

    final manager = $$ProductVariantTableTableTableManager(
      $_db,
      $_db.productVariantTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_variantIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $UserTableTable _createdByTable(_$AppDatabase db) =>
      db.userTable.createAlias('stock_movement__created_by__user__id');

  $$UserTableTableProcessedTableManager? get createdBy {
    final $_column = $_itemColumn<String>('created_by');
    if ($_column == null) return null;
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_createdByTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$StockMovementTableTableFilterComposer
    extends Composer<_$AppDatabase, $StockMovementTableTable> {
  $$StockMovementTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refType => $composableBuilder(
    column: $table.refType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refId => $composableBuilder(
    column: $table.refId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get batchNo => $composableBuilder(
    column: $table.batchNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProductVariantTableTableFilterComposer get variantId {
    final $$ProductVariantTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.variantId,
      referencedTable: $db.productVariantTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductVariantTableTableFilterComposer(
            $db: $db,
            $table: $db.productVariantTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UserTableTableFilterComposer get createdBy {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StockMovementTableTableOrderingComposer
    extends Composer<_$AppDatabase, $StockMovementTableTable> {
  $$StockMovementTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refType => $composableBuilder(
    column: $table.refType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refId => $composableBuilder(
    column: $table.refId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get batchNo => $composableBuilder(
    column: $table.batchNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProductVariantTableTableOrderingComposer get variantId {
    final $$ProductVariantTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.variantId,
          referencedTable: $db.productVariantTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductVariantTableTableOrderingComposer(
                $db: $db,
                $table: $db.productVariantTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$UserTableTableOrderingComposer get createdBy {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableOrderingComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StockMovementTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $StockMovementTableTable> {
  $$StockMovementTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<double> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<String> get reason =>
      $composableBuilder(column: $table.reason, builder: (column) => column);

  GeneratedColumn<String> get refType =>
      $composableBuilder(column: $table.refType, builder: (column) => column);

  GeneratedColumn<String> get refId =>
      $composableBuilder(column: $table.refId, builder: (column) => column);

  GeneratedColumn<String> get batchNo =>
      $composableBuilder(column: $table.batchNo, builder: (column) => column);

  GeneratedColumn<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProductVariantTableTableAnnotationComposer get variantId {
    final $$ProductVariantTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.variantId,
          referencedTable: $db.productVariantTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductVariantTableTableAnnotationComposer(
                $db: $db,
                $table: $db.productVariantTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$UserTableTableAnnotationComposer get createdBy {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StockMovementTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StockMovementTableTable,
          StockMovementTableData,
          $$StockMovementTableTableFilterComposer,
          $$StockMovementTableTableOrderingComposer,
          $$StockMovementTableTableAnnotationComposer,
          $$StockMovementTableTableCreateCompanionBuilder,
          $$StockMovementTableTableUpdateCompanionBuilder,
          (StockMovementTableData, $$StockMovementTableTableReferences),
          StockMovementTableData,
          PrefetchHooks Function({bool variantId, bool createdBy})
        > {
  $$StockMovementTableTableTableManager(
    _$AppDatabase db,
    $StockMovementTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StockMovementTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StockMovementTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StockMovementTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> variantId = const Value.absent(),
                Value<double> qty = const Value.absent(),
                Value<String> reason = const Value.absent(),
                Value<String?> refType = const Value.absent(),
                Value<String?> refId = const Value.absent(),
                Value<String?> batchNo = const Value.absent(),
                Value<String?> expiryDate = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StockMovementTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                variantId: variantId,
                qty: qty,
                reason: reason,
                refType: refType,
                refId: refId,
                batchNo: batchNo,
                expiryDate: expiryDate,
                createdBy: createdBy,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String variantId,
                required double qty,
                required String reason,
                Value<String?> refType = const Value.absent(),
                Value<String?> refId = const Value.absent(),
                Value<String?> batchNo = const Value.absent(),
                Value<String?> expiryDate = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                required String createdAt,
                Value<int> rowid = const Value.absent(),
              }) => StockMovementTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                variantId: variantId,
                qty: qty,
                reason: reason,
                refType: refType,
                refId: refId,
                batchNo: batchNo,
                expiryDate: expiryDate,
                createdBy: createdBy,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$StockMovementTableTable, StockMovementTableData>(
                    table,
                  ),
                  $$StockMovementTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({variantId = false, createdBy = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (variantId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.variantId,
                        referencedTable: $$StockMovementTableTableReferences
                            ._variantIdTable(db),
                        referencedColumn: $$StockMovementTableTableReferences
                            ._variantIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (createdBy) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.createdBy,
                        referencedTable: $$StockMovementTableTableReferences
                            ._createdByTable(db),
                        referencedColumn: $$StockMovementTableTableReferences
                            ._createdByTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$StockMovementTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StockMovementTableTable,
      StockMovementTableData,
      $$StockMovementTableTableFilterComposer,
      $$StockMovementTableTableOrderingComposer,
      $$StockMovementTableTableAnnotationComposer,
      $$StockMovementTableTableCreateCompanionBuilder,
      $$StockMovementTableTableUpdateCompanionBuilder,
      (StockMovementTableData, $$StockMovementTableTableReferences),
      StockMovementTableData,
      PrefetchHooks Function({bool variantId, bool createdBy})
    >;
typedef $$CustomerTableTableCreateCompanionBuilder =
    CustomerTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String name,
      Value<String?> phone,
      Value<String?> address,
      Value<double> creditLimit,
      Value<int> rowid,
    });
typedef $$CustomerTableTableUpdateCompanionBuilder =
    CustomerTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> name,
      Value<String?> phone,
      Value<String?> address,
      Value<double> creditLimit,
      Value<int> rowid,
    });

final class $$CustomerTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $CustomerTableTable, CustomerTableData> {
  $$CustomerTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$SaleTableTable, List<SaleTableData>>
  _saleTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.saleTable,
    aliasName: 'customer__id__sale__customer_id',
  );

  $$SaleTableTableProcessedTableManager get saleTableRefs {
    final manager = $$SaleTableTableTableManager(
      $_db,
      $_db.saleTable,
    ).filter((f) => f.customerId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_saleTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CustomerTableTableFilterComposer
    extends Composer<_$AppDatabase, $CustomerTableTable> {
  $$CustomerTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get creditLimit => $composableBuilder(
    column: $table.creditLimit,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> saleTableRefs(
    Expression<bool> Function($$SaleTableTableFilterComposer f) f,
  ) {
    final $$SaleTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleTable,
      getReferencedColumn: (t) => t.customerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleTableTableFilterComposer(
            $db: $db,
            $table: $db.saleTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CustomerTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CustomerTableTable> {
  $$CustomerTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get creditLimit => $composableBuilder(
    column: $table.creditLimit,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CustomerTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CustomerTableTable> {
  $$CustomerTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<double> get creditLimit => $composableBuilder(
    column: $table.creditLimit,
    builder: (column) => column,
  );

  Expression<T> saleTableRefs<T extends Object>(
    Expression<T> Function($$SaleTableTableAnnotationComposer a) f,
  ) {
    final $$SaleTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleTable,
      getReferencedColumn: (t) => t.customerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleTableTableAnnotationComposer(
            $db: $db,
            $table: $db.saleTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CustomerTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CustomerTableTable,
          CustomerTableData,
          $$CustomerTableTableFilterComposer,
          $$CustomerTableTableOrderingComposer,
          $$CustomerTableTableAnnotationComposer,
          $$CustomerTableTableCreateCompanionBuilder,
          $$CustomerTableTableUpdateCompanionBuilder,
          (CustomerTableData, $$CustomerTableTableReferences),
          CustomerTableData,
          PrefetchHooks Function({bool saleTableRefs})
        > {
  $$CustomerTableTableTableManager(_$AppDatabase db, $CustomerTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomerTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomerTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomerTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<double> creditLimit = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CustomerTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                phone: phone,
                address: address,
                creditLimit: creditLimit,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String name,
                Value<String?> phone = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<double> creditLimit = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CustomerTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                phone: phone,
                address: address,
                creditLimit: creditLimit,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CustomerTableTable, CustomerTableData>(table),
                  $$CustomerTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({saleTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (saleTableRefs) db.saleTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (saleTableRefs)
                    await $_getPrefetchedData<
                      CustomerTableData,
                      $CustomerTableTable,
                      SaleTableData
                    >(
                      currentTable: table,
                      referencedTable: $$CustomerTableTableReferences
                          ._saleTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CustomerTableTableReferences(
                            db,
                            table,
                            p0,
                          ).saleTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.customerId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CustomerTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CustomerTableTable,
      CustomerTableData,
      $$CustomerTableTableFilterComposer,
      $$CustomerTableTableOrderingComposer,
      $$CustomerTableTableAnnotationComposer,
      $$CustomerTableTableCreateCompanionBuilder,
      $$CustomerTableTableUpdateCompanionBuilder,
      (CustomerTableData, $$CustomerTableTableReferences),
      CustomerTableData,
      PrefetchHooks Function({bool saleTableRefs})
    >;
typedef $$SupplierTableTableCreateCompanionBuilder =
    SupplierTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String name,
      Value<String?> phone,
      Value<String?> address,
      Value<int> rowid,
    });
typedef $$SupplierTableTableUpdateCompanionBuilder =
    SupplierTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> name,
      Value<String?> phone,
      Value<String?> address,
      Value<int> rowid,
    });

final class $$SupplierTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $SupplierTableTable, SupplierTableData> {
  $$SupplierTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$PurchaseTableTable, List<PurchaseTableData>>
  _purchaseTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.purchaseTable,
    aliasName: 'supplier__id__purchase__supplier_id',
  );

  $$PurchaseTableTableProcessedTableManager get purchaseTableRefs {
    final manager = $$PurchaseTableTableTableManager(
      $_db,
      $_db.purchaseTable,
    ).filter((f) => f.supplierId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_purchaseTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SupplierTableTableFilterComposer
    extends Composer<_$AppDatabase, $SupplierTableTable> {
  $$SupplierTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> purchaseTableRefs(
    Expression<bool> Function($$PurchaseTableTableFilterComposer f) f,
  ) {
    final $$PurchaseTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.purchaseTable,
      getReferencedColumn: (t) => t.supplierId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseTableTableFilterComposer(
            $db: $db,
            $table: $db.purchaseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SupplierTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SupplierTableTable> {
  $$SupplierTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SupplierTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SupplierTableTable> {
  $$SupplierTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  Expression<T> purchaseTableRefs<T extends Object>(
    Expression<T> Function($$PurchaseTableTableAnnotationComposer a) f,
  ) {
    final $$PurchaseTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.purchaseTable,
      getReferencedColumn: (t) => t.supplierId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseTableTableAnnotationComposer(
            $db: $db,
            $table: $db.purchaseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SupplierTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SupplierTableTable,
          SupplierTableData,
          $$SupplierTableTableFilterComposer,
          $$SupplierTableTableOrderingComposer,
          $$SupplierTableTableAnnotationComposer,
          $$SupplierTableTableCreateCompanionBuilder,
          $$SupplierTableTableUpdateCompanionBuilder,
          (SupplierTableData, $$SupplierTableTableReferences),
          SupplierTableData,
          PrefetchHooks Function({bool purchaseTableRefs})
        > {
  $$SupplierTableTableTableManager(_$AppDatabase db, $SupplierTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SupplierTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SupplierTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SupplierTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SupplierTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                phone: phone,
                address: address,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String name,
                Value<String?> phone = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SupplierTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                name: name,
                phone: phone,
                address: address,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SupplierTableTable, SupplierTableData>(table),
                  $$SupplierTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({purchaseTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (purchaseTableRefs) db.purchaseTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (purchaseTableRefs)
                    await $_getPrefetchedData<
                      SupplierTableData,
                      $SupplierTableTable,
                      PurchaseTableData
                    >(
                      currentTable: table,
                      referencedTable: $$SupplierTableTableReferences
                          ._purchaseTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$SupplierTableTableReferences(
                            db,
                            table,
                            p0,
                          ).purchaseTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.supplierId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SupplierTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SupplierTableTable,
      SupplierTableData,
      $$SupplierTableTableFilterComposer,
      $$SupplierTableTableOrderingComposer,
      $$SupplierTableTableAnnotationComposer,
      $$SupplierTableTableCreateCompanionBuilder,
      $$SupplierTableTableUpdateCompanionBuilder,
      (SupplierTableData, $$SupplierTableTableReferences),
      SupplierTableData,
      PrefetchHooks Function({bool purchaseTableRefs})
    >;
typedef $$SaleTableTableCreateCompanionBuilder = SaleTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  required String shopId,
  required String billNo,
  Value<String?> customerId,
  required String saleDate,
  required double subtotal,
  Value<double> discount,
  Value<double> tax,
  required double total,
  Value<double> paid,
  Value<String> status,
  Value<String?> createdBy,
  Value<int> rowid,
});
typedef $$SaleTableTableUpdateCompanionBuilder = SaleTableCompanion Function({
  Value<String> id,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> synced,
  Value<String> shopId,
  Value<String> billNo,
  Value<String?> customerId,
  Value<String> saleDate,
  Value<double> subtotal,
  Value<double> discount,
  Value<double> tax,
  Value<double> total,
  Value<double> paid,
  Value<String> status,
  Value<String?> createdBy,
  Value<int> rowid,
});

final class $$SaleTableTableReferences
    extends BaseReferences<_$AppDatabase, $SaleTableTable, SaleTableData> {
  $$SaleTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CustomerTableTable _customerIdTable(_$AppDatabase db) =>
      db.customerTable.createAlias('sale__customer_id__customer__id');

  $$CustomerTableTableProcessedTableManager? get customerId {
    final $_column = $_itemColumn<String>('customer_id');
    if ($_column == null) return null;
    final manager = $$CustomerTableTableTableManager(
      $_db,
      $_db.customerTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_customerIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $UserTableTable _createdByTable(_$AppDatabase db) =>
      db.userTable.createAlias('sale__created_by__user__id');

  $$UserTableTableProcessedTableManager? get createdBy {
    final $_column = $_itemColumn<String>('created_by');
    if ($_column == null) return null;
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_createdByTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$SaleItemTableTable, List<SaleItemTableData>>
  _saleItemTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.saleItemTable,
    aliasName: 'sale__id__sale_item__sale_id',
  );

  $$SaleItemTableTableProcessedTableManager get saleItemTableRefs {
    final manager = $$SaleItemTableTableTableManager(
      $_db,
      $_db.saleItemTable,
    ).filter((f) => f.saleId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_saleItemTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SaleTableTableFilterComposer
    extends Composer<_$AppDatabase, $SaleTableTable> {
  $$SaleTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get billNo => $composableBuilder(
    column: $table.billNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get saleDate => $composableBuilder(
    column: $table.saleDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get subtotal => $composableBuilder(
    column: $table.subtotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get tax => $composableBuilder(
    column: $table.tax,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get paid => $composableBuilder(
    column: $table.paid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  $$CustomerTableTableFilterComposer get customerId {
    final $$CustomerTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.customerId,
      referencedTable: $db.customerTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CustomerTableTableFilterComposer(
            $db: $db,
            $table: $db.customerTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UserTableTableFilterComposer get createdBy {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> saleItemTableRefs(
    Expression<bool> Function($$SaleItemTableTableFilterComposer f) f,
  ) {
    final $$SaleItemTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItemTable,
      getReferencedColumn: (t) => t.saleId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemTableTableFilterComposer(
            $db: $db,
            $table: $db.saleItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SaleTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SaleTableTable> {
  $$SaleTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get billNo => $composableBuilder(
    column: $table.billNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get saleDate => $composableBuilder(
    column: $table.saleDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get subtotal => $composableBuilder(
    column: $table.subtotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get tax => $composableBuilder(
    column: $table.tax,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get paid => $composableBuilder(
    column: $table.paid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  $$CustomerTableTableOrderingComposer get customerId {
    final $$CustomerTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.customerId,
      referencedTable: $db.customerTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CustomerTableTableOrderingComposer(
            $db: $db,
            $table: $db.customerTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UserTableTableOrderingComposer get createdBy {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableOrderingComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SaleTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SaleTableTable> {
  $$SaleTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get billNo =>
      $composableBuilder(column: $table.billNo, builder: (column) => column);

  GeneratedColumn<String> get saleDate =>
      $composableBuilder(column: $table.saleDate, builder: (column) => column);

  GeneratedColumn<double> get subtotal =>
      $composableBuilder(column: $table.subtotal, builder: (column) => column);

  GeneratedColumn<double> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<double> get tax =>
      $composableBuilder(column: $table.tax, builder: (column) => column);

  GeneratedColumn<double> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<double> get paid =>
      $composableBuilder(column: $table.paid, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$CustomerTableTableAnnotationComposer get customerId {
    final $$CustomerTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.customerId,
      referencedTable: $db.customerTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CustomerTableTableAnnotationComposer(
            $db: $db,
            $table: $db.customerTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UserTableTableAnnotationComposer get createdBy {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> saleItemTableRefs<T extends Object>(
    Expression<T> Function($$SaleItemTableTableAnnotationComposer a) f,
  ) {
    final $$SaleItemTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItemTable,
      getReferencedColumn: (t) => t.saleId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemTableTableAnnotationComposer(
            $db: $db,
            $table: $db.saleItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SaleTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SaleTableTable,
          SaleTableData,
          $$SaleTableTableFilterComposer,
          $$SaleTableTableOrderingComposer,
          $$SaleTableTableAnnotationComposer,
          $$SaleTableTableCreateCompanionBuilder,
          $$SaleTableTableUpdateCompanionBuilder,
          (SaleTableData, $$SaleTableTableReferences),
          SaleTableData,
          PrefetchHooks Function({
            bool customerId,
            bool createdBy,
            bool saleItemTableRefs,
          })
        > {
  $$SaleTableTableTableManager(_$AppDatabase db, $SaleTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SaleTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SaleTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SaleTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> billNo = const Value.absent(),
                Value<String?> customerId = const Value.absent(),
                Value<String> saleDate = const Value.absent(),
                Value<double> subtotal = const Value.absent(),
                Value<double> discount = const Value.absent(),
                Value<double> tax = const Value.absent(),
                Value<double> total = const Value.absent(),
                Value<double> paid = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SaleTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                billNo: billNo,
                customerId: customerId,
                saleDate: saleDate,
                subtotal: subtotal,
                discount: discount,
                tax: tax,
                total: total,
                paid: paid,
                status: status,
                createdBy: createdBy,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String billNo,
                Value<String?> customerId = const Value.absent(),
                required String saleDate,
                required double subtotal,
                Value<double> discount = const Value.absent(),
                Value<double> tax = const Value.absent(),
                required double total,
                Value<double> paid = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SaleTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                billNo: billNo,
                customerId: customerId,
                saleDate: saleDate,
                subtotal: subtotal,
                discount: discount,
                tax: tax,
                total: total,
                paid: paid,
                status: status,
                createdBy: createdBy,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SaleTableTable, SaleTableData>(table),
                  $$SaleTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                customerId = false,
                createdBy = false,
                saleItemTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (saleItemTableRefs) db.saleItemTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (customerId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.customerId,
                            referencedTable: $$SaleTableTableReferences
                                ._customerIdTable(db),
                            referencedColumn: $$SaleTableTableReferences
                                ._customerIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (createdBy) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.createdBy,
                            referencedTable: $$SaleTableTableReferences
                                ._createdByTable(db),
                            referencedColumn: $$SaleTableTableReferences
                                ._createdByTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (saleItemTableRefs)
                        await $_getPrefetchedData<
                          SaleTableData,
                          $SaleTableTable,
                          SaleItemTableData
                        >(
                          currentTable: table,
                          referencedTable: $$SaleTableTableReferences
                              ._saleItemTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SaleTableTableReferences(
                                db,
                                table,
                                p0,
                              ).saleItemTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.saleId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$SaleTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SaleTableTable,
      SaleTableData,
      $$SaleTableTableFilterComposer,
      $$SaleTableTableOrderingComposer,
      $$SaleTableTableAnnotationComposer,
      $$SaleTableTableCreateCompanionBuilder,
      $$SaleTableTableUpdateCompanionBuilder,
      (SaleTableData, $$SaleTableTableReferences),
      SaleTableData,
      PrefetchHooks Function({
        bool customerId,
        bool createdBy,
        bool saleItemTableRefs,
      })
    >;
typedef $$SaleItemTableTableCreateCompanionBuilder =
    SaleItemTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String saleId,
      required String variantId,
      required double qty,
      Value<String?> unitId,
      required double unitPrice,
      Value<double> costPrice,
      Value<double> discount,
      required double lineTotal,
      Value<int> rowid,
    });
typedef $$SaleItemTableTableUpdateCompanionBuilder =
    SaleItemTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> saleId,
      Value<String> variantId,
      Value<double> qty,
      Value<String?> unitId,
      Value<double> unitPrice,
      Value<double> costPrice,
      Value<double> discount,
      Value<double> lineTotal,
      Value<int> rowid,
    });

final class $$SaleItemTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $SaleItemTableTable, SaleItemTableData> {
  $$SaleItemTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SaleTableTable _saleIdTable(_$AppDatabase db) =>
      db.saleTable.createAlias('sale_item__sale_id__sale__id');

  $$SaleTableTableProcessedTableManager get saleId {
    final $_column = $_itemColumn<String>('sale_id')!;

    final manager = $$SaleTableTableTableManager(
      $_db,
      $_db.saleTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_saleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProductVariantTableTable _variantIdTable(_$AppDatabase db) => db
      .productVariantTable
      .createAlias('sale_item__variant_id__product_variant__id');

  $$ProductVariantTableTableProcessedTableManager get variantId {
    final $_column = $_itemColumn<String>('variant_id')!;

    final manager = $$ProductVariantTableTableTableManager(
      $_db,
      $_db.productVariantTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_variantIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $UnitTableTable _unitIdTable(_$AppDatabase db) =>
      db.unitTable.createAlias('sale_item__unit_id__unit__id');

  $$UnitTableTableProcessedTableManager? get unitId {
    final $_column = $_itemColumn<String>('unit_id');
    if ($_column == null) return null;
    final manager = $$UnitTableTableTableManager(
      $_db,
      $_db.unitTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_unitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SaleItemTableTableFilterComposer
    extends Composer<_$AppDatabase, $SaleItemTableTable> {
  $$SaleItemTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get unitPrice => $composableBuilder(
    column: $table.unitPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get costPrice => $composableBuilder(
    column: $table.costPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lineTotal => $composableBuilder(
    column: $table.lineTotal,
    builder: (column) => ColumnFilters(column),
  );

  $$SaleTableTableFilterComposer get saleId {
    final $$SaleTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.saleId,
      referencedTable: $db.saleTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleTableTableFilterComposer(
            $db: $db,
            $table: $db.saleTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductVariantTableTableFilterComposer get variantId {
    final $$ProductVariantTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.variantId,
      referencedTable: $db.productVariantTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductVariantTableTableFilterComposer(
            $db: $db,
            $table: $db.productVariantTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableFilterComposer get unitId {
    final $$UnitTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableFilterComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SaleItemTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SaleItemTableTable> {
  $$SaleItemTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get unitPrice => $composableBuilder(
    column: $table.unitPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get costPrice => $composableBuilder(
    column: $table.costPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lineTotal => $composableBuilder(
    column: $table.lineTotal,
    builder: (column) => ColumnOrderings(column),
  );

  $$SaleTableTableOrderingComposer get saleId {
    final $$SaleTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.saleId,
      referencedTable: $db.saleTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleTableTableOrderingComposer(
            $db: $db,
            $table: $db.saleTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductVariantTableTableOrderingComposer get variantId {
    final $$ProductVariantTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.variantId,
          referencedTable: $db.productVariantTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductVariantTableTableOrderingComposer(
                $db: $db,
                $table: $db.productVariantTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$UnitTableTableOrderingComposer get unitId {
    final $$UnitTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableOrderingComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SaleItemTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SaleItemTableTable> {
  $$SaleItemTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<double> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<double> get unitPrice =>
      $composableBuilder(column: $table.unitPrice, builder: (column) => column);

  GeneratedColumn<double> get costPrice =>
      $composableBuilder(column: $table.costPrice, builder: (column) => column);

  GeneratedColumn<double> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<double> get lineTotal =>
      $composableBuilder(column: $table.lineTotal, builder: (column) => column);

  $$SaleTableTableAnnotationComposer get saleId {
    final $$SaleTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.saleId,
      referencedTable: $db.saleTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleTableTableAnnotationComposer(
            $db: $db,
            $table: $db.saleTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductVariantTableTableAnnotationComposer get variantId {
    final $$ProductVariantTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.variantId,
          referencedTable: $db.productVariantTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductVariantTableTableAnnotationComposer(
                $db: $db,
                $table: $db.productVariantTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$UnitTableTableAnnotationComposer get unitId {
    final $$UnitTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableAnnotationComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SaleItemTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SaleItemTableTable,
          SaleItemTableData,
          $$SaleItemTableTableFilterComposer,
          $$SaleItemTableTableOrderingComposer,
          $$SaleItemTableTableAnnotationComposer,
          $$SaleItemTableTableCreateCompanionBuilder,
          $$SaleItemTableTableUpdateCompanionBuilder,
          (SaleItemTableData, $$SaleItemTableTableReferences),
          SaleItemTableData,
          PrefetchHooks Function({bool saleId, bool variantId, bool unitId})
        > {
  $$SaleItemTableTableTableManager(_$AppDatabase db, $SaleItemTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SaleItemTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SaleItemTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SaleItemTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> saleId = const Value.absent(),
                Value<String> variantId = const Value.absent(),
                Value<double> qty = const Value.absent(),
                Value<String?> unitId = const Value.absent(),
                Value<double> unitPrice = const Value.absent(),
                Value<double> costPrice = const Value.absent(),
                Value<double> discount = const Value.absent(),
                Value<double> lineTotal = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SaleItemTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                saleId: saleId,
                variantId: variantId,
                qty: qty,
                unitId: unitId,
                unitPrice: unitPrice,
                costPrice: costPrice,
                discount: discount,
                lineTotal: lineTotal,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String saleId,
                required String variantId,
                required double qty,
                Value<String?> unitId = const Value.absent(),
                required double unitPrice,
                Value<double> costPrice = const Value.absent(),
                Value<double> discount = const Value.absent(),
                required double lineTotal,
                Value<int> rowid = const Value.absent(),
              }) => SaleItemTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                saleId: saleId,
                variantId: variantId,
                qty: qty,
                unitId: unitId,
                unitPrice: unitPrice,
                costPrice: costPrice,
                discount: discount,
                lineTotal: lineTotal,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SaleItemTableTable, SaleItemTableData>(table),
                  $$SaleItemTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({saleId = false, variantId = false, unitId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (saleId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.saleId,
                            referencedTable: $$SaleItemTableTableReferences
                                ._saleIdTable(db),
                            referencedColumn: $$SaleItemTableTableReferences
                                ._saleIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (variantId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.variantId,
                            referencedTable: $$SaleItemTableTableReferences
                                ._variantIdTable(db),
                            referencedColumn: $$SaleItemTableTableReferences
                                ._variantIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (unitId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.unitId,
                            referencedTable: $$SaleItemTableTableReferences
                                ._unitIdTable(db),
                            referencedColumn: $$SaleItemTableTableReferences
                                ._unitIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$SaleItemTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SaleItemTableTable,
      SaleItemTableData,
      $$SaleItemTableTableFilterComposer,
      $$SaleItemTableTableOrderingComposer,
      $$SaleItemTableTableAnnotationComposer,
      $$SaleItemTableTableCreateCompanionBuilder,
      $$SaleItemTableTableUpdateCompanionBuilder,
      (SaleItemTableData, $$SaleItemTableTableReferences),
      SaleItemTableData,
      PrefetchHooks Function({bool saleId, bool variantId, bool unitId})
    >;
typedef $$PurchaseTableTableCreateCompanionBuilder =
    PurchaseTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      Value<String?> supplierId,
      Value<String?> invoiceNo,
      required String purchaseDate,
      required double total,
      Value<double> paid,
      Value<String?> createdBy,
      Value<int> rowid,
    });
typedef $$PurchaseTableTableUpdateCompanionBuilder =
    PurchaseTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String?> supplierId,
      Value<String?> invoiceNo,
      Value<String> purchaseDate,
      Value<double> total,
      Value<double> paid,
      Value<String?> createdBy,
      Value<int> rowid,
    });

final class $$PurchaseTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $PurchaseTableTable, PurchaseTableData> {
  $$PurchaseTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SupplierTableTable _supplierIdTable(_$AppDatabase db) =>
      db.supplierTable.createAlias('purchase__supplier_id__supplier__id');

  $$SupplierTableTableProcessedTableManager? get supplierId {
    final $_column = $_itemColumn<String>('supplier_id');
    if ($_column == null) return null;
    final manager = $$SupplierTableTableTableManager(
      $_db,
      $_db.supplierTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_supplierIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $UserTableTable _createdByTable(_$AppDatabase db) =>
      db.userTable.createAlias('purchase__created_by__user__id');

  $$UserTableTableProcessedTableManager? get createdBy {
    final $_column = $_itemColumn<String>('created_by');
    if ($_column == null) return null;
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_createdByTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $PurchaseItemTableTable,
    List<PurchaseItemTableData>
  >
  _purchaseItemTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.purchaseItemTable,
        aliasName: 'purchase__id__purchase_item__purchase_id',
      );

  $$PurchaseItemTableTableProcessedTableManager get purchaseItemTableRefs {
    final manager = $$PurchaseItemTableTableTableManager(
      $_db,
      $_db.purchaseItemTable,
    ).filter((f) => f.purchaseId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _purchaseItemTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PurchaseTableTableFilterComposer
    extends Composer<_$AppDatabase, $PurchaseTableTable> {
  $$PurchaseTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get invoiceNo => $composableBuilder(
    column: $table.invoiceNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get paid => $composableBuilder(
    column: $table.paid,
    builder: (column) => ColumnFilters(column),
  );

  $$SupplierTableTableFilterComposer get supplierId {
    final $$SupplierTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplierId,
      referencedTable: $db.supplierTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplierTableTableFilterComposer(
            $db: $db,
            $table: $db.supplierTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UserTableTableFilterComposer get createdBy {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> purchaseItemTableRefs(
    Expression<bool> Function($$PurchaseItemTableTableFilterComposer f) f,
  ) {
    final $$PurchaseItemTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.purchaseItemTable,
      getReferencedColumn: (t) => t.purchaseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseItemTableTableFilterComposer(
            $db: $db,
            $table: $db.purchaseItemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PurchaseTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PurchaseTableTable> {
  $$PurchaseTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get invoiceNo => $composableBuilder(
    column: $table.invoiceNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get paid => $composableBuilder(
    column: $table.paid,
    builder: (column) => ColumnOrderings(column),
  );

  $$SupplierTableTableOrderingComposer get supplierId {
    final $$SupplierTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplierId,
      referencedTable: $db.supplierTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplierTableTableOrderingComposer(
            $db: $db,
            $table: $db.supplierTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UserTableTableOrderingComposer get createdBy {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableOrderingComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PurchaseTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PurchaseTableTable> {
  $$PurchaseTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get invoiceNo =>
      $composableBuilder(column: $table.invoiceNo, builder: (column) => column);

  GeneratedColumn<String> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<double> get paid =>
      $composableBuilder(column: $table.paid, builder: (column) => column);

  $$SupplierTableTableAnnotationComposer get supplierId {
    final $$SupplierTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplierId,
      referencedTable: $db.supplierTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplierTableTableAnnotationComposer(
            $db: $db,
            $table: $db.supplierTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UserTableTableAnnotationComposer get createdBy {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> purchaseItemTableRefs<T extends Object>(
    Expression<T> Function($$PurchaseItemTableTableAnnotationComposer a) f,
  ) {
    final $$PurchaseItemTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.purchaseItemTable,
          getReferencedColumn: (t) => t.purchaseId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PurchaseItemTableTableAnnotationComposer(
                $db: $db,
                $table: $db.purchaseItemTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$PurchaseTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PurchaseTableTable,
          PurchaseTableData,
          $$PurchaseTableTableFilterComposer,
          $$PurchaseTableTableOrderingComposer,
          $$PurchaseTableTableAnnotationComposer,
          $$PurchaseTableTableCreateCompanionBuilder,
          $$PurchaseTableTableUpdateCompanionBuilder,
          (PurchaseTableData, $$PurchaseTableTableReferences),
          PurchaseTableData,
          PrefetchHooks Function({
            bool supplierId,
            bool createdBy,
            bool purchaseItemTableRefs,
          })
        > {
  $$PurchaseTableTableTableManager(_$AppDatabase db, $PurchaseTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PurchaseTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PurchaseTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PurchaseTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String?> supplierId = const Value.absent(),
                Value<String?> invoiceNo = const Value.absent(),
                Value<String> purchaseDate = const Value.absent(),
                Value<double> total = const Value.absent(),
                Value<double> paid = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PurchaseTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                supplierId: supplierId,
                invoiceNo: invoiceNo,
                purchaseDate: purchaseDate,
                total: total,
                paid: paid,
                createdBy: createdBy,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                Value<String?> supplierId = const Value.absent(),
                Value<String?> invoiceNo = const Value.absent(),
                required String purchaseDate,
                required double total,
                Value<double> paid = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PurchaseTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                supplierId: supplierId,
                invoiceNo: invoiceNo,
                purchaseDate: purchaseDate,
                total: total,
                paid: paid,
                createdBy: createdBy,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PurchaseTableTable, PurchaseTableData>(table),
                  $$PurchaseTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                supplierId = false,
                createdBy = false,
                purchaseItemTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (purchaseItemTableRefs) db.purchaseItemTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (supplierId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.supplierId,
                            referencedTable: $$PurchaseTableTableReferences
                                ._supplierIdTable(db),
                            referencedColumn: $$PurchaseTableTableReferences
                                ._supplierIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (createdBy) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.createdBy,
                            referencedTable: $$PurchaseTableTableReferences
                                ._createdByTable(db),
                            referencedColumn: $$PurchaseTableTableReferences
                                ._createdByTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (purchaseItemTableRefs)
                        await $_getPrefetchedData<
                          PurchaseTableData,
                          $PurchaseTableTable,
                          PurchaseItemTableData
                        >(
                          currentTable: table,
                          referencedTable: $$PurchaseTableTableReferences
                              ._purchaseItemTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PurchaseTableTableReferences(
                                db,
                                table,
                                p0,
                              ).purchaseItemTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.purchaseId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PurchaseTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PurchaseTableTable,
      PurchaseTableData,
      $$PurchaseTableTableFilterComposer,
      $$PurchaseTableTableOrderingComposer,
      $$PurchaseTableTableAnnotationComposer,
      $$PurchaseTableTableCreateCompanionBuilder,
      $$PurchaseTableTableUpdateCompanionBuilder,
      (PurchaseTableData, $$PurchaseTableTableReferences),
      PurchaseTableData,
      PrefetchHooks Function({
        bool supplierId,
        bool createdBy,
        bool purchaseItemTableRefs,
      })
    >;
typedef $$PurchaseItemTableTableCreateCompanionBuilder =
    PurchaseItemTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String purchaseId,
      required String variantId,
      required double qty,
      Value<String?> unitId,
      required double unitCost,
      Value<String?> expiryDate,
      required double lineTotal,
      Value<int> rowid,
    });
typedef $$PurchaseItemTableTableUpdateCompanionBuilder =
    PurchaseItemTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> purchaseId,
      Value<String> variantId,
      Value<double> qty,
      Value<String?> unitId,
      Value<double> unitCost,
      Value<String?> expiryDate,
      Value<double> lineTotal,
      Value<int> rowid,
    });

final class $$PurchaseItemTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PurchaseItemTableTable,
          PurchaseItemTableData
        > {
  $$PurchaseItemTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PurchaseTableTable _purchaseIdTable(_$AppDatabase db) =>
      db.purchaseTable.createAlias('purchase_item__purchase_id__purchase__id');

  $$PurchaseTableTableProcessedTableManager get purchaseId {
    final $_column = $_itemColumn<String>('purchase_id')!;

    final manager = $$PurchaseTableTableTableManager(
      $_db,
      $_db.purchaseTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_purchaseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProductVariantTableTable _variantIdTable(_$AppDatabase db) => db
      .productVariantTable
      .createAlias('purchase_item__variant_id__product_variant__id');

  $$ProductVariantTableTableProcessedTableManager get variantId {
    final $_column = $_itemColumn<String>('variant_id')!;

    final manager = $$ProductVariantTableTableTableManager(
      $_db,
      $_db.productVariantTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_variantIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $UnitTableTable _unitIdTable(_$AppDatabase db) =>
      db.unitTable.createAlias('purchase_item__unit_id__unit__id');

  $$UnitTableTableProcessedTableManager? get unitId {
    final $_column = $_itemColumn<String>('unit_id');
    if ($_column == null) return null;
    final manager = $$UnitTableTableTableManager(
      $_db,
      $_db.unitTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_unitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PurchaseItemTableTableFilterComposer
    extends Composer<_$AppDatabase, $PurchaseItemTableTable> {
  $$PurchaseItemTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get unitCost => $composableBuilder(
    column: $table.unitCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lineTotal => $composableBuilder(
    column: $table.lineTotal,
    builder: (column) => ColumnFilters(column),
  );

  $$PurchaseTableTableFilterComposer get purchaseId {
    final $$PurchaseTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.purchaseId,
      referencedTable: $db.purchaseTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseTableTableFilterComposer(
            $db: $db,
            $table: $db.purchaseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductVariantTableTableFilterComposer get variantId {
    final $$ProductVariantTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.variantId,
      referencedTable: $db.productVariantTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductVariantTableTableFilterComposer(
            $db: $db,
            $table: $db.productVariantTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$UnitTableTableFilterComposer get unitId {
    final $$UnitTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableFilterComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PurchaseItemTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PurchaseItemTableTable> {
  $$PurchaseItemTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get unitCost => $composableBuilder(
    column: $table.unitCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lineTotal => $composableBuilder(
    column: $table.lineTotal,
    builder: (column) => ColumnOrderings(column),
  );

  $$PurchaseTableTableOrderingComposer get purchaseId {
    final $$PurchaseTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.purchaseId,
      referencedTable: $db.purchaseTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseTableTableOrderingComposer(
            $db: $db,
            $table: $db.purchaseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductVariantTableTableOrderingComposer get variantId {
    final $$ProductVariantTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.variantId,
          referencedTable: $db.productVariantTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductVariantTableTableOrderingComposer(
                $db: $db,
                $table: $db.productVariantTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$UnitTableTableOrderingComposer get unitId {
    final $$UnitTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableOrderingComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PurchaseItemTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PurchaseItemTableTable> {
  $$PurchaseItemTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<double> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<double> get unitCost =>
      $composableBuilder(column: $table.unitCost, builder: (column) => column);

  GeneratedColumn<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get lineTotal =>
      $composableBuilder(column: $table.lineTotal, builder: (column) => column);

  $$PurchaseTableTableAnnotationComposer get purchaseId {
    final $$PurchaseTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.purchaseId,
      referencedTable: $db.purchaseTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseTableTableAnnotationComposer(
            $db: $db,
            $table: $db.purchaseTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductVariantTableTableAnnotationComposer get variantId {
    final $$ProductVariantTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.variantId,
          referencedTable: $db.productVariantTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductVariantTableTableAnnotationComposer(
                $db: $db,
                $table: $db.productVariantTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$UnitTableTableAnnotationComposer get unitId {
    final $$UnitTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.unitTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnitTableTableAnnotationComposer(
            $db: $db,
            $table: $db.unitTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PurchaseItemTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PurchaseItemTableTable,
          PurchaseItemTableData,
          $$PurchaseItemTableTableFilterComposer,
          $$PurchaseItemTableTableOrderingComposer,
          $$PurchaseItemTableTableAnnotationComposer,
          $$PurchaseItemTableTableCreateCompanionBuilder,
          $$PurchaseItemTableTableUpdateCompanionBuilder,
          (PurchaseItemTableData, $$PurchaseItemTableTableReferences),
          PurchaseItemTableData,
          PrefetchHooks Function({bool purchaseId, bool variantId, bool unitId})
        > {
  $$PurchaseItemTableTableTableManager(
    _$AppDatabase db,
    $PurchaseItemTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PurchaseItemTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PurchaseItemTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PurchaseItemTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> purchaseId = const Value.absent(),
                Value<String> variantId = const Value.absent(),
                Value<double> qty = const Value.absent(),
                Value<String?> unitId = const Value.absent(),
                Value<double> unitCost = const Value.absent(),
                Value<String?> expiryDate = const Value.absent(),
                Value<double> lineTotal = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PurchaseItemTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                purchaseId: purchaseId,
                variantId: variantId,
                qty: qty,
                unitId: unitId,
                unitCost: unitCost,
                expiryDate: expiryDate,
                lineTotal: lineTotal,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String purchaseId,
                required String variantId,
                required double qty,
                Value<String?> unitId = const Value.absent(),
                required double unitCost,
                Value<String?> expiryDate = const Value.absent(),
                required double lineTotal,
                Value<int> rowid = const Value.absent(),
              }) => PurchaseItemTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                purchaseId: purchaseId,
                variantId: variantId,
                qty: qty,
                unitId: unitId,
                unitCost: unitCost,
                expiryDate: expiryDate,
                lineTotal: lineTotal,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PurchaseItemTableTable, PurchaseItemTableData>(
                    table,
                  ),
                  $$PurchaseItemTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({purchaseId = false, variantId = false, unitId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (purchaseId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.purchaseId,
                            referencedTable: $$PurchaseItemTableTableReferences
                                ._purchaseIdTable(db),
                            referencedColumn: $$PurchaseItemTableTableReferences
                                ._purchaseIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (variantId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.variantId,
                            referencedTable: $$PurchaseItemTableTableReferences
                                ._variantIdTable(db),
                            referencedColumn: $$PurchaseItemTableTableReferences
                                ._variantIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (unitId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.unitId,
                            referencedTable: $$PurchaseItemTableTableReferences
                                ._unitIdTable(db),
                            referencedColumn: $$PurchaseItemTableTableReferences
                                ._unitIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$PurchaseItemTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PurchaseItemTableTable,
      PurchaseItemTableData,
      $$PurchaseItemTableTableFilterComposer,
      $$PurchaseItemTableTableOrderingComposer,
      $$PurchaseItemTableTableAnnotationComposer,
      $$PurchaseItemTableTableCreateCompanionBuilder,
      $$PurchaseItemTableTableUpdateCompanionBuilder,
      (PurchaseItemTableData, $$PurchaseItemTableTableReferences),
      PurchaseItemTableData,
      PrefetchHooks Function({bool purchaseId, bool variantId, bool unitId})
    >;
typedef $$LedgerEntryTableTableCreateCompanionBuilder =
    LedgerEntryTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String partyType,
      required String partyId,
      required String entryDate,
      Value<double> debit,
      Value<double> credit,
      Value<String?> refType,
      Value<String?> refId,
      Value<String?> note,
      Value<int> rowid,
    });
typedef $$LedgerEntryTableTableUpdateCompanionBuilder =
    LedgerEntryTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> partyType,
      Value<String> partyId,
      Value<String> entryDate,
      Value<double> debit,
      Value<double> credit,
      Value<String?> refType,
      Value<String?> refId,
      Value<String?> note,
      Value<int> rowid,
    });

class $$LedgerEntryTableTableFilterComposer
    extends Composer<_$AppDatabase, $LedgerEntryTableTable> {
  $$LedgerEntryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partyType => $composableBuilder(
    column: $table.partyType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partyId => $composableBuilder(
    column: $table.partyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entryDate => $composableBuilder(
    column: $table.entryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get debit => $composableBuilder(
    column: $table.debit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get credit => $composableBuilder(
    column: $table.credit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refType => $composableBuilder(
    column: $table.refType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refId => $composableBuilder(
    column: $table.refId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LedgerEntryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LedgerEntryTableTable> {
  $$LedgerEntryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partyType => $composableBuilder(
    column: $table.partyType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partyId => $composableBuilder(
    column: $table.partyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entryDate => $composableBuilder(
    column: $table.entryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get debit => $composableBuilder(
    column: $table.debit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get credit => $composableBuilder(
    column: $table.credit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refType => $composableBuilder(
    column: $table.refType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refId => $composableBuilder(
    column: $table.refId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LedgerEntryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LedgerEntryTableTable> {
  $$LedgerEntryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get partyType =>
      $composableBuilder(column: $table.partyType, builder: (column) => column);

  GeneratedColumn<String> get partyId =>
      $composableBuilder(column: $table.partyId, builder: (column) => column);

  GeneratedColumn<String> get entryDate =>
      $composableBuilder(column: $table.entryDate, builder: (column) => column);

  GeneratedColumn<double> get debit =>
      $composableBuilder(column: $table.debit, builder: (column) => column);

  GeneratedColumn<double> get credit =>
      $composableBuilder(column: $table.credit, builder: (column) => column);

  GeneratedColumn<String> get refType =>
      $composableBuilder(column: $table.refType, builder: (column) => column);

  GeneratedColumn<String> get refId =>
      $composableBuilder(column: $table.refId, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);
}

class $$LedgerEntryTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LedgerEntryTableTable,
          LedgerEntryTableData,
          $$LedgerEntryTableTableFilterComposer,
          $$LedgerEntryTableTableOrderingComposer,
          $$LedgerEntryTableTableAnnotationComposer,
          $$LedgerEntryTableTableCreateCompanionBuilder,
          $$LedgerEntryTableTableUpdateCompanionBuilder,
          (
            LedgerEntryTableData,
            BaseReferences<
              _$AppDatabase,
              $LedgerEntryTableTable,
              LedgerEntryTableData
            >,
          ),
          LedgerEntryTableData,
          PrefetchHooks Function()
        > {
  $$LedgerEntryTableTableTableManager(
    _$AppDatabase db,
    $LedgerEntryTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LedgerEntryTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LedgerEntryTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LedgerEntryTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> partyType = const Value.absent(),
                Value<String> partyId = const Value.absent(),
                Value<String> entryDate = const Value.absent(),
                Value<double> debit = const Value.absent(),
                Value<double> credit = const Value.absent(),
                Value<String?> refType = const Value.absent(),
                Value<String?> refId = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LedgerEntryTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                partyType: partyType,
                partyId: partyId,
                entryDate: entryDate,
                debit: debit,
                credit: credit,
                refType: refType,
                refId: refId,
                note: note,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String partyType,
                required String partyId,
                required String entryDate,
                Value<double> debit = const Value.absent(),
                Value<double> credit = const Value.absent(),
                Value<String?> refType = const Value.absent(),
                Value<String?> refId = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LedgerEntryTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                partyType: partyType,
                partyId: partyId,
                entryDate: entryDate,
                debit: debit,
                credit: credit,
                refType: refType,
                refId: refId,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$LedgerEntryTableTable, LedgerEntryTableData>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $LedgerEntryTableTable,
                    LedgerEntryTableData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LedgerEntryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LedgerEntryTableTable,
      LedgerEntryTableData,
      $$LedgerEntryTableTableFilterComposer,
      $$LedgerEntryTableTableOrderingComposer,
      $$LedgerEntryTableTableAnnotationComposer,
      $$LedgerEntryTableTableCreateCompanionBuilder,
      $$LedgerEntryTableTableUpdateCompanionBuilder,
      (
        LedgerEntryTableData,
        BaseReferences<
          _$AppDatabase,
          $LedgerEntryTableTable,
          LedgerEntryTableData
        >,
      ),
      LedgerEntryTableData,
      PrefetchHooks Function()
    >;
typedef $$PaymentTableTableCreateCompanionBuilder =
    PaymentTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      Value<String?> refType,
      Value<String?> refId,
      Value<String?> partyType,
      Value<String?> partyId,
      required String method,
      required double amount,
      required String direction,
      required String paidAt,
      Value<String?> createdBy,
      Value<int> rowid,
    });
typedef $$PaymentTableTableUpdateCompanionBuilder =
    PaymentTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String?> refType,
      Value<String?> refId,
      Value<String?> partyType,
      Value<String?> partyId,
      Value<String> method,
      Value<double> amount,
      Value<String> direction,
      Value<String> paidAt,
      Value<String?> createdBy,
      Value<int> rowid,
    });

final class $$PaymentTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $PaymentTableTable, PaymentTableData> {
  $$PaymentTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserTableTable _createdByTable(_$AppDatabase db) =>
      db.userTable.createAlias('payment__created_by__user__id');

  $$UserTableTableProcessedTableManager? get createdBy {
    final $_column = $_itemColumn<String>('created_by');
    if ($_column == null) return null;
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_createdByTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PaymentTableTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentTableTable> {
  $$PaymentTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refType => $composableBuilder(
    column: $table.refType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refId => $composableBuilder(
    column: $table.refId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partyType => $composableBuilder(
    column: $table.partyType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partyId => $composableBuilder(
    column: $table.partyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get method => $composableBuilder(
    column: $table.method,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get direction => $composableBuilder(
    column: $table.direction,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paidAt => $composableBuilder(
    column: $table.paidAt,
    builder: (column) => ColumnFilters(column),
  );

  $$UserTableTableFilterComposer get createdBy {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PaymentTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentTableTable> {
  $$PaymentTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refType => $composableBuilder(
    column: $table.refType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refId => $composableBuilder(
    column: $table.refId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partyType => $composableBuilder(
    column: $table.partyType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partyId => $composableBuilder(
    column: $table.partyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get method => $composableBuilder(
    column: $table.method,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get direction => $composableBuilder(
    column: $table.direction,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paidAt => $composableBuilder(
    column: $table.paidAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$UserTableTableOrderingComposer get createdBy {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableOrderingComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PaymentTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentTableTable> {
  $$PaymentTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get refType =>
      $composableBuilder(column: $table.refType, builder: (column) => column);

  GeneratedColumn<String> get refId =>
      $composableBuilder(column: $table.refId, builder: (column) => column);

  GeneratedColumn<String> get partyType =>
      $composableBuilder(column: $table.partyType, builder: (column) => column);

  GeneratedColumn<String> get partyId =>
      $composableBuilder(column: $table.partyId, builder: (column) => column);

  GeneratedColumn<String> get method =>
      $composableBuilder(column: $table.method, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get direction =>
      $composableBuilder(column: $table.direction, builder: (column) => column);

  GeneratedColumn<String> get paidAt =>
      $composableBuilder(column: $table.paidAt, builder: (column) => column);

  $$UserTableTableAnnotationComposer get createdBy {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PaymentTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PaymentTableTable,
          PaymentTableData,
          $$PaymentTableTableFilterComposer,
          $$PaymentTableTableOrderingComposer,
          $$PaymentTableTableAnnotationComposer,
          $$PaymentTableTableCreateCompanionBuilder,
          $$PaymentTableTableUpdateCompanionBuilder,
          (PaymentTableData, $$PaymentTableTableReferences),
          PaymentTableData,
          PrefetchHooks Function({bool createdBy})
        > {
  $$PaymentTableTableTableManager(_$AppDatabase db, $PaymentTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String?> refType = const Value.absent(),
                Value<String?> refId = const Value.absent(),
                Value<String?> partyType = const Value.absent(),
                Value<String?> partyId = const Value.absent(),
                Value<String> method = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<String> direction = const Value.absent(),
                Value<String> paidAt = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PaymentTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                refType: refType,
                refId: refId,
                partyType: partyType,
                partyId: partyId,
                method: method,
                amount: amount,
                direction: direction,
                paidAt: paidAt,
                createdBy: createdBy,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                Value<String?> refType = const Value.absent(),
                Value<String?> refId = const Value.absent(),
                Value<String?> partyType = const Value.absent(),
                Value<String?> partyId = const Value.absent(),
                required String method,
                required double amount,
                required String direction,
                required String paidAt,
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PaymentTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                refType: refType,
                refId: refId,
                partyType: partyType,
                partyId: partyId,
                method: method,
                amount: amount,
                direction: direction,
                paidAt: paidAt,
                createdBy: createdBy,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PaymentTableTable, PaymentTableData>(table),
                  $$PaymentTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({createdBy = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (createdBy) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.createdBy,
                        referencedTable: $$PaymentTableTableReferences
                            ._createdByTable(db),
                        referencedColumn: $$PaymentTableTableReferences
                            ._createdByTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PaymentTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PaymentTableTable,
      PaymentTableData,
      $$PaymentTableTableFilterComposer,
      $$PaymentTableTableOrderingComposer,
      $$PaymentTableTableAnnotationComposer,
      $$PaymentTableTableCreateCompanionBuilder,
      $$PaymentTableTableUpdateCompanionBuilder,
      (PaymentTableData, $$PaymentTableTableReferences),
      PaymentTableData,
      PrefetchHooks Function({bool createdBy})
    >;
typedef $$ExpenseTableTableCreateCompanionBuilder =
    ExpenseTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String title,
      required double amount,
      required String expenseDate,
      Value<String?> note,
      Value<String?> createdBy,
      Value<int> rowid,
    });
typedef $$ExpenseTableTableUpdateCompanionBuilder =
    ExpenseTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> title,
      Value<double> amount,
      Value<String> expenseDate,
      Value<String?> note,
      Value<String?> createdBy,
      Value<int> rowid,
    });

final class $$ExpenseTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $ExpenseTableTable, ExpenseTableData> {
  $$ExpenseTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserTableTable _createdByTable(_$AppDatabase db) =>
      db.userTable.createAlias('expense__created_by__user__id');

  $$UserTableTableProcessedTableManager? get createdBy {
    final $_column = $_itemColumn<String>('created_by');
    if ($_column == null) return null;
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_createdByTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ExpenseTableTableFilterComposer
    extends Composer<_$AppDatabase, $ExpenseTableTable> {
  $$ExpenseTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get expenseDate => $composableBuilder(
    column: $table.expenseDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$UserTableTableFilterComposer get createdBy {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExpenseTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ExpenseTableTable> {
  $$ExpenseTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get expenseDate => $composableBuilder(
    column: $table.expenseDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$UserTableTableOrderingComposer get createdBy {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableOrderingComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExpenseTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExpenseTableTable> {
  $$ExpenseTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get expenseDate => $composableBuilder(
    column: $table.expenseDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$UserTableTableAnnotationComposer get createdBy {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.createdBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExpenseTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExpenseTableTable,
          ExpenseTableData,
          $$ExpenseTableTableFilterComposer,
          $$ExpenseTableTableOrderingComposer,
          $$ExpenseTableTableAnnotationComposer,
          $$ExpenseTableTableCreateCompanionBuilder,
          $$ExpenseTableTableUpdateCompanionBuilder,
          (ExpenseTableData, $$ExpenseTableTableReferences),
          ExpenseTableData,
          PrefetchHooks Function({bool createdBy})
        > {
  $$ExpenseTableTableTableManager(_$AppDatabase db, $ExpenseTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpenseTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpenseTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpenseTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<String> expenseDate = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExpenseTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                title: title,
                amount: amount,
                expenseDate: expenseDate,
                note: note,
                createdBy: createdBy,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String title,
                required double amount,
                required String expenseDate,
                Value<String?> note = const Value.absent(),
                Value<String?> createdBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExpenseTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                title: title,
                amount: amount,
                expenseDate: expenseDate,
                note: note,
                createdBy: createdBy,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExpenseTableTable, ExpenseTableData>(table),
                  $$ExpenseTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({createdBy = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (createdBy) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.createdBy,
                        referencedTable: $$ExpenseTableTableReferences
                            ._createdByTable(db),
                        referencedColumn: $$ExpenseTableTableReferences
                            ._createdByTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ExpenseTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExpenseTableTable,
      ExpenseTableData,
      $$ExpenseTableTableFilterComposer,
      $$ExpenseTableTableOrderingComposer,
      $$ExpenseTableTableAnnotationComposer,
      $$ExpenseTableTableCreateCompanionBuilder,
      $$ExpenseTableTableUpdateCompanionBuilder,
      (ExpenseTableData, $$ExpenseTableTableReferences),
      ExpenseTableData,
      PrefetchHooks Function({bool createdBy})
    >;
typedef $$DayClosingTableTableCreateCompanionBuilder =
    DayClosingTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      required String shopId,
      required String closeDate,
      Value<double> openingCash,
      Value<double> expectedCash,
      Value<double> countedCash,
      Value<double> difference,
      Value<String?> closedBy,
      Value<int> rowid,
    });
typedef $$DayClosingTableTableUpdateCompanionBuilder =
    DayClosingTableCompanion Function({
      Value<String> id,
      Value<String> updatedAt,
      Value<String?> deletedAt,
      Value<int> synced,
      Value<String> shopId,
      Value<String> closeDate,
      Value<double> openingCash,
      Value<double> expectedCash,
      Value<double> countedCash,
      Value<double> difference,
      Value<String?> closedBy,
      Value<int> rowid,
    });

final class $$DayClosingTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $DayClosingTableTable,
          DayClosingTableData
        > {
  $$DayClosingTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $UserTableTable _closedByTable(_$AppDatabase db) =>
      db.userTable.createAlias('day_closing__closed_by__user__id');

  $$UserTableTableProcessedTableManager? get closedBy {
    final $_column = $_itemColumn<String>('closed_by');
    if ($_column == null) return null;
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_closedByTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DayClosingTableTableFilterComposer
    extends Composer<_$AppDatabase, $DayClosingTableTable> {
  $$DayClosingTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get closeDate => $composableBuilder(
    column: $table.closeDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get openingCash => $composableBuilder(
    column: $table.openingCash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get expectedCash => $composableBuilder(
    column: $table.expectedCash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get countedCash => $composableBuilder(
    column: $table.countedCash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get difference => $composableBuilder(
    column: $table.difference,
    builder: (column) => ColumnFilters(column),
  );

  $$UserTableTableFilterComposer get closedBy {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.closedBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayClosingTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DayClosingTableTable> {
  $$DayClosingTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get closeDate => $composableBuilder(
    column: $table.closeDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get openingCash => $composableBuilder(
    column: $table.openingCash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get expectedCash => $composableBuilder(
    column: $table.expectedCash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get countedCash => $composableBuilder(
    column: $table.countedCash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get difference => $composableBuilder(
    column: $table.difference,
    builder: (column) => ColumnOrderings(column),
  );

  $$UserTableTableOrderingComposer get closedBy {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.closedBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableOrderingComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayClosingTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DayClosingTableTable> {
  $$DayClosingTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get closeDate =>
      $composableBuilder(column: $table.closeDate, builder: (column) => column);

  GeneratedColumn<double> get openingCash => $composableBuilder(
    column: $table.openingCash,
    builder: (column) => column,
  );

  GeneratedColumn<double> get expectedCash => $composableBuilder(
    column: $table.expectedCash,
    builder: (column) => column,
  );

  GeneratedColumn<double> get countedCash => $composableBuilder(
    column: $table.countedCash,
    builder: (column) => column,
  );

  GeneratedColumn<double> get difference => $composableBuilder(
    column: $table.difference,
    builder: (column) => column,
  );

  $$UserTableTableAnnotationComposer get closedBy {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.closedBy,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayClosingTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DayClosingTableTable,
          DayClosingTableData,
          $$DayClosingTableTableFilterComposer,
          $$DayClosingTableTableOrderingComposer,
          $$DayClosingTableTableAnnotationComposer,
          $$DayClosingTableTableCreateCompanionBuilder,
          $$DayClosingTableTableUpdateCompanionBuilder,
          (DayClosingTableData, $$DayClosingTableTableReferences),
          DayClosingTableData,
          PrefetchHooks Function({bool closedBy})
        > {
  $$DayClosingTableTableTableManager(
    _$AppDatabase db,
    $DayClosingTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DayClosingTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DayClosingTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DayClosingTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String> closeDate = const Value.absent(),
                Value<double> openingCash = const Value.absent(),
                Value<double> expectedCash = const Value.absent(),
                Value<double> countedCash = const Value.absent(),
                Value<double> difference = const Value.absent(),
                Value<String?> closedBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DayClosingTableCompanion(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                closeDate: closeDate,
                openingCash: openingCash,
                expectedCash: expectedCash,
                countedCash: countedCash,
                difference: difference,
                closedBy: closedBy,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                required String shopId,
                required String closeDate,
                Value<double> openingCash = const Value.absent(),
                Value<double> expectedCash = const Value.absent(),
                Value<double> countedCash = const Value.absent(),
                Value<double> difference = const Value.absent(),
                Value<String?> closedBy = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DayClosingTableCompanion.insert(
                id: id,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                synced: synced,
                shopId: shopId,
                closeDate: closeDate,
                openingCash: openingCash,
                expectedCash: expectedCash,
                countedCash: countedCash,
                difference: difference,
                closedBy: closedBy,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$DayClosingTableTable, DayClosingTableData>(
                    table,
                  ),
                  $$DayClosingTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({closedBy = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (closedBy) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.closedBy,
                        referencedTable: $$DayClosingTableTableReferences
                            ._closedByTable(db),
                        referencedColumn: $$DayClosingTableTableReferences
                            ._closedByTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DayClosingTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DayClosingTableTable,
      DayClosingTableData,
      $$DayClosingTableTableFilterComposer,
      $$DayClosingTableTableOrderingComposer,
      $$DayClosingTableTableAnnotationComposer,
      $$DayClosingTableTableCreateCompanionBuilder,
      $$DayClosingTableTableUpdateCompanionBuilder,
      (DayClosingTableData, $$DayClosingTableTableReferences),
      DayClosingTableData,
      PrefetchHooks Function({bool closedBy})
    >;
typedef $$ActivityLogTableTableCreateCompanionBuilder =
    ActivityLogTableCompanion Function({
      Value<String> id,
      required String shopId,
      Value<String?> userId,
      required String action,
      Value<String?> tableName2,
      Value<String?> recordId,
      Value<String?> detail,
      required String createdAt,
      Value<int> synced,
      Value<int> rowid,
    });
typedef $$ActivityLogTableTableUpdateCompanionBuilder =
    ActivityLogTableCompanion Function({
      Value<String> id,
      Value<String> shopId,
      Value<String?> userId,
      Value<String> action,
      Value<String?> tableName2,
      Value<String?> recordId,
      Value<String?> detail,
      Value<String> createdAt,
      Value<int> synced,
      Value<int> rowid,
    });

final class $$ActivityLogTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ActivityLogTableTable,
          ActivityLogTableData
        > {
  $$ActivityLogTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $UserTableTable _userIdTable(_$AppDatabase db) =>
      db.userTable.createAlias('activity_log__user_id__user__id');

  $$UserTableTableProcessedTableManager? get userId {
    final $_column = $_itemColumn<String>('user_id');
    if ($_column == null) return null;
    final manager = $$UserTableTableTableManager(
      $_db,
      $_db.userTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ActivityLogTableTableFilterComposer
    extends Composer<_$AppDatabase, $ActivityLogTableTable> {
  $$ActivityLogTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tableName2 => $composableBuilder(
    column: $table.tableName2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recordId => $composableBuilder(
    column: $table.recordId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get detail => $composableBuilder(
    column: $table.detail,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  $$UserTableTableFilterComposer get userId {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableFilterComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ActivityLogTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivityLogTableTable> {
  $$ActivityLogTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shopId => $composableBuilder(
    column: $table.shopId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tableName2 => $composableBuilder(
    column: $table.tableName2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recordId => $composableBuilder(
    column: $table.recordId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get detail => $composableBuilder(
    column: $table.detail,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  $$UserTableTableOrderingComposer get userId {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableOrderingComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ActivityLogTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivityLogTableTable> {
  $$ActivityLogTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get shopId =>
      $composableBuilder(column: $table.shopId, builder: (column) => column);

  GeneratedColumn<String> get action =>
      $composableBuilder(column: $table.action, builder: (column) => column);

  GeneratedColumn<String> get tableName2 => $composableBuilder(
    column: $table.tableName2,
    builder: (column) => column,
  );

  GeneratedColumn<String> get recordId =>
      $composableBuilder(column: $table.recordId, builder: (column) => column);

  GeneratedColumn<String> get detail =>
      $composableBuilder(column: $table.detail, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  $$UserTableTableAnnotationComposer get userId {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.userTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserTableTableAnnotationComposer(
            $db: $db,
            $table: $db.userTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ActivityLogTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ActivityLogTableTable,
          ActivityLogTableData,
          $$ActivityLogTableTableFilterComposer,
          $$ActivityLogTableTableOrderingComposer,
          $$ActivityLogTableTableAnnotationComposer,
          $$ActivityLogTableTableCreateCompanionBuilder,
          $$ActivityLogTableTableUpdateCompanionBuilder,
          (ActivityLogTableData, $$ActivityLogTableTableReferences),
          ActivityLogTableData,
          PrefetchHooks Function({bool userId})
        > {
  $$ActivityLogTableTableTableManager(
    _$AppDatabase db,
    $ActivityLogTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivityLogTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivityLogTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivityLogTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> shopId = const Value.absent(),
                Value<String?> userId = const Value.absent(),
                Value<String> action = const Value.absent(),
                Value<String?> tableName2 = const Value.absent(),
                Value<String?> recordId = const Value.absent(),
                Value<String?> detail = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ActivityLogTableCompanion(
                id: id,
                shopId: shopId,
                userId: userId,
                action: action,
                tableName2: tableName2,
                recordId: recordId,
                detail: detail,
                createdAt: createdAt,
                synced: synced,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String shopId,
                Value<String?> userId = const Value.absent(),
                required String action,
                Value<String?> tableName2 = const Value.absent(),
                Value<String?> recordId = const Value.absent(),
                Value<String?> detail = const Value.absent(),
                required String createdAt,
                Value<int> synced = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ActivityLogTableCompanion.insert(
                id: id,
                shopId: shopId,
                userId: userId,
                action: action,
                tableName2: tableName2,
                recordId: recordId,
                detail: detail,
                createdAt: createdAt,
                synced: synced,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ActivityLogTableTable, ActivityLogTableData>(
                    table,
                  ),
                  $$ActivityLogTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.userId,
                        referencedTable: $$ActivityLogTableTableReferences
                            ._userIdTable(db),
                        referencedColumn: $$ActivityLogTableTableReferences
                            ._userIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ActivityLogTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ActivityLogTableTable,
      ActivityLogTableData,
      $$ActivityLogTableTableFilterComposer,
      $$ActivityLogTableTableOrderingComposer,
      $$ActivityLogTableTableAnnotationComposer,
      $$ActivityLogTableTableCreateCompanionBuilder,
      $$ActivityLogTableTableUpdateCompanionBuilder,
      (ActivityLogTableData, $$ActivityLogTableTableReferences),
      ActivityLogTableData,
      PrefetchHooks Function({bool userId})
    >;
typedef $$SyncStateTableTableCreateCompanionBuilder =
    SyncStateTableCompanion Function({
      Value<int> id,
      Value<String?> lastSyncedAt,
      required String deviceId,
    });
typedef $$SyncStateTableTableUpdateCompanionBuilder =
    SyncStateTableCompanion Function({
      Value<int> id,
      Value<String?> lastSyncedAt,
      Value<String> deviceId,
    });

class $$SyncStateTableTableFilterComposer
    extends Composer<_$AppDatabase, $SyncStateTableTable> {
  $$SyncStateTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncStateTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncStateTableTable> {
  $$SyncStateTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncStateTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncStateTableTable> {
  $$SyncStateTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get deviceId =>
      $composableBuilder(column: $table.deviceId, builder: (column) => column);
}

class $$SyncStateTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncStateTableTable,
          SyncStateTableData,
          $$SyncStateTableTableFilterComposer,
          $$SyncStateTableTableOrderingComposer,
          $$SyncStateTableTableAnnotationComposer,
          $$SyncStateTableTableCreateCompanionBuilder,
          $$SyncStateTableTableUpdateCompanionBuilder,
          (
            SyncStateTableData,
            BaseReferences<
              _$AppDatabase,
              $SyncStateTableTable,
              SyncStateTableData
            >,
          ),
          SyncStateTableData,
          PrefetchHooks Function()
        > {
  $$SyncStateTableTableTableManager(
    _$AppDatabase db,
    $SyncStateTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncStateTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncStateTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncStateTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> lastSyncedAt = const Value.absent(),
                Value<String> deviceId = const Value.absent(),
              }) => SyncStateTableCompanion(
                id: id,
                lastSyncedAt: lastSyncedAt,
                deviceId: deviceId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> lastSyncedAt = const Value.absent(),
                required String deviceId,
              }) => SyncStateTableCompanion.insert(
                id: id,
                lastSyncedAt: lastSyncedAt,
                deviceId: deviceId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SyncStateTableTable, SyncStateTableData>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $SyncStateTableTable,
                    SyncStateTableData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncStateTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncStateTableTable,
      SyncStateTableData,
      $$SyncStateTableTableFilterComposer,
      $$SyncStateTableTableOrderingComposer,
      $$SyncStateTableTableAnnotationComposer,
      $$SyncStateTableTableCreateCompanionBuilder,
      $$SyncStateTableTableUpdateCompanionBuilder,
      (
        SyncStateTableData,
        BaseReferences<_$AppDatabase, $SyncStateTableTable, SyncStateTableData>,
      ),
      SyncStateTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ShopTableTableTableManager get shopTable =>
      $$ShopTableTableTableManager(_db, _db.shopTable);
  $$UserTableTableTableManager get userTable =>
      $$UserTableTableTableManager(_db, _db.userTable);
  $$CategoryTableTableTableManager get categoryTable =>
      $$CategoryTableTableTableManager(_db, _db.categoryTable);
  $$UnitTableTableTableManager get unitTable =>
      $$UnitTableTableTableManager(_db, _db.unitTable);
  $$ProductTableTableTableManager get productTable =>
      $$ProductTableTableTableManager(_db, _db.productTable);
  $$ProductVariantTableTableTableManager get productVariantTable =>
      $$ProductVariantTableTableTableManager(_db, _db.productVariantTable);
  $$ProductUnitConversionTableTableTableManager
  get productUnitConversionTable =>
      $$ProductUnitConversionTableTableTableManager(
        _db,
        _db.productUnitConversionTable,
      );
  $$StockMovementTableTableTableManager get stockMovementTable =>
      $$StockMovementTableTableTableManager(_db, _db.stockMovementTable);
  $$CustomerTableTableTableManager get customerTable =>
      $$CustomerTableTableTableManager(_db, _db.customerTable);
  $$SupplierTableTableTableManager get supplierTable =>
      $$SupplierTableTableTableManager(_db, _db.supplierTable);
  $$SaleTableTableTableManager get saleTable =>
      $$SaleTableTableTableManager(_db, _db.saleTable);
  $$SaleItemTableTableTableManager get saleItemTable =>
      $$SaleItemTableTableTableManager(_db, _db.saleItemTable);
  $$PurchaseTableTableTableManager get purchaseTable =>
      $$PurchaseTableTableTableManager(_db, _db.purchaseTable);
  $$PurchaseItemTableTableTableManager get purchaseItemTable =>
      $$PurchaseItemTableTableTableManager(_db, _db.purchaseItemTable);
  $$LedgerEntryTableTableTableManager get ledgerEntryTable =>
      $$LedgerEntryTableTableTableManager(_db, _db.ledgerEntryTable);
  $$PaymentTableTableTableManager get paymentTable =>
      $$PaymentTableTableTableManager(_db, _db.paymentTable);
  $$ExpenseTableTableTableManager get expenseTable =>
      $$ExpenseTableTableTableManager(_db, _db.expenseTable);
  $$DayClosingTableTableTableManager get dayClosingTable =>
      $$DayClosingTableTableTableManager(_db, _db.dayClosingTable);
  $$ActivityLogTableTableTableManager get activityLogTable =>
      $$ActivityLogTableTableTableManager(_db, _db.activityLogTable);
  $$SyncStateTableTableTableManager get syncStateTable =>
      $$SyncStateTableTableTableManager(_db, _db.syncStateTable);
}
