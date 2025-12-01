//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewIsolatedPositionRequest {
  /// Returns a new [NewIsolatedPositionRequest] instance.
  NewIsolatedPositionRequest({
    required this.globalPositionId,
    required this.assetId,
    required this.quantity,
    this.positionName,
  });

  String globalPositionId;

  String assetId;

  double quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? positionName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewIsolatedPositionRequest &&
    other.globalPositionId == globalPositionId &&
    other.assetId == assetId &&
    other.quantity == quantity &&
    other.positionName == positionName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (globalPositionId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode) +
    (positionName == null ? 0 : positionName!.hashCode);

  @override
  String toString() => 'NewIsolatedPositionRequest[globalPositionId=$globalPositionId, assetId=$assetId, quantity=$quantity, positionName=$positionName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'global_position_id'] = this.globalPositionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    if (this.positionName != null) {
      json[r'position_name'] = this.positionName;
    } else {
      json[r'position_name'] = null;
    }
    return json;
  }

  /// Returns a new [NewIsolatedPositionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewIsolatedPositionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewIsolatedPositionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewIsolatedPositionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewIsolatedPositionRequest(
        globalPositionId: mapValueOfType<String>(json, r'global_position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<double>(json, r'quantity')!,
        positionName: mapValueOfType<String>(json, r'position_name'),
      );
    }
    return null;
  }

  static List<NewIsolatedPositionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewIsolatedPositionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewIsolatedPositionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewIsolatedPositionRequest> mapFromJson(dynamic json) {
    final map = <String, NewIsolatedPositionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewIsolatedPositionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewIsolatedPositionRequest-objects as value to a dart map
  static Map<String, List<NewIsolatedPositionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewIsolatedPositionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewIsolatedPositionRequest.listFromJson(entry.value, growable: growable,);
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

