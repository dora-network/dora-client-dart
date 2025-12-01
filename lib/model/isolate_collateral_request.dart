//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IsolateCollateralRequest {
  /// Returns a new [IsolateCollateralRequest] instance.
  IsolateCollateralRequest({
    required this.globalPositionId,
    required this.assetId,
    required this.quantity,
  });

  String globalPositionId;

  String assetId;

  double quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IsolateCollateralRequest &&
    other.globalPositionId == globalPositionId &&
    other.assetId == assetId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (globalPositionId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'IsolateCollateralRequest[globalPositionId=$globalPositionId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'global_position_id'] = this.globalPositionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [IsolateCollateralRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IsolateCollateralRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IsolateCollateralRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IsolateCollateralRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IsolateCollateralRequest(
        globalPositionId: mapValueOfType<String>(json, r'global_position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<double>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<IsolateCollateralRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IsolateCollateralRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IsolateCollateralRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IsolateCollateralRequest> mapFromJson(dynamic json) {
    final map = <String, IsolateCollateralRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IsolateCollateralRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IsolateCollateralRequest-objects as value to a dart map
  static Map<String, List<IsolateCollateralRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IsolateCollateralRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IsolateCollateralRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'global_position_id',
    'asset_id',
    'quantity',
  };
}

