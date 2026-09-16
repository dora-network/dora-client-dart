//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAffiliateProgramRequest {
  /// Returns a new [CreateAffiliateProgramRequest] instance.
  CreateAffiliateProgramRequest({
    required this.tenantId,
    required this.name,
    this.description = '',
    this.isActive = false,
  });

  /// Owning tenant for administration. This does not define a referral destination.
  String tenantId;

  /// No surrounding whitespace or control characters.
  String name;

  /// Omitted or null defaults to an empty description.
  String? description;

  /// Inactive programs retain registrations, but cannot issue or resolve codes. Set true to create an active program.
  bool isActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAffiliateProgramRequest &&
    other.tenantId == tenantId &&
    other.name == name &&
    other.description == description &&
    other.isActive == isActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tenantId.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (isActive.hashCode);

  @override
  String toString() => 'CreateAffiliateProgramRequest[tenantId=$tenantId, name=$name, description=$description, isActive=$isActive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tenant_id'] = this.tenantId;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'is_active'] = this.isActive;
    return json;
  }

  /// Returns a new [CreateAffiliateProgramRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAffiliateProgramRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'tenant_id'), 'Required key "CreateAffiliateProgramRequest[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "CreateAffiliateProgramRequest[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "CreateAffiliateProgramRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateAffiliateProgramRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateAffiliateProgramRequest(
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description') ?? '',
        isActive: mapValueOfType<bool>(json, r'is_active') ?? false,
      );
    }
    return null;
  }

  static List<CreateAffiliateProgramRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAffiliateProgramRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAffiliateProgramRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAffiliateProgramRequest> mapFromJson(dynamic json) {
    final map = <String, CreateAffiliateProgramRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAffiliateProgramRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAffiliateProgramRequest-objects as value to a dart map
  static Map<String, List<CreateAffiliateProgramRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAffiliateProgramRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAffiliateProgramRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tenant_id',
    'name',
  };
}

