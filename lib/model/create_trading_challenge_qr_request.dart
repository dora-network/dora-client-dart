//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTradingChallengeQRRequest {
  /// Returns a new [CreateTradingChallengeQRRequest] instance.
  CreateTradingChallengeQRRequest({
    required this.minRewardAmount,
    required this.maxRewardAmount,
    this.rewardClaimGraceDays = 14,
  });

  /// Must be greater than zero and greater than initial_user_balance.
  String minRewardAmount;

  /// Must be greater than or equal to min_reward_amount.
  String maxRewardAmount;

  /// Minimum value: 0
  int rewardClaimGraceDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTradingChallengeQRRequest &&
    other.minRewardAmount == minRewardAmount &&
    other.maxRewardAmount == maxRewardAmount &&
    other.rewardClaimGraceDays == rewardClaimGraceDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (minRewardAmount.hashCode) +
    (maxRewardAmount.hashCode) +
    (rewardClaimGraceDays.hashCode);

  @override
  String toString() => 'CreateTradingChallengeQRRequest[minRewardAmount=$minRewardAmount, maxRewardAmount=$maxRewardAmount, rewardClaimGraceDays=$rewardClaimGraceDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'min_reward_amount'] = this.minRewardAmount;
      json[r'max_reward_amount'] = this.maxRewardAmount;
      json[r'reward_claim_grace_days'] = this.rewardClaimGraceDays;
    return json;
  }

  /// Returns a new [CreateTradingChallengeQRRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTradingChallengeQRRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'min_reward_amount'), 'Required key "CreateTradingChallengeQRRequest[min_reward_amount]" is missing from JSON.');
        assert(json[r'min_reward_amount'] != null, 'Required key "CreateTradingChallengeQRRequest[min_reward_amount]" has a null value in JSON.');
        assert(json.containsKey(r'max_reward_amount'), 'Required key "CreateTradingChallengeQRRequest[max_reward_amount]" is missing from JSON.');
        assert(json[r'max_reward_amount'] != null, 'Required key "CreateTradingChallengeQRRequest[max_reward_amount]" has a null value in JSON.');
        return true;
      }());

      return CreateTradingChallengeQRRequest(
        minRewardAmount: mapValueOfType<String>(json, r'min_reward_amount')!,
        maxRewardAmount: mapValueOfType<String>(json, r'max_reward_amount')!,
        rewardClaimGraceDays: mapValueOfType<int>(json, r'reward_claim_grace_days') ?? 14,
      );
    }
    return null;
  }

  static List<CreateTradingChallengeQRRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTradingChallengeQRRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTradingChallengeQRRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTradingChallengeQRRequest> mapFromJson(dynamic json) {
    final map = <String, CreateTradingChallengeQRRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTradingChallengeQRRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTradingChallengeQRRequest-objects as value to a dart map
  static Map<String, List<CreateTradingChallengeQRRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTradingChallengeQRRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTradingChallengeQRRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'min_reward_amount',
    'max_reward_amount',
  };
}

