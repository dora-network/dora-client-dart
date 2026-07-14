//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermitTypedData {
  /// Returns a new [PermitTypedData] instance.
  PermitTypedData({
    this.types = const {},
    required this.primaryType,
    required this.domain,
    required this.message,
  });

  /// EIP-712 type definitions, keyed by type name ('EIP712Domain' and 'Permit').
  Map<String, List<TypedDataField>> types;

  /// Always 'Permit'.
  String primaryType;

  PermitDomain domain;

  PermitMessage message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermitTypedData &&
    _deepEquality.equals(other.types, types) &&
    other.primaryType == primaryType &&
    other.domain == domain &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (types.hashCode) +
    (primaryType.hashCode) +
    (domain.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'PermitTypedData[types=$types, primaryType=$primaryType, domain=$domain, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'types'] = this.types;
      json[r'primaryType'] = this.primaryType;
      json[r'domain'] = this.domain;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [PermitTypedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermitTypedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'types'), 'Required key "PermitTypedData[types]" is missing from JSON.');
        assert(json[r'types'] != null, 'Required key "PermitTypedData[types]" has a null value in JSON.');
        assert(json.containsKey(r'primaryType'), 'Required key "PermitTypedData[primaryType]" is missing from JSON.');
        assert(json[r'primaryType'] != null, 'Required key "PermitTypedData[primaryType]" has a null value in JSON.');
        assert(json.containsKey(r'domain'), 'Required key "PermitTypedData[domain]" is missing from JSON.');
        assert(json[r'domain'] != null, 'Required key "PermitTypedData[domain]" has a null value in JSON.');
        assert(json.containsKey(r'message'), 'Required key "PermitTypedData[message]" is missing from JSON.');
        assert(json[r'message'] != null, 'Required key "PermitTypedData[message]" has a null value in JSON.');
        return true;
      }());

      return PermitTypedData(
        types: json[r'types'] == null
          ? const {}
            : TypedDataField.mapListFromJson(json[r'types']),
        primaryType: mapValueOfType<String>(json, r'primaryType')!,
        domain: PermitDomain.fromJson(json[r'domain'])!,
        message: PermitMessage.fromJson(json[r'message'])!,
      );
    }
    return null;
  }

  static List<PermitTypedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PermitTypedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PermitTypedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PermitTypedData> mapFromJson(dynamic json) {
    final map = <String, PermitTypedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PermitTypedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PermitTypedData-objects as value to a dart map
  static Map<String, List<PermitTypedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PermitTypedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PermitTypedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'types',
    'primaryType',
    'domain',
    'message',
  };
}

