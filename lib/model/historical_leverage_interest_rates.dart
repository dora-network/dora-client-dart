//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricalLeverageInterestRates {
  /// Returns a new [HistoricalLeverageInterestRates] instance.
  HistoricalLeverageInterestRates({
    required this.assetId,
    required this.startTime,
    required this.endTime,
    this.rates = const [],
  });

  String assetId;

  DateTime startTime;

  DateTime endTime;

  List<HistoricalLeverageInterestRate> rates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricalLeverageInterestRates &&
    other.assetId == assetId &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    _deepEquality.equals(other.rates, rates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (startTime.hashCode) +
    (endTime.hashCode) +
    (rates.hashCode);

  @override
  String toString() => 'HistoricalLeverageInterestRates[assetId=$assetId, startTime=$startTime, endTime=$endTime, rates=$rates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'start_time'] = this.startTime.toUtc().toIso8601String();
      json[r'end_time'] = this.endTime.toUtc().toIso8601String();
      json[r'rates'] = this.rates;
    return json;
  }

  /// Returns a new [HistoricalLeverageInterestRates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricalLeverageInterestRates? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricalLeverageInterestRates[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricalLeverageInterestRates[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricalLeverageInterestRates(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        startTime: mapDateTime(json, r'start_time', r'')!,
        endTime: mapDateTime(json, r'end_time', r'')!,
        rates: HistoricalLeverageInterestRate.listFromJson(json[r'rates']),
      );
    }
    return null;
  }

  static List<HistoricalLeverageInterestRates> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricalLeverageInterestRates>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricalLeverageInterestRates.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricalLeverageInterestRates> mapFromJson(dynamic json) {
    final map = <String, HistoricalLeverageInterestRates>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricalLeverageInterestRates.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricalLeverageInterestRates-objects as value to a dart map
  static Map<String, List<HistoricalLeverageInterestRates>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricalLeverageInterestRates>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricalLeverageInterestRates.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'start_time',
    'end_time',
    'rates',
  };
}

