//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateFieldInteger {
  /// Returns a new [UpdateFieldInteger] instance.
  UpdateFieldInteger({
    required this.update,
    this.value,
  });

  /// Whether to update the field.
  bool update;

  /// The new value to set for the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateFieldInteger &&
    other.update == update &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (update.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'UpdateFieldInteger[update=$update, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'update'] = this.update;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateFieldInteger] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateFieldInteger? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'update'), 'Required key "UpdateFieldInteger[update]" is missing from JSON.');
        assert(json[r'update'] != null, 'Required key "UpdateFieldInteger[update]" has a null value in JSON.');
        return true;
      }());

      return UpdateFieldInteger(
        update: mapValueOfType<bool>(json, r'update')!,
        value: mapValueOfType<int>(json, r'value'),
      );
    }
    return null;
  }

  static List<UpdateFieldInteger> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateFieldInteger>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateFieldInteger.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateFieldInteger> mapFromJson(dynamic json) {
    final map = <String, UpdateFieldInteger>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateFieldInteger.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateFieldInteger-objects as value to a dart map
  static Map<String, List<UpdateFieldInteger>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateFieldInteger>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateFieldInteger.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'update',
  };
}

