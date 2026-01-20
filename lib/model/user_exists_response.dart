//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserExistsResponse {
  /// Returns a new [UserExistsResponse] instance.
  UserExistsResponse({
    this.emailExists,
    this.firebaseSet,
    this.shouldCreateUser,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailExists;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? firebaseSet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? shouldCreateUser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserExistsResponse &&
    other.emailExists == emailExists &&
    other.firebaseSet == firebaseSet &&
    other.shouldCreateUser == shouldCreateUser;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailExists == null ? 0 : emailExists!.hashCode) +
    (firebaseSet == null ? 0 : firebaseSet!.hashCode) +
    (shouldCreateUser == null ? 0 : shouldCreateUser!.hashCode);

  @override
  String toString() => 'UserExistsResponse[emailExists=$emailExists, firebaseSet=$firebaseSet, shouldCreateUser=$shouldCreateUser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.emailExists != null) {
      json[r'email_exists'] = this.emailExists;
    } else {
      json[r'email_exists'] = null;
    }
    if (this.firebaseSet != null) {
      json[r'firebase_set'] = this.firebaseSet;
    } else {
      json[r'firebase_set'] = null;
    }
    if (this.shouldCreateUser != null) {
      json[r'should_create_user'] = this.shouldCreateUser;
    } else {
      json[r'should_create_user'] = null;
    }
    return json;
  }

  /// Returns a new [UserExistsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserExistsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserExistsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserExistsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserExistsResponse(
        emailExists: mapValueOfType<bool>(json, r'email_exists'),
        firebaseSet: mapValueOfType<bool>(json, r'firebase_set'),
        shouldCreateUser: mapValueOfType<bool>(json, r'should_create_user'),
      );
    }
    return null;
  }

  static List<UserExistsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserExistsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserExistsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserExistsResponse> mapFromJson(dynamic json) {
    final map = <String, UserExistsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserExistsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserExistsResponse-objects as value to a dart map
  static Map<String, List<UserExistsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserExistsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserExistsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

