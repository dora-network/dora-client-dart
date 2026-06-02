//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionInternalTransfer {
  /// Returns a new [TransactionInternalTransfer] instance.
  TransactionInternalTransfer({
    required this.fromAccountId,
    required this.toAccountId,
    required this.assetId,
    required this.quantity,
  });

  String fromAccountId;

  String toAccountId;

  String assetId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionInternalTransfer &&
    other.fromAccountId == fromAccountId &&
    other.toAccountId == toAccountId &&
    other.assetId == assetId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromAccountId.hashCode) +
    (toAccountId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'TransactionInternalTransfer[fromAccountId=$fromAccountId, toAccountId=$toAccountId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'from_account_id'] = this.fromAccountId;
      json[r'to_account_id'] = this.toAccountId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [TransactionInternalTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionInternalTransfer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TransactionInternalTransfer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TransactionInternalTransfer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TransactionInternalTransfer(
        fromAccountId: mapValueOfType<String>(json, r'from_account_id')!,
        toAccountId: mapValueOfType<String>(json, r'to_account_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<TransactionInternalTransfer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransactionInternalTransfer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransactionInternalTransfer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransactionInternalTransfer> mapFromJson(dynamic json) {
    final map = <String, TransactionInternalTransfer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransactionInternalTransfer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransactionInternalTransfer-objects as value to a dart map
  static Map<String, List<TransactionInternalTransfer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TransactionInternalTransfer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TransactionInternalTransfer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from_account_id',
    'to_account_id',
    'asset_id',
    'quantity',
  };
}

