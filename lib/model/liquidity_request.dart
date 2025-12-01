//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LiquidityRequest {
  /// Returns a new [LiquidityRequest] instance.
  LiquidityRequest({
    required this.positionId,
    required this.quantity,
  });

  String positionId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LiquidityRequest &&
    other.positionId == positionId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (positionId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'LiquidityRequest[positionId=$positionId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [LiquidityRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LiquidityRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LiquidityRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LiquidityRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LiquidityRequest(
        positionId: mapValueOfType<String>(json, r'position_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<LiquidityRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LiquidityRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LiquidityRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LiquidityRequest> mapFromJson(dynamic json) {
    final map = <String, LiquidityRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LiquidityRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LiquidityRequest-objects as value to a dart map
  static Map<String, List<LiquidityRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LiquidityRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LiquidityRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position_id',
    'quantity',
  };
}

