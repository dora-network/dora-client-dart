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
    this.orderBookId,
    this.bestBid,
    this.bestAsk,
    this.timestamp,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderBookId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bestBid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bestAsk;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBookTop &&
    other.orderBookId == orderBookId &&
    other.bestBid == bestBid &&
    other.bestAsk == bestAsk &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId == null ? 0 : orderBookId!.hashCode) +
    (bestBid == null ? 0 : bestBid!.hashCode) +
    (bestAsk == null ? 0 : bestAsk!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode);

  @override
  String toString() => 'OrderBookTop[orderBookId=$orderBookId, bestBid=$bestBid, bestAsk=$bestAsk, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orderBookId != null) {
      json[r'order_book_id'] = this.orderBookId;
    } else {
      json[r'order_book_id'] = null;
    }
    if (this.bestBid != null) {
      json[r'best_bid'] = this.bestBid;
    } else {
      json[r'best_bid'] = null;
    }
    if (this.bestAsk != null) {
      json[r'best_ask'] = this.bestAsk;
    } else {
      json[r'best_ask'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderBookTop[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderBookTop[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderBookTop(
        orderBookId: mapValueOfType<String>(json, r'order_book_id'),
        bestBid: mapValueOfType<String>(json, r'best_bid'),
        bestAsk: mapValueOfType<String>(json, r'best_ask'),
        timestamp: mapDateTime(json, r'timestamp', r''),
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
  };
}

