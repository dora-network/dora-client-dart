//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserValueResponseEnvelope {
  /// Returns a new [UserValueResponseEnvelope] instance.
  UserValueResponseEnvelope({
    this.data,
    this.error,
    required this.metadata,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserValue? data;

  /// The error message. Present for error (non-2xx) responses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Metadata about the response, including status code and trace information.
  Metadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserValueResponseEnvelope &&
    other.data == data &&
    other.error == error &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'UserValueResponseEnvelope[data=$data, error=$error, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [UserValueResponseEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserValueResponseEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserValueResponseEnvelope[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserValueResponseEnvelope[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserValueResponseEnvelope(
        data: UserValue.fromJson(json[r'data']),
        error: mapValueOfType<String>(json, r'error'),
        metadata: Metadata.fromJson(json[r'metadata'])!,
      );
    }
    return null;
  }

  static List<UserValueResponseEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserValueResponseEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserValueResponseEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserValueResponseEnvelope> mapFromJson(dynamic json) {
    final map = <String, UserValueResponseEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserValueResponseEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserValueResponseEnvelope-objects as value to a dart map
  static Map<String, List<UserValueResponseEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserValueResponseEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserValueResponseEnvelope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'metadata',
  };
}

