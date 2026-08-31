//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateFieldDateTime {
  /// Returns a new [UpdateFieldDateTime] instance.
  UpdateFieldDateTime({
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
  DateTime? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateFieldDateTime &&
    other.update == update &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (update.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'UpdateFieldDateTime[update=$update, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'update'] = this.update;
    if (this.value != null) {
      json[r'value'] = this.value!.toUtc().toIso8601String();
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateFieldDateTime] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateFieldDateTime? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'update'), 'Required key "UpdateFieldDateTime[update]" is missing from JSON.');
        assert(json[r'update'] != null, 'Required key "UpdateFieldDateTime[update]" has a null value in JSON.');
        return true;
      }());

      return UpdateFieldDateTime(
        update: mapValueOfType<bool>(json, r'update')!,
        value: mapDateTime(json, r'value', r''),
      );
    }
    return null;
  }

  static List<UpdateFieldDateTime> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateFieldDateTime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateFieldDateTime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateFieldDateTime> mapFromJson(dynamic json) {
    final map = <String, UpdateFieldDateTime>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateFieldDateTime.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateFieldDateTime-objects as value to a dart map
  static Map<String, List<UpdateFieldDateTime>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateFieldDateTime>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateFieldDateTime.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'update',
  };
}

