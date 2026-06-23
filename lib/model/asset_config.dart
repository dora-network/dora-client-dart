//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetConfig {
  /// Returns a new [AssetConfig] instance.
  AssetConfig({
    required this.assetId,
    required this.price,
  });

  String assetId;

  /// if an asset is a CURRENCY, set 1 USD price,If an asset is a BOND and the price isn't found, set to 0 USD   You can find price details on /price/asset/{asset_id} route
  String price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetConfig &&
    other.assetId == assetId &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (price.hashCode);

  @override
  String toString() => 'AssetConfig[assetId=$assetId, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'price'] = this.price;
    return json;
  }

  /// Returns a new [AssetConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'asset_id'), 'Required key "AssetConfig[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "AssetConfig[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'price'), 'Required key "AssetConfig[price]" is missing from JSON.');
        assert(json[r'price'] != null, 'Required key "AssetConfig[price]" has a null value in JSON.');
        return true;
      }());

      return AssetConfig(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        price: mapValueOfType<String>(json, r'price')!,
      );
    }
    return null;
  }

  static List<AssetConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetConfig> mapFromJson(dynamic json) {
    final map = <String, AssetConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetConfig-objects as value to a dart map
  static Map<String, List<AssetConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'price',
  };
}

