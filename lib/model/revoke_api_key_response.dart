//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RevokeAPIKeyResponse {
  /// Returns a new [RevokeAPIKeyResponse] instance.
  RevokeAPIKeyResponse({
    this.userId,
    this.keyId,
    this.label,
    this.isActive,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokeAPIKeyResponse &&
    other.userId == userId &&
    other.keyId == keyId &&
    other.label == label &&
    other.isActive == isActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (keyId == null ? 0 : keyId!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode);

  @override
  String toString() => 'RevokeAPIKeyResponse[userId=$userId, keyId=$keyId, label=$label, isActive=$isActive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.keyId != null) {
      json[r'key_id'] = this.keyId;
    } else {
      json[r'key_id'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
    return json;
  }

  /// Returns a new [RevokeAPIKeyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokeAPIKeyResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevokeAPIKeyResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevokeAPIKeyResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevokeAPIKeyResponse(
        userId: mapValueOfType<String>(json, r'user_id'),
        keyId: mapValueOfType<String>(json, r'key_id'),
        label: mapValueOfType<String>(json, r'label'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
      );
    }
    return null;
  }

  static List<RevokeAPIKeyResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokeAPIKeyResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokeAPIKeyResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokeAPIKeyResponse> mapFromJson(dynamic json) {
    final map = <String, RevokeAPIKeyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokeAPIKeyResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokeAPIKeyResponse-objects as value to a dart map
  static Map<String, List<RevokeAPIKeyResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokeAPIKeyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokeAPIKeyResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

