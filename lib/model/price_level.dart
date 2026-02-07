//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PriceLevel {
  /// Returns a new [PriceLevel] instance.
  PriceLevel({
    required this.price,
    required this.quantity,
  });

  String price;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PriceLevel &&
    other.price == price &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (price.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'PriceLevel[price=$price, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'price'] = this.price;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [PriceLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PriceLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PriceLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PriceLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PriceLevel(
        price: mapValueOfType<String>(json, r'price')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<PriceLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PriceLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PriceLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PriceLevel> mapFromJson(dynamic json) {
    final map = <String, PriceLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PriceLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PriceLevel-objects as value to a dart map
  static Map<String, List<PriceLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PriceLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PriceLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'price',
    'quantity',
  };
}

