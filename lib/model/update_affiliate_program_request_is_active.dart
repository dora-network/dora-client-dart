//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateAffiliateProgramRequestIsActive {
  /// Returns a new [UpdateAffiliateProgramRequestIsActive] instance.
  UpdateAffiliateProgramRequestIsActive({
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
  bool? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateAffiliateProgramRequestIsActive &&
    other.update == update &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (update.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'UpdateAffiliateProgramRequestIsActive[update=$update, value=$value]';

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

  /// Returns a new [UpdateAffiliateProgramRequestIsActive] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateAffiliateProgramRequestIsActive? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'update'), 'Required key "UpdateAffiliateProgramRequestIsActive[update]" is missing from JSON.');
        assert(json[r'update'] != null, 'Required key "UpdateAffiliateProgramRequestIsActive[update]" has a null value in JSON.');
        return true;
      }());

      return UpdateAffiliateProgramRequestIsActive(
        update: mapValueOfType<bool>(json, r'update')!,
        value: mapValueOfType<bool>(json, r'value'),
      );
    }
    return null;
  }

  static List<UpdateAffiliateProgramRequestIsActive> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateAffiliateProgramRequestIsActive>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateAffiliateProgramRequestIsActive.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateAffiliateProgramRequestIsActive> mapFromJson(dynamic json) {
    final map = <String, UpdateAffiliateProgramRequestIsActive>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateAffiliateProgramRequestIsActive.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateAffiliateProgramRequestIsActive-objects as value to a dart map
  static Map<String, List<UpdateAffiliateProgramRequestIsActive>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateAffiliateProgramRequestIsActive>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateAffiliateProgramRequestIsActive.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'update',
  };
}

