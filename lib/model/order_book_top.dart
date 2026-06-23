//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderBookTop {
  /// Returns a new [OrderBookTop] instance.
  OrderBookTop({
    required this.orderBookId,
    required this.bestBid,
    required this.bestAsk,
    required this.timestamp,
  });

  String orderBookId;

  String bestBid;

  String bestAsk;

  DateTime timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBookTop &&
    other.orderBookId == orderBookId &&
    other.bestBid == bestBid &&
    other.bestAsk == bestAsk &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (bestBid.hashCode) +
    (bestAsk.hashCode) +
    (timestamp.hashCode);

  @override
  String toString() => 'OrderBookTop[orderBookId=$orderBookId, bestBid=$bestBid, bestAsk=$bestAsk, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
      json[r'best_bid'] = this.bestBid;
      json[r'best_ask'] = this.bestAsk;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OrderBookTop] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderBookTop? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'order_book_id'), 'Required key "OrderBookTop[order_book_id]" is missing from JSON.');
        assert(json[r'order_book_id'] != null, 'Required key "OrderBookTop[order_book_id]" has a null value in JSON.');
        assert(json.containsKey(r'best_bid'), 'Required key "OrderBookTop[best_bid]" is missing from JSON.');
        assert(json[r'best_bid'] != null, 'Required key "OrderBookTop[best_bid]" has a null value in JSON.');
        assert(json.containsKey(r'best_ask'), 'Required key "OrderBookTop[best_ask]" is missing from JSON.');
        assert(json[r'best_ask'] != null, 'Required key "OrderBookTop[best_ask]" has a null value in JSON.');
        assert(json.containsKey(r'timestamp'), 'Required key "OrderBookTop[timestamp]" is missing from JSON.');
        assert(json[r'timestamp'] != null, 'Required key "OrderBookTop[timestamp]" has a null value in JSON.');
        return true;
      }());

      return OrderBookTop(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        bestBid: mapValueOfType<String>(json, r'best_bid')!,
        bestAsk: mapValueOfType<String>(json, r'best_ask')!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
      );
    }
    return null;
  }

  static List<OrderBookTop> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBookTop>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBookTop.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderBookTop> mapFromJson(dynamic json) {
    final map = <String, OrderBookTop>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderBookTop.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderBookTop-objects as value to a dart map
  static Map<String, List<OrderBookTop>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderBookTop>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderBookTop.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_book_id',
    'best_bid',
    'best_ask',
    'timestamp',
  };
}

