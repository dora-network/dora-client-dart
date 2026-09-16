//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateMembership {
  /// Returns a new [AffiliateMembership] instance.
  AffiliateMembership({
    required this.id,
    required this.programId,
    required this.tenantId,
    required this.userId,
    required this.referralCode,
    required this.createdAt,
    required this.programName,
    required this.isActive,
  });

  String id;

  String programId;

  /// Owning tenant for administration. This does not define a referral destination.
  String tenantId;

  String userId;

  /// Reusable referral code, stored uppercase. Letters, digits, hyphens and underscores are accepted; the first character must be a letter or digit. Matching is case-insensitive. Separate from QR claim tokens.
  String referralCode;

  DateTime createdAt;

  String programName;

  bool isActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateMembership &&
    other.id == id &&
    other.programId == programId &&
    other.tenantId == tenantId &&
    other.userId == userId &&
    other.referralCode == referralCode &&
    other.createdAt == createdAt &&
    other.programName == programName &&
    other.isActive == isActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (programId.hashCode) +
    (tenantId.hashCode) +
    (userId.hashCode) +
    (referralCode.hashCode) +
    (createdAt.hashCode) +
    (programName.hashCode) +
    (isActive.hashCode);

  @override
  String toString() => 'AffiliateMembership[id=$id, programId=$programId, tenantId=$tenantId, userId=$userId, referralCode=$referralCode, createdAt=$createdAt, programName=$programName, isActive=$isActive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'program_id'] = this.programId;
      json[r'tenant_id'] = this.tenantId;
      json[r'user_id'] = this.userId;
      json[r'referral_code'] = this.referralCode;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'program_name'] = this.programName;
      json[r'is_active'] = this.isActive;
    return json;
  }

  /// Returns a new [AffiliateMembership] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateMembership? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "AffiliateMembership[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "AffiliateMembership[id]" has a null value in JSON.');
        assert(json.containsKey(r'program_id'), 'Required key "AffiliateMembership[program_id]" is missing from JSON.');
        assert(json[r'program_id'] != null, 'Required key "AffiliateMembership[program_id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "AffiliateMembership[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "AffiliateMembership[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "AffiliateMembership[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "AffiliateMembership[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'referral_code'), 'Required key "AffiliateMembership[referral_code]" is missing from JSON.');
        assert(json[r'referral_code'] != null, 'Required key "AffiliateMembership[referral_code]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "AffiliateMembership[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "AffiliateMembership[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'program_name'), 'Required key "AffiliateMembership[program_name]" is missing from JSON.');
        assert(json[r'program_name'] != null, 'Required key "AffiliateMembership[program_name]" has a null value in JSON.');
        assert(json.containsKey(r'is_active'), 'Required key "AffiliateMembership[is_active]" is missing from JSON.');
        assert(json[r'is_active'] != null, 'Required key "AffiliateMembership[is_active]" has a null value in JSON.');
        return true;
      }());

      return AffiliateMembership(
        id: mapValueOfType<String>(json, r'id')!,
        programId: mapValueOfType<String>(json, r'program_id')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        referralCode: mapValueOfType<String>(json, r'referral_code')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        programName: mapValueOfType<String>(json, r'program_name')!,
        isActive: mapValueOfType<bool>(json, r'is_active')!,
      );
    }
    return null;
  }

  static List<AffiliateMembership> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateMembership>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateMembership.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateMembership> mapFromJson(dynamic json) {
    final map = <String, AffiliateMembership>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateMembership.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateMembership-objects as value to a dart map
  static Map<String, List<AffiliateMembership>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateMembership>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateMembership.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'program_id',
    'tenant_id',
    'user_id',
    'referral_code',
    'created_at',
    'program_name',
    'is_active',
  };
}

