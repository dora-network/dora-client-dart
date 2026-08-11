//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TradingChallengeDailySnapshot {
  /// Returns a new [TradingChallengeDailySnapshot] instance.
  TradingChallengeDailySnapshot({
    this.tradingChallengeId,
    this.userId,
    this.userName,
    this.tradingDate,
    this.dailyVolume,
    this.dailyPnl,
    this.dailyTrades,
    this.volumeCompliant,
    this.eodEquity,
    this.activeDay,
    this.createdAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tradingChallengeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? tradingDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dailyVolume;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dailyPnl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dailyTrades;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? volumeCompliant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eodEquity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? activeDay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TradingChallengeDailySnapshot &&
    other.tradingChallengeId == tradingChallengeId &&
    other.userId == userId &&
    other.userName == userName &&
    other.tradingDate == tradingDate &&
    other.dailyVolume == dailyVolume &&
    other.dailyPnl == dailyPnl &&
    other.dailyTrades == dailyTrades &&
    other.volumeCompliant == volumeCompliant &&
    other.eodEquity == eodEquity &&
    other.activeDay == activeDay &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tradingChallengeId == null ? 0 : tradingChallengeId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (userName == null ? 0 : userName!.hashCode) +
    (tradingDate == null ? 0 : tradingDate!.hashCode) +
    (dailyVolume == null ? 0 : dailyVolume!.hashCode) +
    (dailyPnl == null ? 0 : dailyPnl!.hashCode) +
    (dailyTrades == null ? 0 : dailyTrades!.hashCode) +
    (volumeCompliant == null ? 0 : volumeCompliant!.hashCode) +
    (eodEquity == null ? 0 : eodEquity!.hashCode) +
    (activeDay == null ? 0 : activeDay!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'TradingChallengeDailySnapshot[tradingChallengeId=$tradingChallengeId, userId=$userId, userName=$userName, tradingDate=$tradingDate, dailyVolume=$dailyVolume, dailyPnl=$dailyPnl, dailyTrades=$dailyTrades, volumeCompliant=$volumeCompliant, eodEquity=$eodEquity, activeDay=$activeDay, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.tradingChallengeId != null) {
      json[r'trading_challenge_id'] = this.tradingChallengeId;
    } else {
      json[r'trading_challenge_id'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.userName != null) {
      json[r'user_name'] = this.userName;
    } else {
      json[r'user_name'] = null;
    }
    if (this.tradingDate != null) {
      json[r'trading_date'] = _dateFormatter.format(this.tradingDate!.toUtc());
    } else {
      json[r'trading_date'] = null;
    }
    if (this.dailyVolume != null) {
      json[r'daily_volume'] = this.dailyVolume;
    } else {
      json[r'daily_volume'] = null;
    }
    if (this.dailyPnl != null) {
      json[r'daily_pnl'] = this.dailyPnl;
    } else {
      json[r'daily_pnl'] = null;
    }
    if (this.dailyTrades != null) {
      json[r'daily_trades'] = this.dailyTrades;
    } else {
      json[r'daily_trades'] = null;
    }
    if (this.volumeCompliant != null) {
      json[r'volume_compliant'] = this.volumeCompliant;
    } else {
      json[r'volume_compliant'] = null;
    }
    if (this.eodEquity != null) {
      json[r'eod_equity'] = this.eodEquity;
    } else {
      json[r'eod_equity'] = null;
    }
    if (this.activeDay != null) {
      json[r'active_day'] = this.activeDay;
    } else {
      json[r'active_day'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [TradingChallengeDailySnapshot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TradingChallengeDailySnapshot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return TradingChallengeDailySnapshot(
        tradingChallengeId: mapValueOfType<String>(json, r'trading_challenge_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        userName: mapValueOfType<String>(json, r'user_name'),
        tradingDate: mapDateTime(json, r'trading_date', r''),
        dailyVolume: mapValueOfType<String>(json, r'daily_volume'),
        dailyPnl: mapValueOfType<String>(json, r'daily_pnl'),
        dailyTrades: mapValueOfType<int>(json, r'daily_trades'),
        volumeCompliant: mapValueOfType<bool>(json, r'volume_compliant'),
        eodEquity: mapValueOfType<String>(json, r'eod_equity'),
        activeDay: mapValueOfType<bool>(json, r'active_day'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<TradingChallengeDailySnapshot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeDailySnapshot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeDailySnapshot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TradingChallengeDailySnapshot> mapFromJson(dynamic json) {
    final map = <String, TradingChallengeDailySnapshot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TradingChallengeDailySnapshot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TradingChallengeDailySnapshot-objects as value to a dart map
  static Map<String, List<TradingChallengeDailySnapshot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TradingChallengeDailySnapshot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TradingChallengeDailySnapshot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

