//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderbookStats {
  /// Returns a new [OrderbookStats] instance.
  OrderbookStats({
    required this.orderBookId,
    required this.openPrice,
    required this.lastPrice,
    required this.high24h,
    required this.low24h,
    required this.change24h,
    required this.changePct24h,
    required this.volume24hBase,
    required this.volume24hUsd,
  });

  String orderBookId;

  /// Open price of the orderbook
  String openPrice;

  /// Price of the most recent executed trade.
  String lastPrice;

  /// Highest price of the orderbook in the last 24 hours.
  String high24h;

  /// Lowest price of the orderbook in the last 24 hours.
  String low24h;

  /// Change in price of the orderbook in the last 24 hours.
  String change24h;

  /// Change percentage in price of the orderbook in the last 24 hours.
  String changePct24h;

  /// Total volume of the orderbook in the last 24 hours.
  String volume24hBase;

  /// Total volume of the orderbook in the last 24 hours in USD.
  String volume24hUsd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderbookStats &&
    other.orderBookId == orderBookId &&
    other.openPrice == openPrice &&
    other.lastPrice == lastPrice &&
    other.high24h == high24h &&
    other.low24h == low24h &&
    other.change24h == change24h &&
    other.changePct24h == changePct24h &&
    other.volume24hBase == volume24hBase &&
    other.volume24hUsd == volume24hUsd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (openPrice.hashCode) +
    (lastPrice.hashCode) +
    (high24h.hashCode) +
    (low24h.hashCode) +
    (change24h.hashCode) +
    (changePct24h.hashCode) +
    (volume24hBase.hashCode) +
    (volume24hUsd.hashCode);

  @override
  String toString() => 'OrderbookStats[orderBookId=$orderBookId, openPrice=$openPrice, lastPrice=$lastPrice, high24h=$high24h, low24h=$low24h, change24h=$change24h, changePct24h=$changePct24h, volume24hBase=$volume24hBase, volume24hUsd=$volume24hUsd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
      json[r'open_price'] = this.openPrice;
      json[r'last_price'] = this.lastPrice;
      json[r'high_24h'] = this.high24h;
      json[r'low_24h'] = this.low24h;
      json[r'change_24h'] = this.change24h;
      json[r'change_pct_24h'] = this.changePct24h;
      json[r'volume_24h_base'] = this.volume24hBase;
      json[r'volume_24h_usd'] = this.volume24hUsd;
    return json;
  }

  /// Returns a new [OrderbookStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderbookStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'order_book_id'), 'Required key "OrderbookStats[order_book_id]" is missing from JSON.');
        assert(json[r'order_book_id'] != null, 'Required key "OrderbookStats[order_book_id]" has a null value in JSON.');
        assert(json.containsKey(r'open_price'), 'Required key "OrderbookStats[open_price]" is missing from JSON.');
        assert(json[r'open_price'] != null, 'Required key "OrderbookStats[open_price]" has a null value in JSON.');
        assert(json.containsKey(r'last_price'), 'Required key "OrderbookStats[last_price]" is missing from JSON.');
        assert(json[r'last_price'] != null, 'Required key "OrderbookStats[last_price]" has a null value in JSON.');
        assert(json.containsKey(r'high_24h'), 'Required key "OrderbookStats[high_24h]" is missing from JSON.');
        assert(json[r'high_24h'] != null, 'Required key "OrderbookStats[high_24h]" has a null value in JSON.');
        assert(json.containsKey(r'low_24h'), 'Required key "OrderbookStats[low_24h]" is missing from JSON.');
        assert(json[r'low_24h'] != null, 'Required key "OrderbookStats[low_24h]" has a null value in JSON.');
        assert(json.containsKey(r'change_24h'), 'Required key "OrderbookStats[change_24h]" is missing from JSON.');
        assert(json[r'change_24h'] != null, 'Required key "OrderbookStats[change_24h]" has a null value in JSON.');
        assert(json.containsKey(r'change_pct_24h'), 'Required key "OrderbookStats[change_pct_24h]" is missing from JSON.');
        assert(json[r'change_pct_24h'] != null, 'Required key "OrderbookStats[change_pct_24h]" has a null value in JSON.');
        assert(json.containsKey(r'volume_24h_base'), 'Required key "OrderbookStats[volume_24h_base]" is missing from JSON.');
        assert(json[r'volume_24h_base'] != null, 'Required key "OrderbookStats[volume_24h_base]" has a null value in JSON.');
        assert(json.containsKey(r'volume_24h_usd'), 'Required key "OrderbookStats[volume_24h_usd]" is missing from JSON.');
        assert(json[r'volume_24h_usd'] != null, 'Required key "OrderbookStats[volume_24h_usd]" has a null value in JSON.');
        return true;
      }());

      return OrderbookStats(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        openPrice: mapValueOfType<String>(json, r'open_price')!,
        lastPrice: mapValueOfType<String>(json, r'last_price')!,
        high24h: mapValueOfType<String>(json, r'high_24h')!,
        low24h: mapValueOfType<String>(json, r'low_24h')!,
        change24h: mapValueOfType<String>(json, r'change_24h')!,
        changePct24h: mapValueOfType<String>(json, r'change_pct_24h')!,
        volume24hBase: mapValueOfType<String>(json, r'volume_24h_base')!,
        volume24hUsd: mapValueOfType<String>(json, r'volume_24h_usd')!,
      );
    }
    return null;
  }

  static List<OrderbookStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderbookStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderbookStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderbookStats> mapFromJson(dynamic json) {
    final map = <String, OrderbookStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderbookStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderbookStats-objects as value to a dart map
  static Map<String, List<OrderbookStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderbookStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderbookStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_book_id',
    'open_price',
    'last_price',
    'high_24h',
    'low_24h',
    'change_24h',
    'change_pct_24h',
    'volume_24h_base',
    'volume_24h_usd',
  };
}

