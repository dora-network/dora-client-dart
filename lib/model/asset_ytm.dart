//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetYTM {
  /// Returns a new [AssetYTM] instance.
  AssetYTM({
    this.assetId,
    this.currentTime,
    this.currentPrice,
    this.yieldToMaturity,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? currentTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? yieldToMaturity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetYTM &&
    other.assetId == assetId &&
    other.currentTime == currentTime &&
    other.currentPrice == currentPrice &&
    other.yieldToMaturity == yieldToMaturity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId == null ? 0 : assetId!.hashCode) +
    (currentTime == null ? 0 : currentTime!.hashCode) +
    (currentPrice == null ? 0 : currentPrice!.hashCode) +
    (yieldToMaturity == null ? 0 : yieldToMaturity!.hashCode);

  @override
  String toString() => 'AssetYTM[assetId=$assetId, currentTime=$currentTime, currentPrice=$currentPrice, yieldToMaturity=$yieldToMaturity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.currentTime != null) {
      json[r'current_time'] = this.currentTime!.toUtc().toIso8601String();
    } else {
      json[r'current_time'] = null;
    }
    if (this.currentPrice != null) {
      json[r'current_price'] = this.currentPrice;
    } else {
      json[r'current_price'] = null;
    }
    if (this.yieldToMaturity != null) {
      json[r'yield_to_maturity'] = this.yieldToMaturity;
    } else {
      json[r'yield_to_maturity'] = null;
    }
    return json;
  }

  /// Returns a new [AssetYTM] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetYTM? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssetYTM[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssetYTM[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssetYTM(
        assetId: mapValueOfType<String>(json, r'asset_id'),
        currentTime: mapDateTime(json, r'current_time', r''),
        currentPrice: mapValueOfType<String>(json, r'current_price'),
        yieldToMaturity: mapValueOfType<String>(json, r'yield_to_maturity'),
      );
    }
    return null;
  }

  static List<AssetYTM> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetYTM>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetYTM.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetYTM> mapFromJson(dynamic json) {
    final map = <String, AssetYTM>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetYTM.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetYTM-objects as value to a dart map
  static Map<String, List<AssetYTM>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetYTM>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetYTM.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

