//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TradingChallengeAllResult {
  /// Returns a new [TradingChallengeAllResult] instance.
  TradingChallengeAllResult({
    this.userId,
    this.userName,
    this.cumVolume,
    this.cumPnl,
    this.activeDays,
    this.cumTrades,
    this.accountValue,
    this.pnlPct,
  });

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
  String? cumVolume;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cumPnl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activeDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cumTrades;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pnlPct;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TradingChallengeAllResult &&
    other.userId == userId &&
    other.userName == userName &&
    other.cumVolume == cumVolume &&
    other.cumPnl == cumPnl &&
    other.activeDays == activeDays &&
    other.cumTrades == cumTrades &&
    other.accountValue == accountValue &&
    other.pnlPct == pnlPct;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (userName == null ? 0 : userName!.hashCode) +
    (cumVolume == null ? 0 : cumVolume!.hashCode) +
    (cumPnl == null ? 0 : cumPnl!.hashCode) +
    (activeDays == null ? 0 : activeDays!.hashCode) +
    (cumTrades == null ? 0 : cumTrades!.hashCode) +
    (accountValue == null ? 0 : accountValue!.hashCode) +
    (pnlPct == null ? 0 : pnlPct!.hashCode);

  @override
  String toString() => 'TradingChallengeAllResult[userId=$userId, userName=$userName, cumVolume=$cumVolume, cumPnl=$cumPnl, activeDays=$activeDays, cumTrades=$cumTrades, accountValue=$accountValue, pnlPct=$pnlPct]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.cumVolume != null) {
      json[r'cum_volume'] = this.cumVolume;
    } else {
      json[r'cum_volume'] = null;
    }
    if (this.cumPnl != null) {
      json[r'cum_pnl'] = this.cumPnl;
    } else {
      json[r'cum_pnl'] = null;
    }
    if (this.activeDays != null) {
      json[r'active_days'] = this.activeDays;
    } else {
      json[r'active_days'] = null;
    }
    if (this.cumTrades != null) {
      json[r'cum_trades'] = this.cumTrades;
    } else {
      json[r'cum_trades'] = null;
    }
    if (this.accountValue != null) {
      json[r'account_value'] = this.accountValue;
    } else {
      json[r'account_value'] = null;
    }
    if (this.pnlPct != null) {
      json[r'pnl_pct'] = this.pnlPct;
    } else {
      json[r'pnl_pct'] = null;
    }
    return json;
  }

  /// Returns a new [TradingChallengeAllResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TradingChallengeAllResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return TradingChallengeAllResult(
        userId: mapValueOfType<String>(json, r'user_id'),
        userName: mapValueOfType<String>(json, r'user_name'),
        cumVolume: mapValueOfType<String>(json, r'cum_volume'),
        cumPnl: mapValueOfType<String>(json, r'cum_pnl'),
        activeDays: mapValueOfType<int>(json, r'active_days'),
        cumTrades: mapValueOfType<int>(json, r'cum_trades'),
        accountValue: mapValueOfType<String>(json, r'account_value'),
        pnlPct: mapValueOfType<String>(json, r'pnl_pct'),
      );
    }
    return null;
  }

  static List<TradingChallengeAllResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeAllResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeAllResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TradingChallengeAllResult> mapFromJson(dynamic json) {
    final map = <String, TradingChallengeAllResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TradingChallengeAllResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TradingChallengeAllResult-objects as value to a dart map
  static Map<String, List<TradingChallengeAllResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TradingChallengeAllResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TradingChallengeAllResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

