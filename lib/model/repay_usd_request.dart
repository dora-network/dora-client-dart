//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RepayUSDRequest {
  /// Returns a new [RepayUSDRequest] instance.
  RepayUSDRequest({
    required this.positionId,
  });

  String positionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RepayUSDRequest &&
    other.positionId == positionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (positionId.hashCode);

  @override
  String toString() => 'RepayUSDRequest[positionId=$positionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
    return json;
  }

  /// Returns a new [RepayUSDRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RepayUSDRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'position_id'), 'Required key "RepayUSDRequest[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "RepayUSDRequest[position_id]" has a null value in JSON.');
        return true;
      }());

      return RepayUSDRequest(
        positionId: mapValueOfType<String>(json, r'position_id')!,
      );
    }
    return null;
  }

  static List<RepayUSDRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RepayUSDRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RepayUSDRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RepayUSDRequest> mapFromJson(dynamic json) {
    final map = <String, RepayUSDRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RepayUSDRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RepayUSDRequest-objects as value to a dart map
  static Map<String, List<RepayUSDRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RepayUSDRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RepayUSDRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position_id',
  };
}

