//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PromoAttributionSource {
  /// Returns a new [PromoAttributionSource] instance.
  PromoAttributionSource({
    required this.sourceType,
    required this.sourceId,
    required this.sourceName,
    required this.linksIssued,
    required this.linksClaimed,
    required this.usersFunded,
    required this.usersTraded,
    required this.usersBusted,
    required this.usersRewardEligible,
    required this.usersRewarded,
    required this.totalVolume,
    required this.totalPnl,
    required this.promoCreditIssued,
    required this.rewardsPaid,
  });

  PromoSourceType sourceType;

  String sourceId;

  String sourceName;

  int linksIssued;

  int linksClaimed;

  int usersFunded;

  int usersTraded;

  int usersBusted;

  int usersRewardEligible;

  int usersRewarded;

  String totalVolume;

  String totalPnl;

  String promoCreditIssued;

  String rewardsPaid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoAttributionSource &&
    other.sourceType == sourceType &&
    other.sourceId == sourceId &&
    other.sourceName == sourceName &&
    other.linksIssued == linksIssued &&
    other.linksClaimed == linksClaimed &&
    other.usersFunded == usersFunded &&
    other.usersTraded == usersTraded &&
    other.usersBusted == usersBusted &&
    other.usersRewardEligible == usersRewardEligible &&
    other.usersRewarded == usersRewarded &&
    other.totalVolume == totalVolume &&
    other.totalPnl == totalPnl &&
    other.promoCreditIssued == promoCreditIssued &&
    other.rewardsPaid == rewardsPaid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceType.hashCode) +
    (sourceId.hashCode) +
    (sourceName.hashCode) +
    (linksIssued.hashCode) +
    (linksClaimed.hashCode) +
    (usersFunded.hashCode) +
    (usersTraded.hashCode) +
    (usersBusted.hashCode) +
    (usersRewardEligible.hashCode) +
    (usersRewarded.hashCode) +
    (totalVolume.hashCode) +
    (totalPnl.hashCode) +
    (promoCreditIssued.hashCode) +
    (rewardsPaid.hashCode);

  @override
  String toString() => 'PromoAttributionSource[sourceType=$sourceType, sourceId=$sourceId, sourceName=$sourceName, linksIssued=$linksIssued, linksClaimed=$linksClaimed, usersFunded=$usersFunded, usersTraded=$usersTraded, usersBusted=$usersBusted, usersRewardEligible=$usersRewardEligible, usersRewarded=$usersRewarded, totalVolume=$totalVolume, totalPnl=$totalPnl, promoCreditIssued=$promoCreditIssued, rewardsPaid=$rewardsPaid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source_type'] = this.sourceType;
      json[r'source_id'] = this.sourceId;
      json[r'source_name'] = this.sourceName;
      json[r'links_issued'] = this.linksIssued;
      json[r'links_claimed'] = this.linksClaimed;
      json[r'users_funded'] = this.usersFunded;
      json[r'users_traded'] = this.usersTraded;
      json[r'users_busted'] = this.usersBusted;
      json[r'users_reward_eligible'] = this.usersRewardEligible;
      json[r'users_rewarded'] = this.usersRewarded;
      json[r'total_volume'] = this.totalVolume;
      json[r'total_pnl'] = this.totalPnl;
      json[r'promo_credit_issued'] = this.promoCreditIssued;
      json[r'rewards_paid'] = this.rewardsPaid;
    return json;
  }

  /// Returns a new [PromoAttributionSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoAttributionSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'source_type'), 'Required key "PromoAttributionSource[source_type]" is missing from JSON.');
        assert(json[r'source_type'] != null, 'Required key "PromoAttributionSource[source_type]" has a null value in JSON.');
        assert(json.containsKey(r'source_id'), 'Required key "PromoAttributionSource[source_id]" is missing from JSON.');
        assert(json[r'source_id'] != null, 'Required key "PromoAttributionSource[source_id]" has a null value in JSON.');
        assert(json.containsKey(r'source_name'), 'Required key "PromoAttributionSource[source_name]" is missing from JSON.');
        assert(json[r'source_name'] != null, 'Required key "PromoAttributionSource[source_name]" has a null value in JSON.');
        assert(json.containsKey(r'links_issued'), 'Required key "PromoAttributionSource[links_issued]" is missing from JSON.');
        assert(json[r'links_issued'] != null, 'Required key "PromoAttributionSource[links_issued]" has a null value in JSON.');
        assert(json.containsKey(r'links_claimed'), 'Required key "PromoAttributionSource[links_claimed]" is missing from JSON.');
        assert(json[r'links_claimed'] != null, 'Required key "PromoAttributionSource[links_claimed]" has a null value in JSON.');
        assert(json.containsKey(r'users_funded'), 'Required key "PromoAttributionSource[users_funded]" is missing from JSON.');
        assert(json[r'users_funded'] != null, 'Required key "PromoAttributionSource[users_funded]" has a null value in JSON.');
        assert(json.containsKey(r'users_traded'), 'Required key "PromoAttributionSource[users_traded]" is missing from JSON.');
        assert(json[r'users_traded'] != null, 'Required key "PromoAttributionSource[users_traded]" has a null value in JSON.');
        assert(json.containsKey(r'users_busted'), 'Required key "PromoAttributionSource[users_busted]" is missing from JSON.');
        assert(json[r'users_busted'] != null, 'Required key "PromoAttributionSource[users_busted]" has a null value in JSON.');
        assert(json.containsKey(r'users_reward_eligible'), 'Required key "PromoAttributionSource[users_reward_eligible]" is missing from JSON.');
        assert(json[r'users_reward_eligible'] != null, 'Required key "PromoAttributionSource[users_reward_eligible]" has a null value in JSON.');
        assert(json.containsKey(r'users_rewarded'), 'Required key "PromoAttributionSource[users_rewarded]" is missing from JSON.');
        assert(json[r'users_rewarded'] != null, 'Required key "PromoAttributionSource[users_rewarded]" has a null value in JSON.');
        assert(json.containsKey(r'total_volume'), 'Required key "PromoAttributionSource[total_volume]" is missing from JSON.');
        assert(json[r'total_volume'] != null, 'Required key "PromoAttributionSource[total_volume]" has a null value in JSON.');
        assert(json.containsKey(r'total_pnl'), 'Required key "PromoAttributionSource[total_pnl]" is missing from JSON.');
        assert(json[r'total_pnl'] != null, 'Required key "PromoAttributionSource[total_pnl]" has a null value in JSON.');
        assert(json.containsKey(r'promo_credit_issued'), 'Required key "PromoAttributionSource[promo_credit_issued]" is missing from JSON.');
        assert(json[r'promo_credit_issued'] != null, 'Required key "PromoAttributionSource[promo_credit_issued]" has a null value in JSON.');
        assert(json.containsKey(r'rewards_paid'), 'Required key "PromoAttributionSource[rewards_paid]" is missing from JSON.');
        assert(json[r'rewards_paid'] != null, 'Required key "PromoAttributionSource[rewards_paid]" has a null value in JSON.');
        return true;
      }());

      return PromoAttributionSource(
        sourceType: PromoSourceType.fromJson(json[r'source_type'])!,
        sourceId: mapValueOfType<String>(json, r'source_id')!,
        sourceName: mapValueOfType<String>(json, r'source_name')!,
        linksIssued: mapValueOfType<int>(json, r'links_issued')!,
        linksClaimed: mapValueOfType<int>(json, r'links_claimed')!,
        usersFunded: mapValueOfType<int>(json, r'users_funded')!,
        usersTraded: mapValueOfType<int>(json, r'users_traded')!,
        usersBusted: mapValueOfType<int>(json, r'users_busted')!,
        usersRewardEligible: mapValueOfType<int>(json, r'users_reward_eligible')!,
        usersRewarded: mapValueOfType<int>(json, r'users_rewarded')!,
        totalVolume: mapValueOfType<String>(json, r'total_volume')!,
        totalPnl: mapValueOfType<String>(json, r'total_pnl')!,
        promoCreditIssued: mapValueOfType<String>(json, r'promo_credit_issued')!,
        rewardsPaid: mapValueOfType<String>(json, r'rewards_paid')!,
      );
    }
    return null;
  }

  static List<PromoAttributionSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoAttributionSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoAttributionSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoAttributionSource> mapFromJson(dynamic json) {
    final map = <String, PromoAttributionSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoAttributionSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoAttributionSource-objects as value to a dart map
  static Map<String, List<PromoAttributionSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoAttributionSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoAttributionSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source_type',
    'source_id',
    'source_name',
    'links_issued',
    'links_claimed',
    'users_funded',
    'users_traded',
    'users_busted',
    'users_reward_eligible',
    'users_rewarded',
    'total_volume',
    'total_pnl',
    'promo_credit_issued',
    'rewards_paid',
  };
}

