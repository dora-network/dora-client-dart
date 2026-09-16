//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateReferrer {
  /// Returns a new [AffiliateReferrer] instance.
  AffiliateReferrer({
    required this.id,
    required this.programId,
    required this.tenantId,
    required this.userId,
    required this.referralCode,
    required this.createdAt,
  });

  String id;

  String programId;

  /// Owning tenant for administration. This does not define a referral destination.
  String tenantId;

  String userId;

  /// Reusable referral code, stored uppercase. Letters, digits, hyphens and underscores are accepted; the first character must be a letter or digit. Matching is case-insensitive. Separate from QR claim tokens.
  String referralCode;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateReferrer &&
    other.id == id &&
    other.programId == programId &&
    other.tenantId == tenantId &&
    other.userId == userId &&
    other.referralCode == referralCode &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (programId.hashCode) +
    (tenantId.hashCode) +
    (userId.hashCode) +
    (referralCode.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'AffiliateReferrer[id=$id, programId=$programId, tenantId=$tenantId, userId=$userId, referralCode=$referralCode, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'program_id'] = this.programId;
      json[r'tenant_id'] = this.tenantId;
      json[r'user_id'] = this.userId;
      json[r'referral_code'] = this.referralCode;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AffiliateReferrer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateReferrer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "AffiliateReferrer[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "AffiliateReferrer[id]" has a null value in JSON.');
        assert(json.containsKey(r'program_id'), 'Required key "AffiliateReferrer[program_id]" is missing from JSON.');
        assert(json[r'program_id'] != null, 'Required key "AffiliateReferrer[program_id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "AffiliateReferrer[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "AffiliateReferrer[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "AffiliateReferrer[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "AffiliateReferrer[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'referral_code'), 'Required key "AffiliateReferrer[referral_code]" is missing from JSON.');
        assert(json[r'referral_code'] != null, 'Required key "AffiliateReferrer[referral_code]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "AffiliateReferrer[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "AffiliateReferrer[created_at]" has a null value in JSON.');
        return true;
      }());

      return AffiliateReferrer(
        id: mapValueOfType<String>(json, r'id')!,
        programId: mapValueOfType<String>(json, r'program_id')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        referralCode: mapValueOfType<String>(json, r'referral_code')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<AffiliateReferrer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateReferrer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateReferrer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateReferrer> mapFromJson(dynamic json) {
    final map = <String, AffiliateReferrer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateReferrer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateReferrer-objects as value to a dart map
  static Map<String, List<AffiliateReferrer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateReferrer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateReferrer.listFromJson(entry.value, growable: growable,);
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
  };
}

