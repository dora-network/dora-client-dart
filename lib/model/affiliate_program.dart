//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateProgram {
  /// Returns a new [AffiliateProgram] instance.
  AffiliateProgram({
    required this.id,
    required this.tenantId,
    required this.name,
    required this.description,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  /// Owning tenant for administration. This does not define a referral destination.
  String tenantId;

  /// No surrounding whitespace or control characters.
  String name;

  /// Must not contain NUL characters.
  String description;

  /// Inactive programs retain registrations, but cannot issue or resolve codes.
  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateProgram &&
    other.id == id &&
    other.tenantId == tenantId &&
    other.name == name &&
    other.description == description &&
    other.isActive == isActive &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (tenantId.hashCode) +
    (name.hashCode) +
    (description.hashCode) +
    (isActive.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AffiliateProgram[id=$id, tenantId=$tenantId, name=$name, description=$description, isActive=$isActive, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'tenant_id'] = this.tenantId;
      json[r'name'] = this.name;
      json[r'description'] = this.description;
      json[r'is_active'] = this.isActive;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AffiliateProgram] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateProgram? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "AffiliateProgram[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "AffiliateProgram[id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "AffiliateProgram[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "AffiliateProgram[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "AffiliateProgram[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "AffiliateProgram[name]" has a null value in JSON.');
        assert(json.containsKey(r'description'), 'Required key "AffiliateProgram[description]" is missing from JSON.');
        assert(json[r'description'] != null, 'Required key "AffiliateProgram[description]" has a null value in JSON.');
        assert(json.containsKey(r'is_active'), 'Required key "AffiliateProgram[is_active]" is missing from JSON.');
        assert(json[r'is_active'] != null, 'Required key "AffiliateProgram[is_active]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "AffiliateProgram[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "AffiliateProgram[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "AffiliateProgram[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "AffiliateProgram[updated_at]" has a null value in JSON.');
        return true;
      }());

      return AffiliateProgram(
        id: mapValueOfType<String>(json, r'id')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        isActive: mapValueOfType<bool>(json, r'is_active')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<AffiliateProgram> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateProgram>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateProgram.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateProgram> mapFromJson(dynamic json) {
    final map = <String, AffiliateProgram>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateProgram.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateProgram-objects as value to a dart map
  static Map<String, List<AffiliateProgram>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateProgram>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateProgram.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'tenant_id',
    'name',
    'description',
    'is_active',
    'created_at',
    'updated_at',
  };
}

