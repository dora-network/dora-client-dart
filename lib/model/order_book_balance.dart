//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderBookBalance {
  /// Returns a new [OrderBookBalance] instance.
  OrderBookBalance({
    required this.orderBookId,
    required this.baseQuantity,
    required this.quoteQuantity,
    required this.sharesQuantity,
  });

  /// The ID of the order book.
  String orderBookId;

  /// The quantity of the base asset.
  ///
  /// Minimum value: 0
  double baseQuantity;

  /// The quantity of the quote asset.
  ///
  /// Minimum value: 0
  double quoteQuantity;

  /// The quantity of pool shares.
  ///
  /// Minimum value: 0
  double sharesQuantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBookBalance &&
    other.orderBookId == orderBookId &&
    other.baseQuantity == baseQuantity &&
    other.quoteQuantity == quoteQuantity &&
    other.sharesQuantity == sharesQuantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (baseQuantity.hashCode) +
    (quoteQuantity.hashCode) +
    (sharesQuantity.hashCode);

  @override
  String toString() => 'OrderBookBalance[orderBookId=$orderBookId, baseQuantity=$baseQuantity, quoteQuantity=$quoteQuantity, sharesQuantity=$sharesQuantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
      json[r'base_quantity'] = this.baseQuantity;
      json[r'quote_quantity'] = this.quoteQuantity;
      json[r'shares_quantity'] = this.sharesQuantity;
    return json;
  }

  /// Returns a new [OrderBookBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderBookBalance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderBookBalance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderBookBalance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderBookBalance(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        baseQuantity: mapValueOfType<double>(json, r'base_quantity')!,
        quoteQuantity: mapValueOfType<double>(json, r'quote_quantity')!,
        sharesQuantity: mapValueOfType<double>(json, r'shares_quantity')!,
      );
    }
    return null;
  }

  static List<OrderBookBalance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBookBalance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBookBalance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderBookBalance> mapFromJson(dynamic json) {
    final map = <String, OrderBookBalance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderBookBalance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderBookBalance-objects as value to a dart map
  static Map<String, List<OrderBookBalance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderBookBalance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderBookBalance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_book_id',
    'base_quantity',
    'quote_quantity',
    'shares_quantity',
  };
}

