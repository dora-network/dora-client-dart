//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LeverageInterestRate {
  /// Returns a new [LeverageInterestRate] instance.
  LeverageInterestRate({
    required this.assetId,
    required this.utilization,
    required this.avgUtilization,
    required this.avgBorrowingYieldRate,
    required this.avgLendingYieldRate,
    required this.borrowingYieldRate,
    required this.lendingYieldRate,
    required this.yieldToMaturity,
    required this.startTime,
    required this.endTime,
  });

  String assetId;

  String utilization;

  String avgUtilization;

  String avgBorrowingYieldRate;

  String avgLendingYieldRate;

  String borrowingYieldRate;

  String lendingYieldRate;

  String yieldToMaturity;

  DateTime startTime;

  DateTime endTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeverageInterestRate &&
    other.assetId == assetId &&
    other.utilization == utilization &&
    other.avgUtilization == avgUtilization &&
    other.avgBorrowingYieldRate == avgBorrowingYieldRate &&
    other.avgLendingYieldRate == avgLendingYieldRate &&
    other.borrowingYieldRate == borrowingYieldRate &&
    other.lendingYieldRate == lendingYieldRate &&
    other.yieldToMaturity == yieldToMaturity &&
    other.startTime == startTime &&
    other.endTime == endTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (utilization.hashCode) +
    (avgUtilization.hashCode) +
    (avgBorrowingYieldRate.hashCode) +
    (avgLendingYieldRate.hashCode) +
    (borrowingYieldRate.hashCode) +
    (lendingYieldRate.hashCode) +
    (yieldToMaturity.hashCode) +
    (startTime.hashCode) +
    (endTime.hashCode);

  @override
  String toString() => 'LeverageInterestRate[assetId=$assetId, utilization=$utilization, avgUtilization=$avgUtilization, avgBorrowingYieldRate=$avgBorrowingYieldRate, avgLendingYieldRate=$avgLendingYieldRate, borrowingYieldRate=$borrowingYieldRate, lendingYieldRate=$lendingYieldRate, yieldToMaturity=$yieldToMaturity, startTime=$startTime, endTime=$endTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'utilization'] = this.utilization;
      json[r'avg_utilization'] = this.avgUtilization;
      json[r'avg_borrowing_yield_rate'] = this.avgBorrowingYieldRate;
      json[r'avg_lending_yield_rate'] = this.avgLendingYieldRate;
      json[r'borrowing_yield_rate'] = this.borrowingYieldRate;
      json[r'lending_yield_rate'] = this.lendingYieldRate;
      json[r'yield_to_maturity'] = this.yieldToMaturity;
      json[r'start_time'] = this.startTime.toUtc().toIso8601String();
      json[r'end_time'] = this.endTime.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [LeverageInterestRate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeverageInterestRate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'asset_id'), 'Required key "LeverageInterestRate[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "LeverageInterestRate[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'utilization'), 'Required key "LeverageInterestRate[utilization]" is missing from JSON.');
        assert(json[r'utilization'] != null, 'Required key "LeverageInterestRate[utilization]" has a null value in JSON.');
        assert(json.containsKey(r'avg_utilization'), 'Required key "LeverageInterestRate[avg_utilization]" is missing from JSON.');
        assert(json[r'avg_utilization'] != null, 'Required key "LeverageInterestRate[avg_utilization]" has a null value in JSON.');
        assert(json.containsKey(r'avg_borrowing_yield_rate'), 'Required key "LeverageInterestRate[avg_borrowing_yield_rate]" is missing from JSON.');
        assert(json[r'avg_borrowing_yield_rate'] != null, 'Required key "LeverageInterestRate[avg_borrowing_yield_rate]" has a null value in JSON.');
        assert(json.containsKey(r'avg_lending_yield_rate'), 'Required key "LeverageInterestRate[avg_lending_yield_rate]" is missing from JSON.');
        assert(json[r'avg_lending_yield_rate'] != null, 'Required key "LeverageInterestRate[avg_lending_yield_rate]" has a null value in JSON.');
        assert(json.containsKey(r'borrowing_yield_rate'), 'Required key "LeverageInterestRate[borrowing_yield_rate]" is missing from JSON.');
        assert(json[r'borrowing_yield_rate'] != null, 'Required key "LeverageInterestRate[borrowing_yield_rate]" has a null value in JSON.');
        assert(json.containsKey(r'lending_yield_rate'), 'Required key "LeverageInterestRate[lending_yield_rate]" is missing from JSON.');
        assert(json[r'lending_yield_rate'] != null, 'Required key "LeverageInterestRate[lending_yield_rate]" has a null value in JSON.');
        assert(json.containsKey(r'yield_to_maturity'), 'Required key "LeverageInterestRate[yield_to_maturity]" is missing from JSON.');
        assert(json[r'yield_to_maturity'] != null, 'Required key "LeverageInterestRate[yield_to_maturity]" has a null value in JSON.');
        assert(json.containsKey(r'start_time'), 'Required key "LeverageInterestRate[start_time]" is missing from JSON.');
        assert(json[r'start_time'] != null, 'Required key "LeverageInterestRate[start_time]" has a null value in JSON.');
        assert(json.containsKey(r'end_time'), 'Required key "LeverageInterestRate[end_time]" is missing from JSON.');
        assert(json[r'end_time'] != null, 'Required key "LeverageInterestRate[end_time]" has a null value in JSON.');
        return true;
      }());

      return LeverageInterestRate(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        utilization: mapValueOfType<String>(json, r'utilization')!,
        avgUtilization: mapValueOfType<String>(json, r'avg_utilization')!,
        avgBorrowingYieldRate: mapValueOfType<String>(json, r'avg_borrowing_yield_rate')!,
        avgLendingYieldRate: mapValueOfType<String>(json, r'avg_lending_yield_rate')!,
        borrowingYieldRate: mapValueOfType<String>(json, r'borrowing_yield_rate')!,
        lendingYieldRate: mapValueOfType<String>(json, r'lending_yield_rate')!,
        yieldToMaturity: mapValueOfType<String>(json, r'yield_to_maturity')!,
        startTime: mapDateTime(json, r'start_time', r'')!,
        endTime: mapDateTime(json, r'end_time', r'')!,
      );
    }
    return null;
  }

  static List<LeverageInterestRate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeverageInterestRate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeverageInterestRate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeverageInterestRate> mapFromJson(dynamic json) {
    final map = <String, LeverageInterestRate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeverageInterestRate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeverageInterestRate-objects as value to a dart map
  static Map<String, List<LeverageInterestRate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeverageInterestRate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeverageInterestRate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'utilization',
    'avg_utilization',
    'avg_borrowing_yield_rate',
    'avg_lending_yield_rate',
    'borrowing_yield_rate',
    'lending_yield_rate',
    'yield_to_maturity',
    'start_time',
    'end_time',
  };
}

