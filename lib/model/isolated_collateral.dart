//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IsolatedCollateral {
  /// Returns a new [IsolatedCollateral] instance.
  IsolatedCollateral({
    required this.globalPositionId,
    required this.isolatedPositionId,
    required this.transactionId,
    required this.assetId,
    required this.quantity,
  });

  String globalPositionId;

  String isolatedPositionId;

  String transactionId;

  String assetId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IsolatedCollateral &&
    other.globalPositionId == globalPositionId &&
    other.isolatedPositionId == isolatedPositionId &&
    other.transactionId == transactionId &&
    other.assetId == assetId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (globalPositionId.hashCode) +
    (isolatedPositionId.hashCode) +
    (transactionId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'IsolatedCollateral[globalPositionId=$globalPositionId, isolatedPositionId=$isolatedPositionId, transactionId=$transactionId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'global_position_id'] = this.globalPositionId;
      json[r'isolated_position_id'] = this.isolatedPositionId;
      json[r'transaction_id'] = this.transactionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [IsolatedCollateral] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IsolatedCollateral? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IsolatedCollateral[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IsolatedCollateral[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IsolatedCollateral(
        globalPositionId: mapValueOfType<String>(json, r'global_position_id')!,
        isolatedPositionId: mapValueOfType<String>(json, r'isolated_position_id')!,
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<IsolatedCollateral> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IsolatedCollateral>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IsolatedCollateral.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IsolatedCollateral> mapFromJson(dynamic json) {
    final map = <String, IsolatedCollateral>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IsolatedCollateral.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IsolatedCollateral-objects as value to a dart map
  static Map<String, List<IsolatedCollateral>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IsolatedCollateral>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IsolatedCollateral.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'global_position_id',
    'isolated_position_id',
    'transaction_id',
    'asset_id',
    'quantity',
  };
}

