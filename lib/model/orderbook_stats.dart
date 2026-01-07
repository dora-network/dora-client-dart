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
    this.orderBookId,
    this.openPrice,
    this.lastPrice,
    this.high24h,
    this.low24h,
    this.change24h,
    this.changePct24h,
    this.volume24hBase,
    this.volume24hUsd,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderBookId;

  /// Open price of the orderbook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openPrice;

  /// Price of the most recent executed trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastPrice;

  /// Highest price of the orderbook in the last 24 hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? high24h;

  /// Lowest price of the orderbook in the last 24 hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? low24h;

  /// Change in price of the orderbook in the last 24 hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? change24h;

  /// Change percentage in price of the orderbook in the last 24 hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? changePct24h;

  /// Total volume of the orderbook in the last 24 hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volume24hBase;

  /// Total volume of the orderbook in the last 24 hours in USD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volume24hUsd;

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
    (orderBookId == null ? 0 : orderBookId!.hashCode) +
    (openPrice == null ? 0 : openPrice!.hashCode) +
    (lastPrice == null ? 0 : lastPrice!.hashCode) +
    (high24h == null ? 0 : high24h!.hashCode) +
    (low24h == null ? 0 : low24h!.hashCode) +
    (change24h == null ? 0 : change24h!.hashCode) +
    (changePct24h == null ? 0 : changePct24h!.hashCode) +
    (volume24hBase == null ? 0 : volume24hBase!.hashCode) +
    (volume24hUsd == null ? 0 : volume24hUsd!.hashCode);

  @override
  String toString() => 'OrderbookStats[orderBookId=$orderBookId, openPrice=$openPrice, lastPrice=$lastPrice, high24h=$high24h, low24h=$low24h, change24h=$change24h, changePct24h=$changePct24h, volume24hBase=$volume24hBase, volume24hUsd=$volume24hUsd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orderBookId != null) {
      json[r'order_book_id'] = this.orderBookId;
    } else {
      json[r'order_book_id'] = null;
    }
    if (this.openPrice != null) {
      json[r'open_price'] = this.openPrice;
    } else {
      json[r'open_price'] = null;
    }
    if (this.lastPrice != null) {
      json[r'last_price'] = this.lastPrice;
    } else {
      json[r'last_price'] = null;
    }
    if (this.high24h != null) {
      json[r'high_24h'] = this.high24h;
    } else {
      json[r'high_24h'] = null;
    }
    if (this.low24h != null) {
      json[r'low_24h'] = this.low24h;
    } else {
      json[r'low_24h'] = null;
    }
    if (this.change24h != null) {
      json[r'change_24h'] = this.change24h;
    } else {
      json[r'change_24h'] = null;
    }
    if (this.changePct24h != null) {
      json[r'change_pct_24h'] = this.changePct24h;
    } else {
      json[r'change_pct_24h'] = null;
    }
    if (this.volume24hBase != null) {
      json[r'volume_24h_base'] = this.volume24hBase;
    } else {
      json[r'volume_24h_base'] = null;
    }
    if (this.volume24hUsd != null) {
      json[r'volume_24h_usd'] = this.volume24hUsd;
    } else {
      json[r'volume_24h_usd'] = null;
    }
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderbookStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderbookStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderbookStats(
        orderBookId: mapValueOfType<String>(json, r'order_book_id'),
        openPrice: mapValueOfType<String>(json, r'open_price'),
        lastPrice: mapValueOfType<String>(json, r'last_price'),
        high24h: mapValueOfType<String>(json, r'high_24h'),
        low24h: mapValueOfType<String>(json, r'low_24h'),
        change24h: mapValueOfType<String>(json, r'change_24h'),
        changePct24h: mapValueOfType<String>(json, r'change_pct_24h'),
        volume24hBase: mapValueOfType<String>(json, r'volume_24h_base'),
        volume24hUsd: mapValueOfType<String>(json, r'volume_24h_usd'),
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
  };
}

