//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransferAccountBalancesRequest {
  /// Returns a new [TransferAccountBalancesRequest] instance.
  TransferAccountBalancesRequest({
    required this.fromAccountId,
    required this.toAccountId,
    required this.assetId,
    required this.quantity,
  });

  String fromAccountId;

  String toAccountId;

  String assetId;

  double quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransferAccountBalancesRequest &&
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
  String toString() => 'TransferAccountBalancesRequest[fromAccountId=$fromAccountId, toAccountId=$toAccountId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'from_account_id'] = this.fromAccountId;
      json[r'to_account_id'] = this.toAccountId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [TransferAccountBalancesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransferAccountBalancesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TransferAccountBalancesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TransferAccountBalancesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TransferAccountBalancesRequest(
        fromAccountId: mapValueOfType<String>(json, r'from_account_id')!,
        toAccountId: mapValueOfType<String>(json, r'to_account_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<double>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<TransferAccountBalancesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransferAccountBalancesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransferAccountBalancesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransferAccountBalancesRequest> mapFromJson(dynamic json) {
    final map = <String, TransferAccountBalancesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransferAccountBalancesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransferAccountBalancesRequest-objects as value to a dart map
  static Map<String, List<TransferAccountBalancesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TransferAccountBalancesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TransferAccountBalancesRequest.listFromJson(entry.value, growable: growable,);
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

