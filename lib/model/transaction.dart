//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Transaction {
  /// Returns a new [Transaction] instance.
  Transaction({
    required this.id,
    required this.createdAt,
    required this.kind,
    required this.asset0,
    required this.quantity0,
    required this.quantity1,
    required this.asset1,
    required this.userId,
    required this.adminUserId,
    required this.orderSide,
    this.internalTransfer,
  });

  String id;

  DateTime createdAt;

  TransactionKind kind;

  String asset0;

  String quantity0;

  String quantity1;

  String asset1;

  String userId;

  String adminUserId;

  Side orderSide;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TransactionInternalTransfer? internalTransfer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Transaction &&
    other.id == id &&
    other.createdAt == createdAt &&
    other.kind == kind &&
    other.asset0 == asset0 &&
    other.quantity0 == quantity0 &&
    other.quantity1 == quantity1 &&
    other.asset1 == asset1 &&
    other.userId == userId &&
    other.adminUserId == adminUserId &&
    other.orderSide == orderSide &&
    other.internalTransfer == internalTransfer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (createdAt.hashCode) +
    (kind.hashCode) +
    (asset0.hashCode) +
    (quantity0.hashCode) +
    (quantity1.hashCode) +
    (asset1.hashCode) +
    (userId.hashCode) +
    (adminUserId.hashCode) +
    (orderSide.hashCode) +
    (internalTransfer == null ? 0 : internalTransfer!.hashCode);

  @override
  String toString() => 'Transaction[id=$id, createdAt=$createdAt, kind=$kind, asset0=$asset0, quantity0=$quantity0, quantity1=$quantity1, asset1=$asset1, userId=$userId, adminUserId=$adminUserId, orderSide=$orderSide, internalTransfer=$internalTransfer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'kind'] = this.kind;
      json[r'asset0'] = this.asset0;
      json[r'quantity0'] = this.quantity0;
      json[r'quantity1'] = this.quantity1;
      json[r'asset1'] = this.asset1;
      json[r'user_id'] = this.userId;
      json[r'admin_user_id'] = this.adminUserId;
      json[r'order_side'] = this.orderSide;
    if (this.internalTransfer != null) {
      json[r'internal_transfer'] = this.internalTransfer;
    } else {
      json[r'internal_transfer'] = null;
    }
    return json;
  }

  /// Returns a new [Transaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Transaction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Transaction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Transaction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Transaction(
        id: mapValueOfType<String>(json, r'id')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        kind: TransactionKind.fromJson(json[r'kind'])!,
        asset0: mapValueOfType<String>(json, r'asset0')!,
        quantity0: mapValueOfType<String>(json, r'quantity0')!,
        quantity1: mapValueOfType<String>(json, r'quantity1')!,
        asset1: mapValueOfType<String>(json, r'asset1')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        adminUserId: mapValueOfType<String>(json, r'admin_user_id')!,
        orderSide: Side.fromJson(json[r'order_side'])!,
        internalTransfer: TransactionInternalTransfer.fromJson(json[r'internal_transfer']),
      );
    }
    return null;
  }

  static List<Transaction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Transaction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Transaction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Transaction> mapFromJson(dynamic json) {
    final map = <String, Transaction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Transaction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Transaction-objects as value to a dart map
  static Map<String, List<Transaction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Transaction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Transaction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'created_at',
    'kind',
    'asset0',
    'quantity0',
    'quantity1',
    'asset1',
    'user_id',
    'admin_user_id',
    'order_side',
  };
}

