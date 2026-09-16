//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PromoClaimResponseEnvelopeAllOfData {
  /// Returns a new [PromoClaimResponseEnvelopeAllOfData] instance.
  PromoClaimResponseEnvelopeAllOfData({
    required this.state,
    this.email,
    this.campaignName,
    this.promoCredit,
    this.minRewardAmount,
    this.maxRewardAmount,
    this.targetEquity,
    this.expiresAt,
    this.sourceName,
  });

  PromoClaimState state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? campaignName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? promoCredit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? minRewardAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maxRewardAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetEquity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoClaimResponseEnvelopeAllOfData &&
    other.state == state &&
    other.email == email &&
    other.campaignName == campaignName &&
    other.promoCredit == promoCredit &&
    other.minRewardAmount == minRewardAmount &&
    other.maxRewardAmount == maxRewardAmount &&
    other.targetEquity == targetEquity &&
    other.expiresAt == expiresAt &&
    other.sourceName == sourceName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (state.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (campaignName == null ? 0 : campaignName!.hashCode) +
    (promoCredit == null ? 0 : promoCredit!.hashCode) +
    (minRewardAmount == null ? 0 : minRewardAmount!.hashCode) +
    (maxRewardAmount == null ? 0 : maxRewardAmount!.hashCode) +
    (targetEquity == null ? 0 : targetEquity!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (sourceName == null ? 0 : sourceName!.hashCode);

  @override
  String toString() => 'PromoClaimResponseEnvelopeAllOfData[state=$state, email=$email, campaignName=$campaignName, promoCredit=$promoCredit, minRewardAmount=$minRewardAmount, maxRewardAmount=$maxRewardAmount, targetEquity=$targetEquity, expiresAt=$expiresAt, sourceName=$sourceName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'state'] = this.state;
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.campaignName != null) {
      json[r'campaign_name'] = this.campaignName;
    } else {
      json[r'campaign_name'] = null;
    }
    if (this.promoCredit != null) {
      json[r'promo_credit'] = this.promoCredit;
    } else {
      json[r'promo_credit'] = null;
    }
    if (this.minRewardAmount != null) {
      json[r'min_reward_amount'] = this.minRewardAmount;
    } else {
      json[r'min_reward_amount'] = null;
    }
    if (this.maxRewardAmount != null) {
      json[r'max_reward_amount'] = this.maxRewardAmount;
    } else {
      json[r'max_reward_amount'] = null;
    }
    if (this.targetEquity != null) {
      json[r'target_equity'] = this.targetEquity;
    } else {
      json[r'target_equity'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    if (this.sourceName != null) {
      json[r'source_name'] = this.sourceName;
    } else {
      json[r'source_name'] = null;
    }
    return json;
  }

  /// Returns a new [PromoClaimResponseEnvelopeAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoClaimResponseEnvelopeAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'state'), 'Required key "PromoClaimResponseEnvelopeAllOfData[state]" is missing from JSON.');
        assert(json[r'state'] != null, 'Required key "PromoClaimResponseEnvelopeAllOfData[state]" has a null value in JSON.');
        return true;
      }());

      return PromoClaimResponseEnvelopeAllOfData(
        state: PromoClaimState.fromJson(json[r'state'])!,
        email: mapValueOfType<String>(json, r'email'),
        campaignName: mapValueOfType<String>(json, r'campaign_name'),
        promoCredit: mapValueOfType<String>(json, r'promo_credit'),
        minRewardAmount: mapValueOfType<String>(json, r'min_reward_amount'),
        maxRewardAmount: mapValueOfType<String>(json, r'max_reward_amount'),
        targetEquity: mapValueOfType<String>(json, r'target_equity'),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        sourceName: mapValueOfType<String>(json, r'source_name'),
      );
    }
    return null;
  }

  static List<PromoClaimResponseEnvelopeAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoClaimResponseEnvelopeAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoClaimResponseEnvelopeAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoClaimResponseEnvelopeAllOfData> mapFromJson(dynamic json) {
    final map = <String, PromoClaimResponseEnvelopeAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoClaimResponseEnvelopeAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoClaimResponseEnvelopeAllOfData-objects as value to a dart map
  static Map<String, List<PromoClaimResponseEnvelopeAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoClaimResponseEnvelopeAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoClaimResponseEnvelopeAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'state',
  };
}

