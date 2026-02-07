//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderBookSummary {
  /// Returns a new [OrderBookSummary] instance.
  OrderBookSummary({
    required this.orderBookId,
    required this.midPrice,
    required this.spread,
    required this.bestBid,
    required this.bestAsk,
  });

  String orderBookId;

  String midPrice;

  String spread;

  String bestBid;

  String bestAsk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBookSummary &&
    other.orderBookId == orderBookId &&
    other.midPrice == midPrice &&
    other.spread == spread &&
    other.bestBid == bestBid &&
    other.bestAsk == bestAsk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (midPrice.hashCode) +
    (spread.hashCode) +
    (bestBid.hashCode) +
    (bestAsk.hashCode);

  @override
  String toString() => 'OrderBookSummary[orderBookId=$orderBookId, midPrice=$midPrice, spread=$spread, bestBid=$bestBid, bestAsk=$bestAsk]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
      json[r'mid_price'] = this.midPrice;
      json[r'spread'] = this.spread;
      json[r'best_bid'] = this.bestBid;
      json[r'best_ask'] = this.bestAsk;
    return json;
  }

  /// Returns a new [OrderBookSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderBookSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderBookSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderBookSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderBookSummary(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        midPrice: mapValueOfType<String>(json, r'mid_price')!,
        spread: mapValueOfType<String>(json, r'spread')!,
        bestBid: mapValueOfType<String>(json, r'best_bid')!,
        bestAsk: mapValueOfType<String>(json, r'best_ask')!,
      );
    }
    return null;
  }

  static List<OrderBookSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBookSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBookSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderBookSummary> mapFromJson(dynamic json) {
    final map = <String, OrderBookSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderBookSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderBookSummary-objects as value to a dart map
  static Map<String, List<OrderBookSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderBookSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderBookSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_book_id',
    'mid_price',
    'spread',
    'best_bid',
    'best_ask',
  };
}

