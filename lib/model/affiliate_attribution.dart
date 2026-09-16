//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateAttribution {
  /// Returns a new [AffiliateAttribution] instance.
  AffiliateAttribution({
    required this.referredUserId,
    required this.programId,
    required this.referrerId,
    required this.referrerUserId,
    required this.tenantId,
    required this.signupSource,
    required this.createdAt,
    required this.referralCode,
  });

  String referredUserId;

  String programId;

  String referrerId;

  String referrerUserId;

  String tenantId;

  /// Signup hostname when assigned at signup; empty for an assignment made later.
  String signupSource;

  /// Immutable assignment time; activity begins counting from this timestamp.
  DateTime createdAt;

  String referralCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateAttribution &&
    other.referredUserId == referredUserId &&
    other.programId == programId &&
    other.referrerId == referrerId &&
    other.referrerUserId == referrerUserId &&
    other.tenantId == tenantId &&
    other.signupSource == signupSource &&
    other.createdAt == createdAt &&
    other.referralCode == referralCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (referredUserId.hashCode) +
    (programId.hashCode) +
    (referrerId.hashCode) +
    (referrerUserId.hashCode) +
    (tenantId.hashCode) +
    (signupSource.hashCode) +
    (createdAt.hashCode) +
    (referralCode.hashCode);

  @override
  String toString() => 'AffiliateAttribution[referredUserId=$referredUserId, programId=$programId, referrerId=$referrerId, referrerUserId=$referrerUserId, tenantId=$tenantId, signupSource=$signupSource, createdAt=$createdAt, referralCode=$referralCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'referred_user_id'] = this.referredUserId;
      json[r'program_id'] = this.programId;
      json[r'referrer_id'] = this.referrerId;
      json[r'referrer_user_id'] = this.referrerUserId;
      json[r'tenant_id'] = this.tenantId;
      json[r'signup_source'] = this.signupSource;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'referral_code'] = this.referralCode;
    return json;
  }

  /// Returns a new [AffiliateAttribution] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateAttribution? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'referred_user_id'), 'Required key "AffiliateAttribution[referred_user_id]" is missing from JSON.');
        assert(json[r'referred_user_id'] != null, 'Required key "AffiliateAttribution[referred_user_id]" has a null value in JSON.');
        assert(json.containsKey(r'program_id'), 'Required key "AffiliateAttribution[program_id]" is missing from JSON.');
        assert(json[r'program_id'] != null, 'Required key "AffiliateAttribution[program_id]" has a null value in JSON.');
        assert(json.containsKey(r'referrer_id'), 'Required key "AffiliateAttribution[referrer_id]" is missing from JSON.');
        assert(json[r'referrer_id'] != null, 'Required key "AffiliateAttribution[referrer_id]" has a null value in JSON.');
        assert(json.containsKey(r'referrer_user_id'), 'Required key "AffiliateAttribution[referrer_user_id]" is missing from JSON.');
        assert(json[r'referrer_user_id'] != null, 'Required key "AffiliateAttribution[referrer_user_id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "AffiliateAttribution[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "AffiliateAttribution[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'signup_source'), 'Required key "AffiliateAttribution[signup_source]" is missing from JSON.');
        assert(json[r'signup_source'] != null, 'Required key "AffiliateAttribution[signup_source]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "AffiliateAttribution[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "AffiliateAttribution[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'referral_code'), 'Required key "AffiliateAttribution[referral_code]" is missing from JSON.');
        assert(json[r'referral_code'] != null, 'Required key "AffiliateAttribution[referral_code]" has a null value in JSON.');
        return true;
      }());

      return AffiliateAttribution(
        referredUserId: mapValueOfType<String>(json, r'referred_user_id')!,
        programId: mapValueOfType<String>(json, r'program_id')!,
        referrerId: mapValueOfType<String>(json, r'referrer_id')!,
        referrerUserId: mapValueOfType<String>(json, r'referrer_user_id')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        signupSource: mapValueOfType<String>(json, r'signup_source')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        referralCode: mapValueOfType<String>(json, r'referral_code')!,
      );
    }
    return null;
  }

  static List<AffiliateAttribution> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateAttribution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateAttribution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateAttribution> mapFromJson(dynamic json) {
    final map = <String, AffiliateAttribution>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateAttribution.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateAttribution-objects as value to a dart map
  static Map<String, List<AffiliateAttribution>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateAttribution>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateAttribution.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'referred_user_id',
    'program_id',
    'referrer_id',
    'referrer_user_id',
    'tenant_id',
    'signup_source',
    'created_at',
    'referral_code',
  };
}

