//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Collateral {
  /// Returns a new [Collateral] instance.
  Collateral({
    required this.positionId,
    required this.transactionId,
    required this.assetId,
    required this.quantity,
  });

  String positionId;

  String transactionId;

  String assetId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Collateral &&
    other.positionId == positionId &&
    other.transactionId == transactionId &&
    other.assetId == assetId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (positionId.hashCode) +
    (transactionId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'Collateral[positionId=$positionId, transactionId=$transactionId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
      json[r'transaction_id'] = this.transactionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [Collateral] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Collateral? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'position_id'), 'Required key "Collateral[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "Collateral[position_id]" has a null value in JSON.');
        assert(json.containsKey(r'transaction_id'), 'Required key "Collateral[transaction_id]" is missing from JSON.');
        assert(json[r'transaction_id'] != null, 'Required key "Collateral[transaction_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "Collateral[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "Collateral[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'quantity'), 'Required key "Collateral[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "Collateral[quantity]" has a null value in JSON.');
        return true;
      }());

      return Collateral(
        positionId: mapValueOfType<String>(json, r'position_id')!,
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<Collateral> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Collateral>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Collateral.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Collateral> mapFromJson(dynamic json) {
    final map = <String, Collateral>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Collateral.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Collateral-objects as value to a dart map
  static Map<String, List<Collateral>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Collateral>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Collateral.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position_id',
    'transaction_id',
    'asset_id',
    'quantity',
  };
}

