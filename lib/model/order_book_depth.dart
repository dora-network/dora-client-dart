//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderBookDepth {
  /// Returns a new [OrderBookDepth] instance.
  OrderBookDepth({
    required this.orderBookId,
    this.bids = const [],
    this.asks = const [],
    required this.timestamp,
  });

  String orderBookId;

  List<PriceLevel> bids;

  List<PriceLevel> asks;

  DateTime timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBookDepth &&
    other.orderBookId == orderBookId &&
    _deepEquality.equals(other.bids, bids) &&
    _deepEquality.equals(other.asks, asks) &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (bids.hashCode) +
    (asks.hashCode) +
    (timestamp.hashCode);

  @override
  String toString() => 'OrderBookDepth[orderBookId=$orderBookId, bids=$bids, asks=$asks, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
      json[r'bids'] = this.bids;
      json[r'asks'] = this.asks;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OrderBookDepth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderBookDepth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'order_book_id'), 'Required key "OrderBookDepth[order_book_id]" is missing from JSON.');
        assert(json[r'order_book_id'] != null, 'Required key "OrderBookDepth[order_book_id]" has a null value in JSON.');
        assert(json.containsKey(r'bids'), 'Required key "OrderBookDepth[bids]" is missing from JSON.');
        assert(json[r'bids'] != null, 'Required key "OrderBookDepth[bids]" has a null value in JSON.');
        assert(json.containsKey(r'asks'), 'Required key "OrderBookDepth[asks]" is missing from JSON.');
        assert(json[r'asks'] != null, 'Required key "OrderBookDepth[asks]" has a null value in JSON.');
        assert(json.containsKey(r'timestamp'), 'Required key "OrderBookDepth[timestamp]" is missing from JSON.');
        assert(json[r'timestamp'] != null, 'Required key "OrderBookDepth[timestamp]" has a null value in JSON.');
        return true;
      }());

      return OrderBookDepth(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        bids: PriceLevel.listFromJson(json[r'bids']),
        asks: PriceLevel.listFromJson(json[r'asks']),
        timestamp: mapDateTime(json, r'timestamp', r'')!,
      );
    }
    return null;
  }

  static List<OrderBookDepth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBookDepth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBookDepth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderBookDepth> mapFromJson(dynamic json) {
    final map = <String, OrderBookDepth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderBookDepth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderBookDepth-objects as value to a dart map
  static Map<String, List<OrderBookDepth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderBookDepth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderBookDepth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_book_id',
    'bids',
    'asks',
    'timestamp',
  };
}

