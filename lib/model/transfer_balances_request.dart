//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransferBalancesRequest {
  /// Returns a new [TransferBalancesRequest] instance.
  TransferBalancesRequest({
    required this.fromPositionId,
    required this.toPositionId,
    required this.assetId,
    required this.quantity,
  });

  String fromPositionId;

  String toPositionId;

  String assetId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransferBalancesRequest &&
    other.fromPositionId == fromPositionId &&
    other.toPositionId == toPositionId &&
    other.assetId == assetId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromPositionId.hashCode) +
    (toPositionId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'TransferBalancesRequest[fromPositionId=$fromPositionId, toPositionId=$toPositionId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'from_position_id'] = this.fromPositionId;
      json[r'to_position_id'] = this.toPositionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [TransferBalancesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransferBalancesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'from_position_id'), 'Required key "TransferBalancesRequest[from_position_id]" is missing from JSON.');
        assert(json[r'from_position_id'] != null, 'Required key "TransferBalancesRequest[from_position_id]" has a null value in JSON.');
        assert(json.containsKey(r'to_position_id'), 'Required key "TransferBalancesRequest[to_position_id]" is missing from JSON.');
        assert(json[r'to_position_id'] != null, 'Required key "TransferBalancesRequest[to_position_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "TransferBalancesRequest[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "TransferBalancesRequest[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'quantity'), 'Required key "TransferBalancesRequest[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "TransferBalancesRequest[quantity]" has a null value in JSON.');
        return true;
      }());

      return TransferBalancesRequest(
        fromPositionId: mapValueOfType<String>(json, r'from_position_id')!,
        toPositionId: mapValueOfType<String>(json, r'to_position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<TransferBalancesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransferBalancesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransferBalancesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransferBalancesRequest> mapFromJson(dynamic json) {
    final map = <String, TransferBalancesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransferBalancesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransferBalancesRequest-objects as value to a dart map
  static Map<String, List<TransferBalancesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TransferBalancesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TransferBalancesRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from_position_id',
    'to_position_id',
    'asset_id',
    'quantity',
  };
}

