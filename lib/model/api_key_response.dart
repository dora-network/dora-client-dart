//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIKeyResponse {
  /// Returns a new [APIKeyResponse] instance.
  APIKeyResponse({
    required this.userId,
    required this.keyId,
    required this.label,
    this.expiresAt,
    required this.isActive,
  });

  String userId;

  String keyId;

  String label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  bool isActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIKeyResponse &&
    other.userId == userId &&
    other.keyId == keyId &&
    other.label == label &&
    other.expiresAt == expiresAt &&
    other.isActive == isActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (keyId.hashCode) +
    (label.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (isActive.hashCode);

  @override
  String toString() => 'APIKeyResponse[userId=$userId, keyId=$keyId, label=$label, expiresAt=$expiresAt, isActive=$isActive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'key_id'] = this.keyId;
      json[r'label'] = this.label;
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
      json[r'is_active'] = this.isActive;
    return json;
  }

  /// Returns a new [APIKeyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIKeyResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIKeyResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIKeyResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIKeyResponse(
        userId: mapValueOfType<String>(json, r'user_id')!,
        keyId: mapValueOfType<String>(json, r'key_id')!,
        label: mapValueOfType<String>(json, r'label')!,
        expiresAt: mapDateTime(json, r'expires_at', r''),
        isActive: mapValueOfType<bool>(json, r'is_active')!,
      );
    }
    return null;
  }

  static List<APIKeyResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIKeyResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIKeyResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIKeyResponse> mapFromJson(dynamic json) {
    final map = <String, APIKeyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIKeyResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIKeyResponse-objects as value to a dart map
  static Map<String, List<APIKeyResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIKeyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIKeyResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'key_id',
    'label',
    'is_active',
  };
}

