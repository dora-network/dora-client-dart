//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssignAffiliateReferralRequest {
  /// Returns a new [AssignAffiliateReferralRequest] instance.
  AssignAffiliateReferralRequest({
    required this.referralCode,
  });

  /// Existing code, trimmed and matched case-insensitively. Required and nonempty.
  String referralCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssignAffiliateReferralRequest &&
    other.referralCode == referralCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (referralCode.hashCode);

  @override
  String toString() => 'AssignAffiliateReferralRequest[referralCode=$referralCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'referral_code'] = this.referralCode;
    return json;
  }

  /// Returns a new [AssignAffiliateReferralRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssignAffiliateReferralRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'referral_code'), 'Required key "AssignAffiliateReferralRequest[referral_code]" is missing from JSON.');
        assert(json[r'referral_code'] != null, 'Required key "AssignAffiliateReferralRequest[referral_code]" has a null value in JSON.');
        return true;
      }());

      return AssignAffiliateReferralRequest(
        referralCode: mapValueOfType<String>(json, r'referral_code')!,
      );
    }
    return null;
  }

  static List<AssignAffiliateReferralRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignAffiliateReferralRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignAffiliateReferralRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssignAffiliateReferralRequest> mapFromJson(dynamic json) {
    final map = <String, AssignAffiliateReferralRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssignAffiliateReferralRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssignAffiliateReferralRequest-objects as value to a dart map
  static Map<String, List<AssignAffiliateReferralRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssignAffiliateReferralRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssignAffiliateReferralRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'referral_code',
  };
}

