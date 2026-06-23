//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PoolPrice {
  /// Returns a new [PoolPrice] instance.
  PoolPrice({
    required this.poolId,
    required this.price,
    required this.timestamp,
  });

  String poolId;

  String price;

  DateTime timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PoolPrice &&
    other.poolId == poolId &&
    other.price == price &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (poolId.hashCode) +
    (price.hashCode) +
    (timestamp.hashCode);

  @override
  String toString() => 'PoolPrice[poolId=$poolId, price=$price, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pool_id'] = this.poolId;
      json[r'price'] = this.price;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PoolPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PoolPrice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'pool_id'), 'Required key "PoolPrice[pool_id]" is missing from JSON.');
        assert(json[r'pool_id'] != null, 'Required key "PoolPrice[pool_id]" has a null value in JSON.');
        assert(json.containsKey(r'price'), 'Required key "PoolPrice[price]" is missing from JSON.');
        assert(json[r'price'] != null, 'Required key "PoolPrice[price]" has a null value in JSON.');
        assert(json.containsKey(r'timestamp'), 'Required key "PoolPrice[timestamp]" is missing from JSON.');
        assert(json[r'timestamp'] != null, 'Required key "PoolPrice[timestamp]" has a null value in JSON.');
        return true;
      }());

      return PoolPrice(
        poolId: mapValueOfType<String>(json, r'pool_id')!,
        price: mapValueOfType<String>(json, r'price')!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
      );
    }
    return null;
  }

  static List<PoolPrice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PoolPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PoolPrice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PoolPrice> mapFromJson(dynamic json) {
    final map = <String, PoolPrice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PoolPrice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PoolPrice-objects as value to a dart map
  static Map<String, List<PoolPrice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PoolPrice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PoolPrice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pool_id',
    'price',
    'timestamp',
  };
}

