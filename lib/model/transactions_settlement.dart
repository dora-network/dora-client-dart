//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionsSettlement {
  /// Returns a new [TransactionsSettlement] instance.
  TransactionsSettlement({
    required this.txId,
    required this.userId,
    required this.tenantId,
    required this.positionId,
    required this.txKind,
    required this.quantityUsd,
    required this.createdAt,
    this.settledAt,
    this.settledBy,
  });

  String txId;

  String userId;

  String tenantId;

  String positionId;

  String txKind;

  String quantityUsd;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? settledAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? settledBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionsSettlement &&
    other.txId == txId &&
    other.userId == userId &&
    other.tenantId == tenantId &&
    other.positionId == positionId &&
    other.txKind == txKind &&
    other.quantityUsd == quantityUsd &&
    other.createdAt == createdAt &&
    other.settledAt == settledAt &&
    other.settledBy == settledBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (txId.hashCode) +
    (userId.hashCode) +
    (tenantId.hashCode) +
    (positionId.hashCode) +
    (txKind.hashCode) +
    (quantityUsd.hashCode) +
    (createdAt.hashCode) +
    (settledAt == null ? 0 : settledAt!.hashCode) +
    (settledBy == null ? 0 : settledBy!.hashCode);

  @override
  String toString() => 'TransactionsSettlement[txId=$txId, userId=$userId, tenantId=$tenantId, positionId=$positionId, txKind=$txKind, quantityUsd=$quantityUsd, createdAt=$createdAt, settledAt=$settledAt, settledBy=$settledBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tx_id'] = this.txId;
      json[r'user_id'] = this.userId;
      json[r'tenant_id'] = this.tenantId;
      json[r'position_id'] = this.positionId;
      json[r'tx_kind'] = this.txKind;
      json[r'quantity_usd'] = this.quantityUsd;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.settledAt != null) {
      json[r'settled_at'] = this.settledAt!.toUtc().toIso8601String();
    } else {
      json[r'settled_at'] = null;
    }
    if (this.settledBy != null) {
      json[r'settled_by'] = this.settledBy;
    } else {
      json[r'settled_by'] = null;
    }
    return json;
  }

  /// Returns a new [TransactionsSettlement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionsSettlement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'tx_id'), 'Required key "TransactionsSettlement[tx_id]" is missing from JSON.');
        assert(json[r'tx_id'] != null, 'Required key "TransactionsSettlement[tx_id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "TransactionsSettlement[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "TransactionsSettlement[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "TransactionsSettlement[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "TransactionsSettlement[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'position_id'), 'Required key "TransactionsSettlement[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "TransactionsSettlement[position_id]" has a null value in JSON.');
        assert(json.containsKey(r'tx_kind'), 'Required key "TransactionsSettlement[tx_kind]" is missing from JSON.');
        assert(json[r'tx_kind'] != null, 'Required key "TransactionsSettlement[tx_kind]" has a null value in JSON.');
        assert(json.containsKey(r'quantity_usd'), 'Required key "TransactionsSettlement[quantity_usd]" is missing from JSON.');
        assert(json[r'quantity_usd'] != null, 'Required key "TransactionsSettlement[quantity_usd]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "TransactionsSettlement[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "TransactionsSettlement[created_at]" has a null value in JSON.');
        return true;
      }());

      return TransactionsSettlement(
        txId: mapValueOfType<String>(json, r'tx_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        txKind: mapValueOfType<String>(json, r'tx_kind')!,
        quantityUsd: mapValueOfType<String>(json, r'quantity_usd')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        settledAt: mapDateTime(json, r'settled_at', r''),
        settledBy: mapValueOfType<String>(json, r'settled_by'),
      );
    }
    return null;
  }

  static List<TransactionsSettlement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransactionsSettlement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransactionsSettlement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransactionsSettlement> mapFromJson(dynamic json) {
    final map = <String, TransactionsSettlement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransactionsSettlement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransactionsSettlement-objects as value to a dart map
  static Map<String, List<TransactionsSettlement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TransactionsSettlement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TransactionsSettlement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tx_id',
    'user_id',
    'tenant_id',
    'position_id',
    'tx_kind',
    'quantity_usd',
    'created_at',
  };
}

