//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTradingChallengeRequest {
  /// Returns a new [CreateTradingChallengeRequest] instance.
  CreateTradingChallengeRequest({
    required this.tenantId,
    required this.name,
    required this.type,
    required this.maxUsers,
    required this.start,
    required this.end,
    required this.initialUserBalance,
    this.goldPrizeQuantity,
    this.silverPrizeQuantity,
    this.bronzePrizeQuantity,
    this.pnlCondition,
    this.totalVolumeCondition,
    this.avgDailyVolumeCondition,
    this.minimumEquityPercentageCondition,
    this.users = const [],
  });

  String tenantId;

  /// Trading challenge name
  String name;

  TradingChallengeType type;

  /// Minimum value: 1
  int maxUsers;

  DateTime start;

  DateTime end;

  String initialUserBalance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? goldPrizeQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? silverPrizeQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bronzePrizeQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pnlCondition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totalVolumeCondition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avgDailyVolumeCondition;

  /// Minimum value: 0
  /// Maximum value: 99
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minimumEquityPercentageCondition;

  List<String> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTradingChallengeRequest &&
    other.tenantId == tenantId &&
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
    other.minimumEquityPercentageCondition == minimumEquityPercentageCondition &&
    _deepEquality.equals(other.users, users);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tenantId.hashCode) +
    (name.hashCode) +
    (type.hashCode) +
    (maxUsers.hashCode) +
    (start.hashCode) +
    (end.hashCode) +
    (initialUserBalance.hashCode) +
    (goldPrizeQuantity == null ? 0 : goldPrizeQuantity!.hashCode) +
    (silverPrizeQuantity == null ? 0 : silverPrizeQuantity!.hashCode) +
    (bronzePrizeQuantity == null ? 0 : bronzePrizeQuantity!.hashCode) +
    (pnlCondition == null ? 0 : pnlCondition!.hashCode) +
    (totalVolumeCondition == null ? 0 : totalVolumeCondition!.hashCode) +
    (avgDailyVolumeCondition == null ? 0 : avgDailyVolumeCondition!.hashCode) +
    (minimumEquityPercentageCondition == null ? 0 : minimumEquityPercentageCondition!.hashCode) +
    (users.hashCode);

  @override
  String toString() => 'CreateTradingChallengeRequest[tenantId=$tenantId, name=$name, type=$type, maxUsers=$maxUsers, start=$start, end=$end, initialUserBalance=$initialUserBalance, goldPrizeQuantity=$goldPrizeQuantity, silverPrizeQuantity=$silverPrizeQuantity, bronzePrizeQuantity=$bronzePrizeQuantity, pnlCondition=$pnlCondition, totalVolumeCondition=$totalVolumeCondition, avgDailyVolumeCondition=$avgDailyVolumeCondition, minimumEquityPercentageCondition=$minimumEquityPercentageCondition, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tenant_id'] = this.tenantId;
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'max_users'] = this.maxUsers;
      json[r'start'] = this.start.toUtc().toIso8601String();
      json[r'end'] = this.end.toUtc().toIso8601String();
      json[r'initial_user_balance'] = this.initialUserBalance;
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
      json[r'users'] = this.users;
    return json;
  }

  /// Returns a new [CreateTradingChallengeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTradingChallengeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'tenant_id'), 'Required key "CreateTradingChallengeRequest[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "CreateTradingChallengeRequest[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "CreateTradingChallengeRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateTradingChallengeRequest[name]" has a null value in JSON.');
        assert(json.containsKey(r'type'), 'Required key "CreateTradingChallengeRequest[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "CreateTradingChallengeRequest[type]" has a null value in JSON.');
        assert(json.containsKey(r'max_users'), 'Required key "CreateTradingChallengeRequest[max_users]" is missing from JSON.');
        assert(json[r'max_users'] != null, 'Required key "CreateTradingChallengeRequest[max_users]" has a null value in JSON.');
        assert(json.containsKey(r'start'), 'Required key "CreateTradingChallengeRequest[start]" is missing from JSON.');
        assert(json[r'start'] != null, 'Required key "CreateTradingChallengeRequest[start]" has a null value in JSON.');
        assert(json.containsKey(r'end'), 'Required key "CreateTradingChallengeRequest[end]" is missing from JSON.');
        assert(json[r'end'] != null, 'Required key "CreateTradingChallengeRequest[end]" has a null value in JSON.');
        assert(json.containsKey(r'initial_user_balance'), 'Required key "CreateTradingChallengeRequest[initial_user_balance]" is missing from JSON.');
        assert(json[r'initial_user_balance'] != null, 'Required key "CreateTradingChallengeRequest[initial_user_balance]" has a null value in JSON.');
        return true;
      }());

      return CreateTradingChallengeRequest(
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        type: TradingChallengeType.fromJson(json[r'type'])!,
        maxUsers: mapValueOfType<int>(json, r'max_users')!,
        start: mapDateTime(json, r'start', r'')!,
        end: mapDateTime(json, r'end', r'')!,
        initialUserBalance: mapValueOfType<String>(json, r'initial_user_balance')!,
        goldPrizeQuantity: mapValueOfType<String>(json, r'gold_prize_quantity'),
        silverPrizeQuantity: mapValueOfType<String>(json, r'silver_prize_quantity'),
        bronzePrizeQuantity: mapValueOfType<String>(json, r'bronze_prize_quantity'),
        pnlCondition: mapValueOfType<String>(json, r'pnl_condition'),
        totalVolumeCondition: mapValueOfType<String>(json, r'total_volume_condition'),
        avgDailyVolumeCondition: mapValueOfType<String>(json, r'avg_daily_volume_condition'),
        minimumEquityPercentageCondition: mapValueOfType<int>(json, r'minimum_equity_percentage_condition'),
        users: json[r'users'] is Iterable
            ? (json[r'users'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CreateTradingChallengeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTradingChallengeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTradingChallengeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTradingChallengeRequest> mapFromJson(dynamic json) {
    final map = <String, CreateTradingChallengeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTradingChallengeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTradingChallengeRequest-objects as value to a dart map
  static Map<String, List<CreateTradingChallengeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTradingChallengeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTradingChallengeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tenant_id',
    'name',
    'type',
    'max_users',
    'start',
    'end',
    'initial_user_balance',
  };
}

