//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TradingChallengeQR {
  /// Returns a new [TradingChallengeQR] instance.
  TradingChallengeQR({
    required this.minRewardAmount,
    required this.maxRewardAmount,
    required this.rewardClaimGraceDays,
    required this.claimedLinksCount,
    required this.issuedLinksCount,
  });

  String minRewardAmount;

  String maxRewardAmount;

  int rewardClaimGraceDays;

  int claimedLinksCount;

  int issuedLinksCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TradingChallengeQR &&
    other.minRewardAmount == minRewardAmount &&
    other.maxRewardAmount == maxRewardAmount &&
    other.rewardClaimGraceDays == rewardClaimGraceDays &&
    other.claimedLinksCount == claimedLinksCount &&
    other.issuedLinksCount == issuedLinksCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (minRewardAmount.hashCode) +
    (maxRewardAmount.hashCode) +
    (rewardClaimGraceDays.hashCode) +
    (claimedLinksCount.hashCode) +
    (issuedLinksCount.hashCode);

  @override
  String toString() => 'TradingChallengeQR[minRewardAmount=$minRewardAmount, maxRewardAmount=$maxRewardAmount, rewardClaimGraceDays=$rewardClaimGraceDays, claimedLinksCount=$claimedLinksCount, issuedLinksCount=$issuedLinksCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'min_reward_amount'] = this.minRewardAmount;
      json[r'max_reward_amount'] = this.maxRewardAmount;
      json[r'reward_claim_grace_days'] = this.rewardClaimGraceDays;
      json[r'claimed_links_count'] = this.claimedLinksCount;
      json[r'issued_links_count'] = this.issuedLinksCount;
    return json;
  }

  /// Returns a new [TradingChallengeQR] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TradingChallengeQR? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'min_reward_amount'), 'Required key "TradingChallengeQR[min_reward_amount]" is missing from JSON.');
        assert(json[r'min_reward_amount'] != null, 'Required key "TradingChallengeQR[min_reward_amount]" has a null value in JSON.');
        assert(json.containsKey(r'max_reward_amount'), 'Required key "TradingChallengeQR[max_reward_amount]" is missing from JSON.');
        assert(json[r'max_reward_amount'] != null, 'Required key "TradingChallengeQR[max_reward_amount]" has a null value in JSON.');
        assert(json.containsKey(r'reward_claim_grace_days'), 'Required key "TradingChallengeQR[reward_claim_grace_days]" is missing from JSON.');
        assert(json[r'reward_claim_grace_days'] != null, 'Required key "TradingChallengeQR[reward_claim_grace_days]" has a null value in JSON.');
        assert(json.containsKey(r'claimed_links_count'), 'Required key "TradingChallengeQR[claimed_links_count]" is missing from JSON.');
        assert(json[r'claimed_links_count'] != null, 'Required key "TradingChallengeQR[claimed_links_count]" has a null value in JSON.');
        assert(json.containsKey(r'issued_links_count'), 'Required key "TradingChallengeQR[issued_links_count]" is missing from JSON.');
        assert(json[r'issued_links_count'] != null, 'Required key "TradingChallengeQR[issued_links_count]" has a null value in JSON.');
        return true;
      }());

      return TradingChallengeQR(
        minRewardAmount: mapValueOfType<String>(json, r'min_reward_amount')!,
        maxRewardAmount: mapValueOfType<String>(json, r'max_reward_amount')!,
        rewardClaimGraceDays: mapValueOfType<int>(json, r'reward_claim_grace_days')!,
        claimedLinksCount: mapValueOfType<int>(json, r'claimed_links_count')!,
        issuedLinksCount: mapValueOfType<int>(json, r'issued_links_count')!,
      );
    }
    return null;
  }

  static List<TradingChallengeQR> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeQR>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeQR.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TradingChallengeQR> mapFromJson(dynamic json) {
    final map = <String, TradingChallengeQR>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TradingChallengeQR.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TradingChallengeQR-objects as value to a dart map
  static Map<String, List<TradingChallengeQR>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TradingChallengeQR>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TradingChallengeQR.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'min_reward_amount',
    'max_reward_amount',
    'reward_claim_grace_days',
    'claimed_links_count',
    'issued_links_count',
  };
}

