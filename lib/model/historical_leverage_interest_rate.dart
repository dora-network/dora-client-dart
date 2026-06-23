//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricalLeverageInterestRate {
  /// Returns a new [HistoricalLeverageInterestRate] instance.
  HistoricalLeverageInterestRate({
    required this.assetId,
    required this.updatedAt,
    required this.utilization,
    required this.maximumUtilization,
    required this.minimumRate,
    required this.kinkRate,
    required this.maximumRate,
    required this.kinkUtilization,
    required this.borrowingYieldRate,
    required this.lendingYieldRate,
    required this.yieldToMaturity,
  });

  String assetId;

  DateTime updatedAt;

  String utilization;

  String maximumUtilization;

  String minimumRate;

  String kinkRate;

  String maximumRate;

  String kinkUtilization;

  String borrowingYieldRate;

  String lendingYieldRate;

  String yieldToMaturity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricalLeverageInterestRate &&
    other.assetId == assetId &&
    other.updatedAt == updatedAt &&
    other.utilization == utilization &&
    other.maximumUtilization == maximumUtilization &&
    other.minimumRate == minimumRate &&
    other.kinkRate == kinkRate &&
    other.maximumRate == maximumRate &&
    other.kinkUtilization == kinkUtilization &&
    other.borrowingYieldRate == borrowingYieldRate &&
    other.lendingYieldRate == lendingYieldRate &&
    other.yieldToMaturity == yieldToMaturity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (updatedAt.hashCode) +
    (utilization.hashCode) +
    (maximumUtilization.hashCode) +
    (minimumRate.hashCode) +
    (kinkRate.hashCode) +
    (maximumRate.hashCode) +
    (kinkUtilization.hashCode) +
    (borrowingYieldRate.hashCode) +
    (lendingYieldRate.hashCode) +
    (yieldToMaturity.hashCode);

  @override
  String toString() => 'HistoricalLeverageInterestRate[assetId=$assetId, updatedAt=$updatedAt, utilization=$utilization, maximumUtilization=$maximumUtilization, minimumRate=$minimumRate, kinkRate=$kinkRate, maximumRate=$maximumRate, kinkUtilization=$kinkUtilization, borrowingYieldRate=$borrowingYieldRate, lendingYieldRate=$lendingYieldRate, yieldToMaturity=$yieldToMaturity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
      json[r'utilization'] = this.utilization;
      json[r'maximum_utilization'] = this.maximumUtilization;
      json[r'minimum_rate'] = this.minimumRate;
      json[r'kink_rate'] = this.kinkRate;
      json[r'maximum_rate'] = this.maximumRate;
      json[r'kink_utilization'] = this.kinkUtilization;
      json[r'borrowing_yield_rate'] = this.borrowingYieldRate;
      json[r'lending_yield_rate'] = this.lendingYieldRate;
      json[r'yield_to_maturity'] = this.yieldToMaturity;
    return json;
  }

  /// Returns a new [HistoricalLeverageInterestRate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricalLeverageInterestRate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'asset_id'), 'Required key "HistoricalLeverageInterestRate[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "HistoricalLeverageInterestRate[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "HistoricalLeverageInterestRate[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "HistoricalLeverageInterestRate[updated_at]" has a null value in JSON.');
        assert(json.containsKey(r'utilization'), 'Required key "HistoricalLeverageInterestRate[utilization]" is missing from JSON.');
        assert(json[r'utilization'] != null, 'Required key "HistoricalLeverageInterestRate[utilization]" has a null value in JSON.');
        assert(json.containsKey(r'maximum_utilization'), 'Required key "HistoricalLeverageInterestRate[maximum_utilization]" is missing from JSON.');
        assert(json[r'maximum_utilization'] != null, 'Required key "HistoricalLeverageInterestRate[maximum_utilization]" has a null value in JSON.');
        assert(json.containsKey(r'minimum_rate'), 'Required key "HistoricalLeverageInterestRate[minimum_rate]" is missing from JSON.');
        assert(json[r'minimum_rate'] != null, 'Required key "HistoricalLeverageInterestRate[minimum_rate]" has a null value in JSON.');
        assert(json.containsKey(r'kink_rate'), 'Required key "HistoricalLeverageInterestRate[kink_rate]" is missing from JSON.');
        assert(json[r'kink_rate'] != null, 'Required key "HistoricalLeverageInterestRate[kink_rate]" has a null value in JSON.');
        assert(json.containsKey(r'maximum_rate'), 'Required key "HistoricalLeverageInterestRate[maximum_rate]" is missing from JSON.');
        assert(json[r'maximum_rate'] != null, 'Required key "HistoricalLeverageInterestRate[maximum_rate]" has a null value in JSON.');
        assert(json.containsKey(r'kink_utilization'), 'Required key "HistoricalLeverageInterestRate[kink_utilization]" is missing from JSON.');
        assert(json[r'kink_utilization'] != null, 'Required key "HistoricalLeverageInterestRate[kink_utilization]" has a null value in JSON.');
        assert(json.containsKey(r'borrowing_yield_rate'), 'Required key "HistoricalLeverageInterestRate[borrowing_yield_rate]" is missing from JSON.');
        assert(json[r'borrowing_yield_rate'] != null, 'Required key "HistoricalLeverageInterestRate[borrowing_yield_rate]" has a null value in JSON.');
        assert(json.containsKey(r'lending_yield_rate'), 'Required key "HistoricalLeverageInterestRate[lending_yield_rate]" is missing from JSON.');
        assert(json[r'lending_yield_rate'] != null, 'Required key "HistoricalLeverageInterestRate[lending_yield_rate]" has a null value in JSON.');
        assert(json.containsKey(r'yield_to_maturity'), 'Required key "HistoricalLeverageInterestRate[yield_to_maturity]" is missing from JSON.');
        assert(json[r'yield_to_maturity'] != null, 'Required key "HistoricalLeverageInterestRate[yield_to_maturity]" has a null value in JSON.');
        return true;
      }());

      return HistoricalLeverageInterestRate(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        utilization: mapValueOfType<String>(json, r'utilization')!,
        maximumUtilization: mapValueOfType<String>(json, r'maximum_utilization')!,
        minimumRate: mapValueOfType<String>(json, r'minimum_rate')!,
        kinkRate: mapValueOfType<String>(json, r'kink_rate')!,
        maximumRate: mapValueOfType<String>(json, r'maximum_rate')!,
        kinkUtilization: mapValueOfType<String>(json, r'kink_utilization')!,
        borrowingYieldRate: mapValueOfType<String>(json, r'borrowing_yield_rate')!,
        lendingYieldRate: mapValueOfType<String>(json, r'lending_yield_rate')!,
        yieldToMaturity: mapValueOfType<String>(json, r'yield_to_maturity')!,
      );
    }
    return null;
  }

  static List<HistoricalLeverageInterestRate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricalLeverageInterestRate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricalLeverageInterestRate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricalLeverageInterestRate> mapFromJson(dynamic json) {
    final map = <String, HistoricalLeverageInterestRate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricalLeverageInterestRate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricalLeverageInterestRate-objects as value to a dart map
  static Map<String, List<HistoricalLeverageInterestRate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricalLeverageInterestRate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricalLeverageInterestRate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'updated_at',
    'utilization',
    'maximum_utilization',
    'minimum_rate',
    'kink_rate',
    'maximum_rate',
    'kink_utilization',
    'borrowing_yield_rate',
    'lending_yield_rate',
    'yield_to_maturity',
  };
}

