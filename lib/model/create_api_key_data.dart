//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAPIKeyData {
  /// Returns a new [CreateAPIKeyData] instance.
  CreateAPIKeyData({
    required this.keyId,
    required this.apiKey,
    required this.label,
  });

  String keyId;

  String apiKey;

  String label;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAPIKeyData &&
    other.keyId == keyId &&
    other.apiKey == apiKey &&
    other.label == label;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keyId.hashCode) +
    (apiKey.hashCode) +
    (label.hashCode);

  @override
  String toString() => 'CreateAPIKeyData[keyId=$keyId, apiKey=$apiKey, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key_id'] = this.keyId;
      json[r'api_key'] = this.apiKey;
      json[r'label'] = this.label;
    return json;
  }

  /// Returns a new [CreateAPIKeyData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAPIKeyData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'key_id'), 'Required key "CreateAPIKeyData[key_id]" is missing from JSON.');
        assert(json[r'key_id'] != null, 'Required key "CreateAPIKeyData[key_id]" has a null value in JSON.');
        assert(json.containsKey(r'api_key'), 'Required key "CreateAPIKeyData[api_key]" is missing from JSON.');
        assert(json[r'api_key'] != null, 'Required key "CreateAPIKeyData[api_key]" has a null value in JSON.');
        assert(json.containsKey(r'label'), 'Required key "CreateAPIKeyData[label]" is missing from JSON.');
        assert(json[r'label'] != null, 'Required key "CreateAPIKeyData[label]" has a null value in JSON.');
        return true;
      }());

      return CreateAPIKeyData(
        keyId: mapValueOfType<String>(json, r'key_id')!,
        apiKey: mapValueOfType<String>(json, r'api_key')!,
        label: mapValueOfType<String>(json, r'label')!,
      );
    }
    return null;
  }

  static List<CreateAPIKeyData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAPIKeyData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAPIKeyData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAPIKeyData> mapFromJson(dynamic json) {
    final map = <String, CreateAPIKeyData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAPIKeyData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAPIKeyData-objects as value to a dart map
  static Map<String, List<CreateAPIKeyData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAPIKeyData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAPIKeyData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key_id',
    'api_key',
    'label',
  };
}

