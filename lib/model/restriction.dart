//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Restriction {
  /// Returns a new [Restriction] instance.
  Restriction({
    this.depositLimit,
  });

  /// Maximum deposit allowed (decimal as string)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? depositLimit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Restriction &&
    other.depositLimit == depositLimit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (depositLimit == null ? 0 : depositLimit!.hashCode);

  @override
  String toString() => 'Restriction[depositLimit=$depositLimit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.depositLimit != null) {
      json[r'deposit_limit'] = this.depositLimit;
    } else {
      json[r'deposit_limit'] = null;
    }
    return json;
  }

  /// Returns a new [Restriction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Restriction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Restriction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Restriction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Restriction(
        depositLimit: mapValueOfType<String>(json, r'deposit_limit'),
      );
    }
    return null;
  }

  static List<Restriction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Restriction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Restriction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Restriction> mapFromJson(dynamic json) {
    final map = <String, Restriction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Restriction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Restriction-objects as value to a dart map
  static Map<String, List<Restriction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Restriction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Restriction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

