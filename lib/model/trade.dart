//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Trade {
  /// Returns a new [Trade] instance.
  Trade({
    required this.transactionId,
    required this.asset0,
    required this.createdAt,
    required this.orderBookId,
    required this.orderId,
    required this.orderSeq,
    required this.price,
    required this.quantity0,
    required this.userId,
    required this.side,
    required this.aggressorIndicator,
  });

  String transactionId;

  String asset0;

  DateTime createdAt;

  String orderBookId;

  String orderId;

  /// Minimum value: 1
  int orderSeq;

  String price;

  String quantity0;

  String userId;

  Side side;

  /// If true, then this order is the aggressor (taker); otherwise it is the maker.
  bool aggressorIndicator;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Trade &&
    other.transactionId == transactionId &&
    other.asset0 == asset0 &&
    other.createdAt == createdAt &&
    other.orderBookId == orderBookId &&
    other.orderId == orderId &&
    other.orderSeq == orderSeq &&
    other.price == price &&
    other.quantity0 == quantity0 &&
    other.userId == userId &&
    other.side == side &&
    other.aggressorIndicator == aggressorIndicator;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (transactionId.hashCode) +
    (asset0.hashCode) +
    (createdAt.hashCode) +
    (orderBookId.hashCode) +
    (orderId.hashCode) +
    (orderSeq.hashCode) +
    (price.hashCode) +
    (quantity0.hashCode) +
    (userId.hashCode) +
    (side.hashCode) +
    (aggressorIndicator.hashCode);

  @override
  String toString() => 'Trade[transactionId=$transactionId, asset0=$asset0, createdAt=$createdAt, orderBookId=$orderBookId, orderId=$orderId, orderSeq=$orderSeq, price=$price, quantity0=$quantity0, userId=$userId, side=$side, aggressorIndicator=$aggressorIndicator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_id'] = this.transactionId;
      json[r'asset_0'] = this.asset0;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'order_book_id'] = this.orderBookId;
      json[r'order_id'] = this.orderId;
      json[r'order_seq'] = this.orderSeq;
      json[r'price'] = this.price;
      json[r'quantity_0'] = this.quantity0;
      json[r'user_id'] = this.userId;
      json[r'side'] = this.side;
      json[r'aggressor_indicator'] = this.aggressorIndicator;
    return json;
  }

  /// Returns a new [Trade] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Trade? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Trade[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Trade[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Trade(
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
        asset0: mapValueOfType<String>(json, r'asset_0')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        orderId: mapValueOfType<String>(json, r'order_id')!,
        orderSeq: mapValueOfType<int>(json, r'order_seq')!,
        price: mapValueOfType<String>(json, r'price')!,
        quantity0: mapValueOfType<String>(json, r'quantity_0')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        side: Side.fromJson(json[r'side'])!,
        aggressorIndicator: mapValueOfType<bool>(json, r'aggressor_indicator')!,
      );
    }
    return null;
  }

  static List<Trade> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Trade>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Trade.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Trade> mapFromJson(dynamic json) {
    final map = <String, Trade>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Trade.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Trade-objects as value to a dart map
  static Map<String, List<Trade>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Trade>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Trade.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'transaction_id',
    'asset_0',
    'created_at',
    'order_book_id',
    'order_id',
    'order_seq',
    'price',
    'quantity_0',
    'user_id',
    'side',
    'aggressor_indicator',
  };
}

