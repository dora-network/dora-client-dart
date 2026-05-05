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
    required this.avgInterestRate,
    required this.interestRate,
    required this.startTime,
    required this.endTime,
  });

  String assetId;

  double utilization;

  double avgUtilization;

  double avgInterestRate;

  double interestRate;

  DateTime startTime;

  DateTime endTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeverageInterestRate &&
    other.assetId == assetId &&
    other.utilization == utilization &&
    other.avgUtilization == avgUtilization &&
    other.avgInterestRate == avgInterestRate &&
    other.interestRate == interestRate &&
    other.startTime == startTime &&
    other.endTime == endTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (utilization.hashCode) +
    (avgUtilization.hashCode) +
    (avgInterestRate.hashCode) +
    (interestRate.hashCode) +
    (startTime.hashCode) +
    (endTime.hashCode);

  @override
  String toString() => 'LeverageInterestRate[assetId=$assetId, utilization=$utilization, avgUtilization=$avgUtilization, avgInterestRate=$avgInterestRate, interestRate=$interestRate, startTime=$startTime, endTime=$endTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'utilization'] = this.utilization;
      json[r'avg_utilization'] = this.avgUtilization;
      json[r'avg_interest_rate'] = this.avgInterestRate;
      json[r'interest_rate'] = this.interestRate;
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeverageInterestRate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeverageInterestRate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeverageInterestRate(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        utilization: mapValueOfType<double>(json, r'utilization')!,
        avgUtilization: mapValueOfType<double>(json, r'avg_utilization')!,
        avgInterestRate: mapValueOfType<double>(json, r'avg_interest_rate')!,
        interestRate: mapValueOfType<double>(json, r'interest_rate')!,
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
    'avg_interest_rate',
    'interest_rate',
    'start_time',
    'end_time',
  };
}

