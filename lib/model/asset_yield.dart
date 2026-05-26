//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetYield {
  /// Returns a new [AssetYield] instance.
  AssetYield({
    required this.assetId,
    required this.timestamp,
    required this.ytm,
    required this.lendingYield,
    required this.tvl,
    required this.totalYield,
  });

  String assetId;

  DateTime timestamp;

  String ytm;

  String lendingYield;

  String tvl;

  String totalYield;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetYield &&
    other.assetId == assetId &&
    other.timestamp == timestamp &&
    other.ytm == ytm &&
    other.lendingYield == lendingYield &&
    other.tvl == tvl &&
    other.totalYield == totalYield;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (timestamp.hashCode) +
    (ytm.hashCode) +
    (lendingYield.hashCode) +
    (tvl.hashCode) +
    (totalYield.hashCode);

  @override
  String toString() => 'AssetYield[assetId=$assetId, timestamp=$timestamp, ytm=$ytm, lendingYield=$lendingYield, tvl=$tvl, totalYield=$totalYield]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
      json[r'ytm'] = this.ytm;
      json[r'lending_yield'] = this.lendingYield;
      json[r'tvl'] = this.tvl;
      json[r'total_yield'] = this.totalYield;
    return json;
  }

  /// Returns a new [AssetYield] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetYield? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssetYield[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssetYield[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssetYield(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        ytm: mapValueOfType<String>(json, r'ytm')!,
        lendingYield: mapValueOfType<String>(json, r'lending_yield')!,
        tvl: mapValueOfType<String>(json, r'tvl')!,
        totalYield: mapValueOfType<String>(json, r'total_yield')!,
      );
    }
    return null;
  }

  static List<AssetYield> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetYield>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetYield.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetYield> mapFromJson(dynamic json) {
    final map = <String, AssetYield>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetYield.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetYield-objects as value to a dart map
  static Map<String, List<AssetYield>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetYield>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetYield.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'timestamp',
    'ytm',
    'lending_yield',
    'tvl',
    'total_yield',
  };
}

