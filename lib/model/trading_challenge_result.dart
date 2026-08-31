//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TradingChallengeResult {
  /// Returns a new [TradingChallengeResult] instance.
  TradingChallengeResult({
    this.tradingChallengeId,
    this.userId,
    this.userName,
    this.cumVolume,
    this.cumPnl,
    this.pnlPct,
    this.calendarDaysSinceStart,
    this.activeDays,
    this.compliantDays,
    this.crownEligible,
    this.claimEligible,
    this.status,
    this.crown,
    this.createdAt,
    this.deactivationStatus,
    this.currentDayDailyVolume,
    this.currentDayDailyPnl,
    this.currentDayTradingDate,
    this.cumTrades,
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
  String? pnlPct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? calendarDaysSinceStart;

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
  int? compliantDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? crownEligible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? claimEligible;

  TradingChallengeResultStatusEnum? status;

  TradingChallengeResultCrownEnum? crown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  TradingChallengeResultDeactivationStatusEnum? deactivationStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentDayDailyVolume;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentDayDailyPnl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? currentDayTradingDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cumTrades;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TradingChallengeResult &&
    other.tradingChallengeId == tradingChallengeId &&
    other.userId == userId &&
    other.userName == userName &&
    other.cumVolume == cumVolume &&
    other.cumPnl == cumPnl &&
    other.pnlPct == pnlPct &&
    other.calendarDaysSinceStart == calendarDaysSinceStart &&
    other.activeDays == activeDays &&
    other.compliantDays == compliantDays &&
    other.crownEligible == crownEligible &&
    other.claimEligible == claimEligible &&
    other.status == status &&
    other.crown == crown &&
    other.createdAt == createdAt &&
    other.deactivationStatus == deactivationStatus &&
    other.currentDayDailyVolume == currentDayDailyVolume &&
    other.currentDayDailyPnl == currentDayDailyPnl &&
    other.currentDayTradingDate == currentDayTradingDate &&
    other.cumTrades == cumTrades;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tradingChallengeId == null ? 0 : tradingChallengeId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (userName == null ? 0 : userName!.hashCode) +
    (cumVolume == null ? 0 : cumVolume!.hashCode) +
    (cumPnl == null ? 0 : cumPnl!.hashCode) +
    (pnlPct == null ? 0 : pnlPct!.hashCode) +
    (calendarDaysSinceStart == null ? 0 : calendarDaysSinceStart!.hashCode) +
    (activeDays == null ? 0 : activeDays!.hashCode) +
    (compliantDays == null ? 0 : compliantDays!.hashCode) +
    (crownEligible == null ? 0 : crownEligible!.hashCode) +
    (claimEligible == null ? 0 : claimEligible!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (crown == null ? 0 : crown!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (deactivationStatus == null ? 0 : deactivationStatus!.hashCode) +
    (currentDayDailyVolume == null ? 0 : currentDayDailyVolume!.hashCode) +
    (currentDayDailyPnl == null ? 0 : currentDayDailyPnl!.hashCode) +
    (currentDayTradingDate == null ? 0 : currentDayTradingDate!.hashCode) +
    (cumTrades == null ? 0 : cumTrades!.hashCode);

  @override
  String toString() => 'TradingChallengeResult[tradingChallengeId=$tradingChallengeId, userId=$userId, userName=$userName, cumVolume=$cumVolume, cumPnl=$cumPnl, pnlPct=$pnlPct, calendarDaysSinceStart=$calendarDaysSinceStart, activeDays=$activeDays, compliantDays=$compliantDays, crownEligible=$crownEligible, claimEligible=$claimEligible, status=$status, crown=$crown, createdAt=$createdAt, deactivationStatus=$deactivationStatus, currentDayDailyVolume=$currentDayDailyVolume, currentDayDailyPnl=$currentDayDailyPnl, currentDayTradingDate=$currentDayTradingDate, cumTrades=$cumTrades]';

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
    if (this.pnlPct != null) {
      json[r'pnl_pct'] = this.pnlPct;
    } else {
      json[r'pnl_pct'] = null;
    }
    if (this.calendarDaysSinceStart != null) {
      json[r'calendar_days_since_start'] = this.calendarDaysSinceStart;
    } else {
      json[r'calendar_days_since_start'] = null;
    }
    if (this.activeDays != null) {
      json[r'active_days'] = this.activeDays;
    } else {
      json[r'active_days'] = null;
    }
    if (this.compliantDays != null) {
      json[r'compliant_days'] = this.compliantDays;
    } else {
      json[r'compliant_days'] = null;
    }
    if (this.crownEligible != null) {
      json[r'crown_eligible'] = this.crownEligible;
    } else {
      json[r'crown_eligible'] = null;
    }
    if (this.claimEligible != null) {
      json[r'claim_eligible'] = this.claimEligible;
    } else {
      json[r'claim_eligible'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.crown != null) {
      json[r'crown'] = this.crown;
    } else {
      json[r'crown'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.deactivationStatus != null) {
      json[r'deactivation_status'] = this.deactivationStatus;
    } else {
      json[r'deactivation_status'] = null;
    }
    if (this.currentDayDailyVolume != null) {
      json[r'current_day_daily_volume'] = this.currentDayDailyVolume;
    } else {
      json[r'current_day_daily_volume'] = null;
    }
    if (this.currentDayDailyPnl != null) {
      json[r'current_day_daily_pnl'] = this.currentDayDailyPnl;
    } else {
      json[r'current_day_daily_pnl'] = null;
    }
    if (this.currentDayTradingDate != null) {
      json[r'current_day_trading_date'] = _dateFormatter.format(this.currentDayTradingDate!.toUtc());
    } else {
      json[r'current_day_trading_date'] = null;
    }
    if (this.cumTrades != null) {
      json[r'cum_trades'] = this.cumTrades;
    } else {
      json[r'cum_trades'] = null;
    }
    return json;
  }

  /// Returns a new [TradingChallengeResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TradingChallengeResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return TradingChallengeResult(
        tradingChallengeId: mapValueOfType<String>(json, r'trading_challenge_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        userName: mapValueOfType<String>(json, r'user_name'),
        cumVolume: mapValueOfType<String>(json, r'cum_volume'),
        cumPnl: mapValueOfType<String>(json, r'cum_pnl'),
        pnlPct: mapValueOfType<String>(json, r'pnl_pct'),
        calendarDaysSinceStart: mapValueOfType<int>(json, r'calendar_days_since_start'),
        activeDays: mapValueOfType<int>(json, r'active_days'),
        compliantDays: mapValueOfType<int>(json, r'compliant_days'),
        crownEligible: mapValueOfType<bool>(json, r'crown_eligible'),
        claimEligible: mapValueOfType<bool>(json, r'claim_eligible'),
        status: TradingChallengeResultStatusEnum.fromJson(json[r'status']),
        crown: TradingChallengeResultCrownEnum.fromJson(json[r'crown']),
        createdAt: mapDateTime(json, r'created_at', r''),
        deactivationStatus: TradingChallengeResultDeactivationStatusEnum.fromJson(json[r'deactivation_status']),
        currentDayDailyVolume: mapValueOfType<String>(json, r'current_day_daily_volume'),
        currentDayDailyPnl: mapValueOfType<String>(json, r'current_day_daily_pnl'),
        currentDayTradingDate: mapDateTime(json, r'current_day_trading_date', r''),
        cumTrades: mapValueOfType<int>(json, r'cum_trades'),
      );
    }
    return null;
  }

  static List<TradingChallengeResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TradingChallengeResult> mapFromJson(dynamic json) {
    final map = <String, TradingChallengeResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TradingChallengeResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TradingChallengeResult-objects as value to a dart map
  static Map<String, List<TradingChallengeResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TradingChallengeResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TradingChallengeResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TradingChallengeResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TradingChallengeResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = TradingChallengeResultStatusEnum._(r'PENDING');
  static const FUNDED = TradingChallengeResultStatusEnum._(r'FUNDED');
  static const ACTIVE = TradingChallengeResultStatusEnum._(r'ACTIVE');
  static const BUSTED = TradingChallengeResultStatusEnum._(r'BUSTED');
  static const COMPLETED = TradingChallengeResultStatusEnum._(r'COMPLETED');
  static const PRIZE_CLAIMED = TradingChallengeResultStatusEnum._(r'PRIZE_CLAIMED');
  static const TERMINATED = TradingChallengeResultStatusEnum._(r'TERMINATED');

  /// List of all possible values in this [enum][TradingChallengeResultStatusEnum].
  static const values = <TradingChallengeResultStatusEnum>[
    PENDING,
    FUNDED,
    ACTIVE,
    BUSTED,
    COMPLETED,
    PRIZE_CLAIMED,
    TERMINATED,
  ];

  static TradingChallengeResultStatusEnum? fromJson(dynamic value) => TradingChallengeResultStatusEnumTypeTransformer().decode(value);

  static List<TradingChallengeResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TradingChallengeResultStatusEnum] to String,
/// and [decode] dynamic data back to [TradingChallengeResultStatusEnum].
class TradingChallengeResultStatusEnumTypeTransformer {
  factory TradingChallengeResultStatusEnumTypeTransformer() => _instance ??= const TradingChallengeResultStatusEnumTypeTransformer._();

  const TradingChallengeResultStatusEnumTypeTransformer._();

  String encode(TradingChallengeResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TradingChallengeResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TradingChallengeResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return TradingChallengeResultStatusEnum.PENDING;
        case r'FUNDED': return TradingChallengeResultStatusEnum.FUNDED;
        case r'ACTIVE': return TradingChallengeResultStatusEnum.ACTIVE;
        case r'BUSTED': return TradingChallengeResultStatusEnum.BUSTED;
        case r'COMPLETED': return TradingChallengeResultStatusEnum.COMPLETED;
        case r'PRIZE_CLAIMED': return TradingChallengeResultStatusEnum.PRIZE_CLAIMED;
        case r'TERMINATED': return TradingChallengeResultStatusEnum.TERMINATED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TradingChallengeResultStatusEnumTypeTransformer] instance.
  static TradingChallengeResultStatusEnumTypeTransformer? _instance;
}



class TradingChallengeResultCrownEnum {
  /// Instantiate a new enum with the provided [value].
  const TradingChallengeResultCrownEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = TradingChallengeResultCrownEnum._(r'NONE');
  static const PNL_GOLD = TradingChallengeResultCrownEnum._(r'PNL_GOLD');
  static const PNL_SILVER = TradingChallengeResultCrownEnum._(r'PNL_SILVER');
  static const PNL_BRONZE = TradingChallengeResultCrownEnum._(r'PNL_BRONZE');
  static const VOLUME_GOLD = TradingChallengeResultCrownEnum._(r'VOLUME_GOLD');
  static const VOLUME_SILVER = TradingChallengeResultCrownEnum._(r'VOLUME_SILVER');
  static const VOLUME_BRONZE = TradingChallengeResultCrownEnum._(r'VOLUME_BRONZE');
  static const IRON_GOLD = TradingChallengeResultCrownEnum._(r'IRON_GOLD');
  static const IRON_SILVER = TradingChallengeResultCrownEnum._(r'IRON_SILVER');
  static const IRON_BRONZE = TradingChallengeResultCrownEnum._(r'IRON_BRONZE');
  static const CASH_CROWN = TradingChallengeResultCrownEnum._(r'CASH_CROWN');

  /// List of all possible values in this [enum][TradingChallengeResultCrownEnum].
  static const values = <TradingChallengeResultCrownEnum>[
    NONE,
    PNL_GOLD,
    PNL_SILVER,
    PNL_BRONZE,
    VOLUME_GOLD,
    VOLUME_SILVER,
    VOLUME_BRONZE,
    IRON_GOLD,
    IRON_SILVER,
    IRON_BRONZE,
    CASH_CROWN,
  ];

  static TradingChallengeResultCrownEnum? fromJson(dynamic value) => TradingChallengeResultCrownEnumTypeTransformer().decode(value);

  static List<TradingChallengeResultCrownEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeResultCrownEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeResultCrownEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TradingChallengeResultCrownEnum] to String,
/// and [decode] dynamic data back to [TradingChallengeResultCrownEnum].
class TradingChallengeResultCrownEnumTypeTransformer {
  factory TradingChallengeResultCrownEnumTypeTransformer() => _instance ??= const TradingChallengeResultCrownEnumTypeTransformer._();

  const TradingChallengeResultCrownEnumTypeTransformer._();

  String encode(TradingChallengeResultCrownEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TradingChallengeResultCrownEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TradingChallengeResultCrownEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return TradingChallengeResultCrownEnum.NONE;
        case r'PNL_GOLD': return TradingChallengeResultCrownEnum.PNL_GOLD;
        case r'PNL_SILVER': return TradingChallengeResultCrownEnum.PNL_SILVER;
        case r'PNL_BRONZE': return TradingChallengeResultCrownEnum.PNL_BRONZE;
        case r'VOLUME_GOLD': return TradingChallengeResultCrownEnum.VOLUME_GOLD;
        case r'VOLUME_SILVER': return TradingChallengeResultCrownEnum.VOLUME_SILVER;
        case r'VOLUME_BRONZE': return TradingChallengeResultCrownEnum.VOLUME_BRONZE;
        case r'IRON_GOLD': return TradingChallengeResultCrownEnum.IRON_GOLD;
        case r'IRON_SILVER': return TradingChallengeResultCrownEnum.IRON_SILVER;
        case r'IRON_BRONZE': return TradingChallengeResultCrownEnum.IRON_BRONZE;
        case r'CASH_CROWN': return TradingChallengeResultCrownEnum.CASH_CROWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TradingChallengeResultCrownEnumTypeTransformer] instance.
  static TradingChallengeResultCrownEnumTypeTransformer? _instance;
}



class TradingChallengeResultDeactivationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TradingChallengeResultDeactivationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = TradingChallengeResultDeactivationStatusEnum._(r'ACTIVE');
  static const DEACTIVATED = TradingChallengeResultDeactivationStatusEnum._(r'DEACTIVATED');

  /// List of all possible values in this [enum][TradingChallengeResultDeactivationStatusEnum].
  static const values = <TradingChallengeResultDeactivationStatusEnum>[
    ACTIVE,
    DEACTIVATED,
  ];

  static TradingChallengeResultDeactivationStatusEnum? fromJson(dynamic value) => TradingChallengeResultDeactivationStatusEnumTypeTransformer().decode(value);

  static List<TradingChallengeResultDeactivationStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeResultDeactivationStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeResultDeactivationStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TradingChallengeResultDeactivationStatusEnum] to String,
/// and [decode] dynamic data back to [TradingChallengeResultDeactivationStatusEnum].
class TradingChallengeResultDeactivationStatusEnumTypeTransformer {
  factory TradingChallengeResultDeactivationStatusEnumTypeTransformer() => _instance ??= const TradingChallengeResultDeactivationStatusEnumTypeTransformer._();

  const TradingChallengeResultDeactivationStatusEnumTypeTransformer._();

  String encode(TradingChallengeResultDeactivationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TradingChallengeResultDeactivationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TradingChallengeResultDeactivationStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return TradingChallengeResultDeactivationStatusEnum.ACTIVE;
        case r'DEACTIVATED': return TradingChallengeResultDeactivationStatusEnum.DEACTIVATED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TradingChallengeResultDeactivationStatusEnumTypeTransformer] instance.
  static TradingChallengeResultDeactivationStatusEnumTypeTransformer? _instance;
}


