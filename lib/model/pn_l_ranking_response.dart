//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PnLRankingResponse {
  /// Returns a new [PnLRankingResponse] instance.
  PnLRankingResponse({
    required this.userId,
    required this.firstName,
    required this.totalPnl,
    required this.realizedPnl,
    required this.totalTrades,
    required this.winningTrades,
    required this.losingTrades,
    required this.winRate,
    required this.dailyTradingVolume,
    required this.totalTradingVolume,
    required this.activeTradingDays,
    required this.activated,
    required this.kycApproved,
  });

  String userId;

  String firstName;

  String totalPnl;

  /// Cumulative realized PnL across the user's full trading lifetime.
  String realizedPnl;

  int totalTrades;

  int winningTrades;

  int losingTrades;

  String winRate;

  /// Executed trading volume for the current UTC day.
  String dailyTradingVolume;

  /// Cumulative executed trading volume across all UTC trading days.
  String totalTradingVolume;

  /// Number of distinct UTC days on which the user has at least one executed fill.
  int activeTradingDays;

  /// True once the user has traded on at least 5 distinct UTC days.
  bool activated;

  /// Whether the user is currently considered KYC/verification approved.
  bool kycApproved;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PnLRankingResponse &&
    other.userId == userId &&
    other.firstName == firstName &&
    other.totalPnl == totalPnl &&
    other.realizedPnl == realizedPnl &&
    other.totalTrades == totalTrades &&
    other.winningTrades == winningTrades &&
    other.losingTrades == losingTrades &&
    other.winRate == winRate &&
    other.dailyTradingVolume == dailyTradingVolume &&
    other.totalTradingVolume == totalTradingVolume &&
    other.activeTradingDays == activeTradingDays &&
    other.activated == activated &&
    other.kycApproved == kycApproved;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (firstName.hashCode) +
    (totalPnl.hashCode) +
    (realizedPnl.hashCode) +
    (totalTrades.hashCode) +
    (winningTrades.hashCode) +
    (losingTrades.hashCode) +
    (winRate.hashCode) +
    (dailyTradingVolume.hashCode) +
    (totalTradingVolume.hashCode) +
    (activeTradingDays.hashCode) +
    (activated.hashCode) +
    (kycApproved.hashCode);

  @override
  String toString() => 'PnLRankingResponse[userId=$userId, firstName=$firstName, totalPnl=$totalPnl, realizedPnl=$realizedPnl, totalTrades=$totalTrades, winningTrades=$winningTrades, losingTrades=$losingTrades, winRate=$winRate, dailyTradingVolume=$dailyTradingVolume, totalTradingVolume=$totalTradingVolume, activeTradingDays=$activeTradingDays, activated=$activated, kycApproved=$kycApproved]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'first_name'] = this.firstName;
      json[r'total_pnl'] = this.totalPnl;
      json[r'realized_pnl'] = this.realizedPnl;
      json[r'total_trades'] = this.totalTrades;
      json[r'winning_trades'] = this.winningTrades;
      json[r'losing_trades'] = this.losingTrades;
      json[r'win_rate'] = this.winRate;
      json[r'daily_trading_volume'] = this.dailyTradingVolume;
      json[r'total_trading_volume'] = this.totalTradingVolume;
      json[r'active_trading_days'] = this.activeTradingDays;
      json[r'activated'] = this.activated;
      json[r'kyc_approved'] = this.kycApproved;
    return json;
  }

  /// Returns a new [PnLRankingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PnLRankingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user_id'), 'Required key "PnLRankingResponse[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "PnLRankingResponse[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'first_name'), 'Required key "PnLRankingResponse[first_name]" is missing from JSON.');
        assert(json[r'first_name'] != null, 'Required key "PnLRankingResponse[first_name]" has a null value in JSON.');
        assert(json.containsKey(r'total_pnl'), 'Required key "PnLRankingResponse[total_pnl]" is missing from JSON.');
        assert(json[r'total_pnl'] != null, 'Required key "PnLRankingResponse[total_pnl]" has a null value in JSON.');
        assert(json.containsKey(r'realized_pnl'), 'Required key "PnLRankingResponse[realized_pnl]" is missing from JSON.');
        assert(json[r'realized_pnl'] != null, 'Required key "PnLRankingResponse[realized_pnl]" has a null value in JSON.');
        assert(json.containsKey(r'total_trades'), 'Required key "PnLRankingResponse[total_trades]" is missing from JSON.');
        assert(json[r'total_trades'] != null, 'Required key "PnLRankingResponse[total_trades]" has a null value in JSON.');
        assert(json.containsKey(r'winning_trades'), 'Required key "PnLRankingResponse[winning_trades]" is missing from JSON.');
        assert(json[r'winning_trades'] != null, 'Required key "PnLRankingResponse[winning_trades]" has a null value in JSON.');
        assert(json.containsKey(r'losing_trades'), 'Required key "PnLRankingResponse[losing_trades]" is missing from JSON.');
        assert(json[r'losing_trades'] != null, 'Required key "PnLRankingResponse[losing_trades]" has a null value in JSON.');
        assert(json.containsKey(r'win_rate'), 'Required key "PnLRankingResponse[win_rate]" is missing from JSON.');
        assert(json[r'win_rate'] != null, 'Required key "PnLRankingResponse[win_rate]" has a null value in JSON.');
        assert(json.containsKey(r'daily_trading_volume'), 'Required key "PnLRankingResponse[daily_trading_volume]" is missing from JSON.');
        assert(json[r'daily_trading_volume'] != null, 'Required key "PnLRankingResponse[daily_trading_volume]" has a null value in JSON.');
        assert(json.containsKey(r'total_trading_volume'), 'Required key "PnLRankingResponse[total_trading_volume]" is missing from JSON.');
        assert(json[r'total_trading_volume'] != null, 'Required key "PnLRankingResponse[total_trading_volume]" has a null value in JSON.');
        assert(json.containsKey(r'active_trading_days'), 'Required key "PnLRankingResponse[active_trading_days]" is missing from JSON.');
        assert(json[r'active_trading_days'] != null, 'Required key "PnLRankingResponse[active_trading_days]" has a null value in JSON.');
        assert(json.containsKey(r'activated'), 'Required key "PnLRankingResponse[activated]" is missing from JSON.');
        assert(json[r'activated'] != null, 'Required key "PnLRankingResponse[activated]" has a null value in JSON.');
        assert(json.containsKey(r'kyc_approved'), 'Required key "PnLRankingResponse[kyc_approved]" is missing from JSON.');
        assert(json[r'kyc_approved'] != null, 'Required key "PnLRankingResponse[kyc_approved]" has a null value in JSON.');
        return true;
      }());

      return PnLRankingResponse(
        userId: mapValueOfType<String>(json, r'user_id')!,
        firstName: mapValueOfType<String>(json, r'first_name')!,
        totalPnl: mapValueOfType<String>(json, r'total_pnl')!,
        realizedPnl: mapValueOfType<String>(json, r'realized_pnl')!,
        totalTrades: mapValueOfType<int>(json, r'total_trades')!,
        winningTrades: mapValueOfType<int>(json, r'winning_trades')!,
        losingTrades: mapValueOfType<int>(json, r'losing_trades')!,
        winRate: mapValueOfType<String>(json, r'win_rate')!,
        dailyTradingVolume: mapValueOfType<String>(json, r'daily_trading_volume')!,
        totalTradingVolume: mapValueOfType<String>(json, r'total_trading_volume')!,
        activeTradingDays: mapValueOfType<int>(json, r'active_trading_days')!,
        activated: mapValueOfType<bool>(json, r'activated')!,
        kycApproved: mapValueOfType<bool>(json, r'kyc_approved')!,
      );
    }
    return null;
  }

  static List<PnLRankingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PnLRankingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PnLRankingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PnLRankingResponse> mapFromJson(dynamic json) {
    final map = <String, PnLRankingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PnLRankingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PnLRankingResponse-objects as value to a dart map
  static Map<String, List<PnLRankingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PnLRankingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PnLRankingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'first_name',
    'total_pnl',
    'realized_pnl',
    'total_trades',
    'winning_trades',
    'losing_trades',
    'win_rate',
    'daily_trading_volume',
    'total_trading_volume',
    'active_trading_days',
    'activated',
    'kyc_approved',
  };
}

