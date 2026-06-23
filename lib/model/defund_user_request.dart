//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DefundUserRequest {
  /// Returns a new [DefundUserRequest] instance.
  DefundUserRequest({
    required this.assetId,
    required this.quantity,
  });

  String assetId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DefundUserRequest &&
    other.assetId == assetId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'DefundUserRequest[assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [DefundUserRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DefundUserRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'asset_id'), 'Required key "DefundUserRequest[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "DefundUserRequest[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'quantity'), 'Required key "DefundUserRequest[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "DefundUserRequest[quantity]" has a null value in JSON.');
        return true;
      }());

      return DefundUserRequest(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<DefundUserRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DefundUserRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DefundUserRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DefundUserRequest> mapFromJson(dynamic json) {
    final map = <String, DefundUserRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DefundUserRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DefundUserRequest-objects as value to a dart map
  static Map<String, List<DefundUserRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DefundUserRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DefundUserRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'quantity',
  };
}

