//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegisterAffiliateReferrerRequest {
  /// Returns a new [RegisterAffiliateReferrerRequest] instance.
  RegisterAffiliateReferrerRequest({
    required this.userId,
    this.referralCode,
  });

  /// Existing, nonzero DORA user ID in the program owning tenant.
  String userId;

  /// Optional custom code: 3 to 64 letters, digits, hyphens or underscores after trimming, starting with a letter or digit. Stored uppercase and unique across all programs and tenants. Omitted, null or empty generates a random code.
  String? referralCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterAffiliateReferrerRequest &&
    other.userId == userId &&
    other.referralCode == referralCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (referralCode == null ? 0 : referralCode!.hashCode);

  @override
  String toString() => 'RegisterAffiliateReferrerRequest[userId=$userId, referralCode=$referralCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
    if (this.referralCode != null) {
      json[r'referral_code'] = this.referralCode;
    } else {
      json[r'referral_code'] = null;
    }
    return json;
  }

  /// Returns a new [RegisterAffiliateReferrerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterAffiliateReferrerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user_id'), 'Required key "RegisterAffiliateReferrerRequest[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "RegisterAffiliateReferrerRequest[user_id]" has a null value in JSON.');
        return true;
      }());

      return RegisterAffiliateReferrerRequest(
        userId: mapValueOfType<String>(json, r'user_id')!,
        referralCode: mapValueOfType<String>(json, r'referral_code'),
      );
    }
    return null;
  }

  static List<RegisterAffiliateReferrerRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterAffiliateReferrerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterAffiliateReferrerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterAffiliateReferrerRequest> mapFromJson(dynamic json) {
    final map = <String, RegisterAffiliateReferrerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterAffiliateReferrerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterAffiliateReferrerRequest-objects as value to a dart map
  static Map<String, List<RegisterAffiliateReferrerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterAffiliateReferrerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterAffiliateReferrerRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
  };
}

