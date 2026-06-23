//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RevokeAPIKeyData {
  /// Returns a new [RevokeAPIKeyData] instance.
  RevokeAPIKeyData({
    required this.userId,
    required this.keyId,
    required this.label,
    required this.isActive,
  });

  String userId;

  String keyId;

  String label;

  bool isActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokeAPIKeyData &&
    other.userId == userId &&
    other.keyId == keyId &&
    other.label == label &&
    other.isActive == isActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (keyId.hashCode) +
    (label.hashCode) +
    (isActive.hashCode);

  @override
  String toString() => 'RevokeAPIKeyData[userId=$userId, keyId=$keyId, label=$label, isActive=$isActive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'key_id'] = this.keyId;
      json[r'label'] = this.label;
      json[r'is_active'] = this.isActive;
    return json;
  }

  /// Returns a new [RevokeAPIKeyData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokeAPIKeyData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user_id'), 'Required key "RevokeAPIKeyData[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "RevokeAPIKeyData[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'key_id'), 'Required key "RevokeAPIKeyData[key_id]" is missing from JSON.');
        assert(json[r'key_id'] != null, 'Required key "RevokeAPIKeyData[key_id]" has a null value in JSON.');
        assert(json.containsKey(r'label'), 'Required key "RevokeAPIKeyData[label]" is missing from JSON.');
        assert(json[r'label'] != null, 'Required key "RevokeAPIKeyData[label]" has a null value in JSON.');
        assert(json.containsKey(r'is_active'), 'Required key "RevokeAPIKeyData[is_active]" is missing from JSON.');
        assert(json[r'is_active'] != null, 'Required key "RevokeAPIKeyData[is_active]" has a null value in JSON.');
        return true;
      }());

      return RevokeAPIKeyData(
        userId: mapValueOfType<String>(json, r'user_id')!,
        keyId: mapValueOfType<String>(json, r'key_id')!,
        label: mapValueOfType<String>(json, r'label')!,
        isActive: mapValueOfType<bool>(json, r'is_active')!,
      );
    }
    return null;
  }

  static List<RevokeAPIKeyData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokeAPIKeyData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokeAPIKeyData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokeAPIKeyData> mapFromJson(dynamic json) {
    final map = <String, RevokeAPIKeyData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokeAPIKeyData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokeAPIKeyData-objects as value to a dart map
  static Map<String, List<RevokeAPIKeyData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokeAPIKeyData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokeAPIKeyData.listFromJson(entry.value, growable: growable,);
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

