//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamAssetPricesResponseValue {
  /// Returns a new [StreamAssetPricesResponseValue] instance.
  StreamAssetPricesResponseValue({
    required this.assetId,
    required this.price,
    required this.time,
  });

  String assetId;

  double price;

  DateTime time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamAssetPricesResponseValue &&
    other.assetId == assetId &&
    other.price == price &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (price.hashCode) +
    (time.hashCode);

  @override
  String toString() => 'StreamAssetPricesResponseValue[assetId=$assetId, price=$price, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'price'] = this.price;
      json[r'time'] = this.time.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StreamAssetPricesResponseValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamAssetPricesResponseValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamAssetPricesResponseValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamAssetPricesResponseValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamAssetPricesResponseValue(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        price: mapValueOfType<double>(json, r'price')!,
        time: mapDateTime(json, r'time', r'')!,
      );
    }
    return null;
  }

  static List<StreamAssetPricesResponseValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamAssetPricesResponseValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamAssetPricesResponseValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamAssetPricesResponseValue> mapFromJson(dynamic json) {
    final map = <String, StreamAssetPricesResponseValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamAssetPricesResponseValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamAssetPricesResponseValue-objects as value to a dart map
  static Map<String, List<StreamAssetPricesResponseValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamAssetPricesResponseValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamAssetPricesResponseValue.listFromJson(entry.value, growable: growable,);
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

