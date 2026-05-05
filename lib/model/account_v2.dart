//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountV2 {
  /// Returns a new [AccountV2] instance.
  AccountV2({
    required this.id,
    required this.assetId,
    required this.seq,
    this.isGlobal,
    required this.available,
    required this.locked,
    required this.supplied,
    required this.borrowed,
    required this.impendingBorrows,
    required this.avgEntryPrice,
    required this.borrowLimit,
    required this.liquidationThreshold,
    required this.createdAt,
    required this.pendingWithdrawal,
    required this.accountName,
  });

  /// The unique identifier for the account. Used, for example, when creating an order from an account, or deciding collateral should be transferred from account A to account B.
  String id;

  String assetId;

  /// Minimum value: 1
  int seq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGlobal;

  /// The available balance in the account for this asset that are not locked, supplied, or used as collateral
  String available;

  /// The balance that has been reserved for a current order. If spent by the order, they are removed. If the order is cancelled, they are returned to the account's available balance.
  String locked;

  /// The balance that user has supplied to the leverage module. The user remains entitled to these assets and can withdraw them into their available balance.
  String supplied;

  /// The total amount of debt outstanding for this account. This account cannot be closed until all debt is fully repaid, i.e. borrowed = 0.
  String borrowed;

  /// The equivalent of locked balances, but for leveraged orders. If a user has an active order that would borrow assets as part of its input, then their borrow limit must be reduced until the order is executed or cancelled.
  String impendingBorrows;

  /// average cost per unit quantity that was paid (long accounts) or received (short accounts) for this asset.
  String avgEntryPrice;

  /// The borrow limit
  String borrowLimit;

  /// The borrow limit
  String liquidationThreshold;

  DateTime createdAt;

  /// The amount of asset that is pending withdrawal from the account.
  String pendingWithdrawal;

  String accountName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountV2 &&
    other.id == id &&
    other.assetId == assetId &&
    other.seq == seq &&
    other.isGlobal == isGlobal &&
    other.available == available &&
    other.locked == locked &&
    other.supplied == supplied &&
    other.borrowed == borrowed &&
    other.impendingBorrows == impendingBorrows &&
    other.avgEntryPrice == avgEntryPrice &&
    other.borrowLimit == borrowLimit &&
    other.liquidationThreshold == liquidationThreshold &&
    other.createdAt == createdAt &&
    other.pendingWithdrawal == pendingWithdrawal &&
    other.accountName == accountName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (assetId.hashCode) +
    (seq.hashCode) +
    (isGlobal == null ? 0 : isGlobal!.hashCode) +
    (available.hashCode) +
    (locked.hashCode) +
    (supplied.hashCode) +
    (borrowed.hashCode) +
    (impendingBorrows.hashCode) +
    (avgEntryPrice.hashCode) +
    (borrowLimit.hashCode) +
    (liquidationThreshold.hashCode) +
    (createdAt.hashCode) +
    (pendingWithdrawal.hashCode) +
    (accountName.hashCode);

  @override
  String toString() => 'AccountV2[id=$id, assetId=$assetId, seq=$seq, isGlobal=$isGlobal, available=$available, locked=$locked, supplied=$supplied, borrowed=$borrowed, impendingBorrows=$impendingBorrows, avgEntryPrice=$avgEntryPrice, borrowLimit=$borrowLimit, liquidationThreshold=$liquidationThreshold, createdAt=$createdAt, pendingWithdrawal=$pendingWithdrawal, accountName=$accountName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'asset_id'] = this.assetId;
      json[r'seq'] = this.seq;
    if (this.isGlobal != null) {
      json[r'is_global'] = this.isGlobal;
    } else {
      json[r'is_global'] = null;
    }
      json[r'available'] = this.available;
      json[r'locked'] = this.locked;
      json[r'supplied'] = this.supplied;
      json[r'borrowed'] = this.borrowed;
      json[r'impending_borrows'] = this.impendingBorrows;
      json[r'avg_entry_price'] = this.avgEntryPrice;
      json[r'borrow_limit'] = this.borrowLimit;
      json[r'liquidation_threshold'] = this.liquidationThreshold;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'pending_withdrawal'] = this.pendingWithdrawal;
      json[r'account_name'] = this.accountName;
    return json;
  }

  /// Returns a new [AccountV2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountV2? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccountV2[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccountV2[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountV2(
        id: mapValueOfType<String>(json, r'id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        seq: mapValueOfType<int>(json, r'seq')!,
        isGlobal: mapValueOfType<bool>(json, r'is_global'),
        available: mapValueOfType<String>(json, r'available')!,
        locked: mapValueOfType<String>(json, r'locked')!,
        supplied: mapValueOfType<String>(json, r'supplied')!,
        borrowed: mapValueOfType<String>(json, r'borrowed')!,
        impendingBorrows: mapValueOfType<String>(json, r'impending_borrows')!,
        avgEntryPrice: mapValueOfType<String>(json, r'avg_entry_price')!,
        borrowLimit: mapValueOfType<String>(json, r'borrow_limit')!,
        liquidationThreshold: mapValueOfType<String>(json, r'liquidation_threshold')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        pendingWithdrawal: mapValueOfType<String>(json, r'pending_withdrawal')!,
        accountName: mapValueOfType<String>(json, r'account_name')!,
      );
    }
    return null;
  }

  static List<AccountV2> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountV2>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountV2.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountV2> mapFromJson(dynamic json) {
    final map = <String, AccountV2>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountV2.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountV2-objects as value to a dart map
  static Map<String, List<AccountV2>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountV2>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountV2.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'asset_id',
    'seq',
    'available',
    'locked',
    'supplied',
    'borrowed',
    'impending_borrows',
    'avg_entry_price',
    'borrow_limit',
    'liquidation_threshold',
    'created_at',
    'pending_withdrawal',
    'account_name',
  };
}

