//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetPrice {
  /// Returns a new [AssetPrice] instance.
  AssetPrice({
    required this.assetId,
    required this.price,
    this.ytm,
    required this.time,
  });

  String assetId;

  String price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ytm;

  DateTime time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetPrice &&
    other.assetId == assetId &&
    other.price == price &&
    other.ytm == ytm &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (price.hashCode) +
    (ytm == null ? 0 : ytm!.hashCode) +
    (time.hashCode);

  @override
  String toString() => 'AssetPrice[assetId=$assetId, price=$price, ytm=$ytm, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'price'] = this.price;
    if (this.ytm != null) {
      json[r'ytm'] = this.ytm;
    } else {
      json[r'ytm'] = null;
    }
      json[r'time'] = this.time.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AssetPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetPrice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssetPrice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssetPrice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssetPrice(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        price: mapValueOfType<String>(json, r'price')!,
        ytm: mapValueOfType<String>(json, r'ytm'),
        time: mapDateTime(json, r'time', r'')!,
      );
    }
    return null;
  }

  static List<AssetPrice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetPrice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetPrice> mapFromJson(dynamic json) {
    final map = <String, AssetPrice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetPrice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetPrice-objects as value to a dart map
  static Map<String, List<AssetPrice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetPrice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetPrice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'price',
    'time',
  };
}

