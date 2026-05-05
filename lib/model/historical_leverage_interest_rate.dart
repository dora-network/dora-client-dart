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
    required this.interestRate,
  });

  String assetId;

  DateTime updatedAt;

  double utilization;

  double maximumUtilization;

  double minimumRate;

  double kinkRate;

  double maximumRate;

  double kinkUtilization;

  double interestRate;

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
    other.interestRate == interestRate;

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
    (interestRate.hashCode);

  @override
  String toString() => 'HistoricalLeverageInterestRate[assetId=$assetId, updatedAt=$updatedAt, utilization=$utilization, maximumUtilization=$maximumUtilization, minimumRate=$minimumRate, kinkRate=$kinkRate, maximumRate=$maximumRate, kinkUtilization=$kinkUtilization, interestRate=$interestRate]';

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
      json[r'interest_rate'] = this.interestRate;
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricalLeverageInterestRate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricalLeverageInterestRate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricalLeverageInterestRate(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        utilization: mapValueOfType<double>(json, r'utilization')!,
        maximumUtilization: mapValueOfType<double>(json, r'maximum_utilization')!,
        minimumRate: mapValueOfType<double>(json, r'minimum_rate')!,
        kinkRate: mapValueOfType<double>(json, r'kink_rate')!,
        maximumRate: mapValueOfType<double>(json, r'maximum_rate')!,
        kinkUtilization: mapValueOfType<double>(json, r'kink_utilization')!,
        interestRate: mapValueOfType<double>(json, r'interest_rate')!,
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
    'interest_rate',
  };
}

