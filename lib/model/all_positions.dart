//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AllPositions {
  /// Returns a new [AllPositions] instance.
  AllPositions({
    this.allPositions = const {},
  });

  Map<String, Map<String, Map<String, Position>>> allPositions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AllPositions &&
    _deepEquality.equals(other.allPositions, allPositions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allPositions.hashCode);

  @override
  String toString() => 'AllPositions[allPositions=$allPositions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'all_positions'] = this.allPositions;
    return json;
  }

  /// Returns a new [AllPositions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AllPositions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'all_positions'), 'Required key "AllPositions[all_positions]" is missing from JSON.');
        assert(json[r'all_positions'] != null, 'Required key "AllPositions[all_positions]" has a null value in JSON.');
        return true;
      }());

      return AllPositions(
        allPositions: Map.mapFromJson(json[r'all_positions']),
      );
    }
    return null;
  }

  static List<AllPositions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AllPositions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AllPositions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AllPositions> mapFromJson(dynamic json) {
    final map = <String, AllPositions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AllPositions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AllPositions-objects as value to a dart map
  static Map<String, List<AllPositions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AllPositions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AllPositions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'all_positions',
  };
}

