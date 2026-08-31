//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateTradingChallengeRequest {
  /// Returns a new [UpdateTradingChallengeRequest] instance.
  UpdateTradingChallengeRequest({
    this.name,
    this.type,
    this.maxUsers,
    this.start,
    this.end,
    this.initialUserBalance,
    this.goldPrizeQuantity,
    this.silverPrizeQuantity,
    this.bronzePrizeQuantity,
    this.pnlCondition,
    this.totalVolumeCondition,
    this.avgDailyVolumeCondition,
    this.minimumEquityPercentageCondition,
  });

  /// Trading challenge name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldString? name;

  /// CASH or TOURNAMENT. Only updatable while the challenge is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldString? type;

  /// Must be > 0 and cannot be lowered below the number of users already registered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldInteger? maxUsers;

  /// Only updatable while the challenge is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDateTime? start;

  /// Must be after start and in the future.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDateTime? end;

  /// Must be > 0. Only updatable while the challenge is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDecimal? initialUserBalance;

  /// Must be > 0 for a TOURNAMENT challenge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDecimal? goldPrizeQuantity;

  /// Must be >= 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDecimal? silverPrizeQuantity;

  /// Must be >= 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDecimal? bronzePrizeQuantity;

  /// Must be >= 0. Only updatable while the challenge is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDecimal? pnlCondition;

  /// Must be >= 0. Only updatable while the challenge is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDecimal? totalVolumeCondition;

  /// Must be >= 0. Only updatable while the challenge is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldDecimal? avgDailyVolumeCondition;

  /// In the range [0,100). Only updatable while the challenge is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldInteger? minimumEquityPercentageCondition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateTradingChallengeRequest &&
    other.name == name &&
    other.type == type &&
    other.maxUsers == maxUsers &&
    other.start == start &&
    other.end == end &&
    other.initialUserBalance == initialUserBalance &&
    other.goldPrizeQuantity == goldPrizeQuantity &&
    other.silverPrizeQuantity == silverPrizeQuantity &&
    other.bronzePrizeQuantity == bronzePrizeQuantity &&
    other.pnlCondition == pnlCondition &&
    other.totalVolumeCondition == totalVolumeCondition &&
    other.avgDailyVolumeCondition == avgDailyVolumeCondition &&
    other.minimumEquityPercentageCondition == minimumEquityPercentageCondition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (maxUsers == null ? 0 : maxUsers!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (initialUserBalance == null ? 0 : initialUserBalance!.hashCode) +
    (goldPrizeQuantity == null ? 0 : goldPrizeQuantity!.hashCode) +
    (silverPrizeQuantity == null ? 0 : silverPrizeQuantity!.hashCode) +
    (bronzePrizeQuantity == null ? 0 : bronzePrizeQuantity!.hashCode) +
    (pnlCondition == null ? 0 : pnlCondition!.hashCode) +
    (totalVolumeCondition == null ? 0 : totalVolumeCondition!.hashCode) +
    (avgDailyVolumeCondition == null ? 0 : avgDailyVolumeCondition!.hashCode) +
    (minimumEquityPercentageCondition == null ? 0 : minimumEquityPercentageCondition!.hashCode);

  @override
  String toString() => 'UpdateTradingChallengeRequest[name=$name, type=$type, maxUsers=$maxUsers, start=$start, end=$end, initialUserBalance=$initialUserBalance, goldPrizeQuantity=$goldPrizeQuantity, silverPrizeQuantity=$silverPrizeQuantity, bronzePrizeQuantity=$bronzePrizeQuantity, pnlCondition=$pnlCondition, totalVolumeCondition=$totalVolumeCondition, avgDailyVolumeCondition=$avgDailyVolumeCondition, minimumEquityPercentageCondition=$minimumEquityPercentageCondition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.maxUsers != null) {
      json[r'max_users'] = this.maxUsers;
    } else {
      json[r'max_users'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.initialUserBalance != null) {
      json[r'initial_user_balance'] = this.initialUserBalance;
    } else {
      json[r'initial_user_balance'] = null;
    }
    if (this.goldPrizeQuantity != null) {
      json[r'gold_prize_quantity'] = this.goldPrizeQuantity;
    } else {
      json[r'gold_prize_quantity'] = null;
    }
    if (this.silverPrizeQuantity != null) {
      json[r'silver_prize_quantity'] = this.silverPrizeQuantity;
    } else {
      json[r'silver_prize_quantity'] = null;
    }
    if (this.bronzePrizeQuantity != null) {
      json[r'bronze_prize_quantity'] = this.bronzePrizeQuantity;
    } else {
      json[r'bronze_prize_quantity'] = null;
    }
    if (this.pnlCondition != null) {
      json[r'pnl_condition'] = this.pnlCondition;
    } else {
      json[r'pnl_condition'] = null;
    }
    if (this.totalVolumeCondition != null) {
      json[r'total_volume_condition'] = this.totalVolumeCondition;
    } else {
      json[r'total_volume_condition'] = null;
    }
    if (this.avgDailyVolumeCondition != null) {
      json[r'avg_daily_volume_condition'] = this.avgDailyVolumeCondition;
    } else {
      json[r'avg_daily_volume_condition'] = null;
    }
    if (this.minimumEquityPercentageCondition != null) {
      json[r'minimum_equity_percentage_condition'] = this.minimumEquityPercentageCondition;
    } else {
      json[r'minimum_equity_percentage_condition'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateTradingChallengeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateTradingChallengeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateTradingChallengeRequest(
        name: UpdateFieldString.fromJson(json[r'name']),
        type: UpdateFieldString.fromJson(json[r'type']),
        maxUsers: UpdateFieldInteger.fromJson(json[r'max_users']),
        start: UpdateFieldDateTime.fromJson(json[r'start']),
        end: UpdateFieldDateTime.fromJson(json[r'end']),
        initialUserBalance: UpdateFieldDecimal.fromJson(json[r'initial_user_balance']),
        goldPrizeQuantity: UpdateFieldDecimal.fromJson(json[r'gold_prize_quantity']),
        silverPrizeQuantity: UpdateFieldDecimal.fromJson(json[r'silver_prize_quantity']),
        bronzePrizeQuantity: UpdateFieldDecimal.fromJson(json[r'bronze_prize_quantity']),
        pnlCondition: UpdateFieldDecimal.fromJson(json[r'pnl_condition']),
        totalVolumeCondition: UpdateFieldDecimal.fromJson(json[r'total_volume_condition']),
        avgDailyVolumeCondition: UpdateFieldDecimal.fromJson(json[r'avg_daily_volume_condition']),
        minimumEquityPercentageCondition: UpdateFieldInteger.fromJson(json[r'minimum_equity_percentage_condition']),
      );
    }
    return null;
  }

  static List<UpdateTradingChallengeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTradingChallengeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTradingChallengeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateTradingChallengeRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateTradingChallengeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateTradingChallengeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateTradingChallengeRequest-objects as value to a dart map
  static Map<String, List<UpdateTradingChallengeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateTradingChallengeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateTradingChallengeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

