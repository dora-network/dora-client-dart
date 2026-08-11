//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TradingChallenge {
  /// Returns a new [TradingChallenge] instance.
  TradingChallenge({
    required this.id,
    this.name,
    required this.tenantId,
    required this.type,
    required this.status,
    required this.maxUsers,
    required this.startAt,
    required this.endAt,
    required this.initialUserBalance,
    required this.goldPrizeQuantity,
    required this.silverPrizeQuantity,
    required this.bronzePrizeQuantity,
    required this.pnlCondition,
    required this.totalVolumeCondition,
    required this.avgDailyVolumeCondition,
    required this.minimumEquityPercentageCondition,
    required this.createdAt,
    this.lastProcessedAt,
    this.users = const [],
    required this.usersCount,
  });

  String id;

  /// Trading challenge name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String tenantId;

  TradingChallengeType type;

  TradingChallengeStatus status;

  int maxUsers;

  DateTime startAt;

  DateTime endAt;

  String initialUserBalance;

  String goldPrizeQuantity;

  String silverPrizeQuantity;

  String bronzePrizeQuantity;

  String pnlCondition;

  String totalVolumeCondition;

  String avgDailyVolumeCondition;

  int minimumEquityPercentageCondition;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastProcessedAt;

  List<String> users;

  int usersCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TradingChallenge &&
    other.id == id &&
    other.name == name &&
    other.tenantId == tenantId &&
    other.type == type &&
    other.status == status &&
    other.maxUsers == maxUsers &&
    other.startAt == startAt &&
    other.endAt == endAt &&
    other.initialUserBalance == initialUserBalance &&
    other.goldPrizeQuantity == goldPrizeQuantity &&
    other.silverPrizeQuantity == silverPrizeQuantity &&
    other.bronzePrizeQuantity == bronzePrizeQuantity &&
    other.pnlCondition == pnlCondition &&
    other.totalVolumeCondition == totalVolumeCondition &&
    other.avgDailyVolumeCondition == avgDailyVolumeCondition &&
    other.minimumEquityPercentageCondition == minimumEquityPercentageCondition &&
    other.createdAt == createdAt &&
    other.lastProcessedAt == lastProcessedAt &&
    _deepEquality.equals(other.users, users) &&
    other.usersCount == usersCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (tenantId.hashCode) +
    (type.hashCode) +
    (status.hashCode) +
    (maxUsers.hashCode) +
    (startAt.hashCode) +
    (endAt.hashCode) +
    (initialUserBalance.hashCode) +
    (goldPrizeQuantity.hashCode) +
    (silverPrizeQuantity.hashCode) +
    (bronzePrizeQuantity.hashCode) +
    (pnlCondition.hashCode) +
    (totalVolumeCondition.hashCode) +
    (avgDailyVolumeCondition.hashCode) +
    (minimumEquityPercentageCondition.hashCode) +
    (createdAt.hashCode) +
    (lastProcessedAt == null ? 0 : lastProcessedAt!.hashCode) +
    (users.hashCode) +
    (usersCount.hashCode);

  @override
  String toString() => 'TradingChallenge[id=$id, name=$name, tenantId=$tenantId, type=$type, status=$status, maxUsers=$maxUsers, startAt=$startAt, endAt=$endAt, initialUserBalance=$initialUserBalance, goldPrizeQuantity=$goldPrizeQuantity, silverPrizeQuantity=$silverPrizeQuantity, bronzePrizeQuantity=$bronzePrizeQuantity, pnlCondition=$pnlCondition, totalVolumeCondition=$totalVolumeCondition, avgDailyVolumeCondition=$avgDailyVolumeCondition, minimumEquityPercentageCondition=$minimumEquityPercentageCondition, createdAt=$createdAt, lastProcessedAt=$lastProcessedAt, users=$users, usersCount=$usersCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'tenant_id'] = this.tenantId;
      json[r'type'] = this.type;
      json[r'status'] = this.status;
      json[r'max_users'] = this.maxUsers;
      json[r'start_at'] = this.startAt.toUtc().toIso8601String();
      json[r'end_at'] = this.endAt.toUtc().toIso8601String();
      json[r'initial_user_balance'] = this.initialUserBalance;
      json[r'gold_prize_quantity'] = this.goldPrizeQuantity;
      json[r'silver_prize_quantity'] = this.silverPrizeQuantity;
      json[r'bronze_prize_quantity'] = this.bronzePrizeQuantity;
      json[r'pnl_condition'] = this.pnlCondition;
      json[r'total_volume_condition'] = this.totalVolumeCondition;
      json[r'avg_daily_volume_condition'] = this.avgDailyVolumeCondition;
      json[r'minimum_equity_percentage_condition'] = this.minimumEquityPercentageCondition;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.lastProcessedAt != null) {
      json[r'last_processed_at'] = this.lastProcessedAt!.toUtc().toIso8601String();
    } else {
      json[r'last_processed_at'] = null;
    }
      json[r'users'] = this.users;
      json[r'users_count'] = this.usersCount;
    return json;
  }

  /// Returns a new [TradingChallenge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TradingChallenge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "TradingChallenge[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "TradingChallenge[id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "TradingChallenge[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "TradingChallenge[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'type'), 'Required key "TradingChallenge[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "TradingChallenge[type]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "TradingChallenge[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "TradingChallenge[status]" has a null value in JSON.');
        assert(json.containsKey(r'max_users'), 'Required key "TradingChallenge[max_users]" is missing from JSON.');
        assert(json[r'max_users'] != null, 'Required key "TradingChallenge[max_users]" has a null value in JSON.');
        assert(json.containsKey(r'start_at'), 'Required key "TradingChallenge[start_at]" is missing from JSON.');
        assert(json[r'start_at'] != null, 'Required key "TradingChallenge[start_at]" has a null value in JSON.');
        assert(json.containsKey(r'end_at'), 'Required key "TradingChallenge[end_at]" is missing from JSON.');
        assert(json[r'end_at'] != null, 'Required key "TradingChallenge[end_at]" has a null value in JSON.');
        assert(json.containsKey(r'initial_user_balance'), 'Required key "TradingChallenge[initial_user_balance]" is missing from JSON.');
        assert(json[r'initial_user_balance'] != null, 'Required key "TradingChallenge[initial_user_balance]" has a null value in JSON.');
        assert(json.containsKey(r'gold_prize_quantity'), 'Required key "TradingChallenge[gold_prize_quantity]" is missing from JSON.');
        assert(json[r'gold_prize_quantity'] != null, 'Required key "TradingChallenge[gold_prize_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'silver_prize_quantity'), 'Required key "TradingChallenge[silver_prize_quantity]" is missing from JSON.');
        assert(json[r'silver_prize_quantity'] != null, 'Required key "TradingChallenge[silver_prize_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'bronze_prize_quantity'), 'Required key "TradingChallenge[bronze_prize_quantity]" is missing from JSON.');
        assert(json[r'bronze_prize_quantity'] != null, 'Required key "TradingChallenge[bronze_prize_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'pnl_condition'), 'Required key "TradingChallenge[pnl_condition]" is missing from JSON.');
        assert(json[r'pnl_condition'] != null, 'Required key "TradingChallenge[pnl_condition]" has a null value in JSON.');
        assert(json.containsKey(r'total_volume_condition'), 'Required key "TradingChallenge[total_volume_condition]" is missing from JSON.');
        assert(json[r'total_volume_condition'] != null, 'Required key "TradingChallenge[total_volume_condition]" has a null value in JSON.');
        assert(json.containsKey(r'avg_daily_volume_condition'), 'Required key "TradingChallenge[avg_daily_volume_condition]" is missing from JSON.');
        assert(json[r'avg_daily_volume_condition'] != null, 'Required key "TradingChallenge[avg_daily_volume_condition]" has a null value in JSON.');
        assert(json.containsKey(r'minimum_equity_percentage_condition'), 'Required key "TradingChallenge[minimum_equity_percentage_condition]" is missing from JSON.');
        assert(json[r'minimum_equity_percentage_condition'] != null, 'Required key "TradingChallenge[minimum_equity_percentage_condition]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "TradingChallenge[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "TradingChallenge[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'users_count'), 'Required key "TradingChallenge[users_count]" is missing from JSON.');
        assert(json[r'users_count'] != null, 'Required key "TradingChallenge[users_count]" has a null value in JSON.');
        return true;
      }());

      return TradingChallenge(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        type: TradingChallengeType.fromJson(json[r'type'])!,
        status: TradingChallengeStatus.fromJson(json[r'status'])!,
        maxUsers: mapValueOfType<int>(json, r'max_users')!,
        startAt: mapDateTime(json, r'start_at', r'')!,
        endAt: mapDateTime(json, r'end_at', r'')!,
        initialUserBalance: mapValueOfType<String>(json, r'initial_user_balance')!,
        goldPrizeQuantity: mapValueOfType<String>(json, r'gold_prize_quantity')!,
        silverPrizeQuantity: mapValueOfType<String>(json, r'silver_prize_quantity')!,
        bronzePrizeQuantity: mapValueOfType<String>(json, r'bronze_prize_quantity')!,
        pnlCondition: mapValueOfType<String>(json, r'pnl_condition')!,
        totalVolumeCondition: mapValueOfType<String>(json, r'total_volume_condition')!,
        avgDailyVolumeCondition: mapValueOfType<String>(json, r'avg_daily_volume_condition')!,
        minimumEquityPercentageCondition: mapValueOfType<int>(json, r'minimum_equity_percentage_condition')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        lastProcessedAt: mapDateTime(json, r'last_processed_at', r''),
        users: json[r'users'] is Iterable
            ? (json[r'users'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        usersCount: mapValueOfType<int>(json, r'users_count')!,
      );
    }
    return null;
  }

  static List<TradingChallenge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallenge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallenge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TradingChallenge> mapFromJson(dynamic json) {
    final map = <String, TradingChallenge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TradingChallenge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TradingChallenge-objects as value to a dart map
  static Map<String, List<TradingChallenge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TradingChallenge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TradingChallenge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'tenant_id',
    'type',
    'status',
    'max_users',
    'start_at',
    'end_at',
    'initial_user_balance',
    'gold_prize_quantity',
    'silver_prize_quantity',
    'bronze_prize_quantity',
    'pnl_condition',
    'total_volume_condition',
    'avg_daily_volume_condition',
    'minimum_equity_percentage_condition',
    'created_at',
    'users_count',
  };
}

