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
    this.transactionId,
    this.asset0,
    this.createdAt,
    this.feeAssetId,
    this.feeQuantity,
    this.orderBookId,
    this.orderId,
    this.orderSeq,
    this.price,
    this.quantity0,
    this.userId,
    this.side,
    this.aggressorIndicator,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asset0;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? feeAssetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? feeQuantity;

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
  String? orderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderSeq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? quantity0;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Side? side;

  /// If true, then this order is the aggressor (taker); otherwise it is the maker.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? aggressorIndicator;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Trade &&
    other.transactionId == transactionId &&
    other.asset0 == asset0 &&
    other.createdAt == createdAt &&
    other.feeAssetId == feeAssetId &&
    other.feeQuantity == feeQuantity &&
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
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (asset0 == null ? 0 : asset0!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (feeAssetId == null ? 0 : feeAssetId!.hashCode) +
    (feeQuantity == null ? 0 : feeQuantity!.hashCode) +
    (orderBookId == null ? 0 : orderBookId!.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode) +
    (orderSeq == null ? 0 : orderSeq!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (quantity0 == null ? 0 : quantity0!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (side == null ? 0 : side!.hashCode) +
    (aggressorIndicator == null ? 0 : aggressorIndicator!.hashCode);

  @override
  String toString() => 'Trade[transactionId=$transactionId, asset0=$asset0, createdAt=$createdAt, feeAssetId=$feeAssetId, feeQuantity=$feeQuantity, orderBookId=$orderBookId, orderId=$orderId, orderSeq=$orderSeq, price=$price, quantity0=$quantity0, userId=$userId, side=$side, aggressorIndicator=$aggressorIndicator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.transactionId != null) {
      json[r'transaction_id'] = this.transactionId;
    } else {
      json[r'transaction_id'] = null;
    }
    if (this.asset0 != null) {
      json[r'asset_0'] = this.asset0;
    } else {
      json[r'asset_0'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.feeAssetId != null) {
      json[r'fee_asset_id'] = this.feeAssetId;
    } else {
      json[r'fee_asset_id'] = null;
    }
    if (this.feeQuantity != null) {
      json[r'fee_quantity'] = this.feeQuantity;
    } else {
      json[r'fee_quantity'] = null;
    }
    if (this.orderBookId != null) {
      json[r'order_book_id'] = this.orderBookId;
    } else {
      json[r'order_book_id'] = null;
    }
    if (this.orderId != null) {
      json[r'order_id'] = this.orderId;
    } else {
      json[r'order_id'] = null;
    }
    if (this.orderSeq != null) {
      json[r'order_seq'] = this.orderSeq;
    } else {
      json[r'order_seq'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.quantity0 != null) {
      json[r'quantity_0'] = this.quantity0;
    } else {
      json[r'quantity_0'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.side != null) {
      json[r'side'] = this.side;
    } else {
      json[r'side'] = null;
    }
    if (this.aggressorIndicator != null) {
      json[r'aggressor_indicator'] = this.aggressorIndicator;
    } else {
      json[r'aggressor_indicator'] = null;
    }
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
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
        asset0: mapValueOfType<String>(json, r'asset_0'),
        createdAt: mapDateTime(json, r'created_at', r''),
        feeAssetId: mapValueOfType<String>(json, r'fee_asset_id'),
        feeQuantity: mapValueOfType<String>(json, r'fee_quantity'),
        orderBookId: mapValueOfType<String>(json, r'order_book_id'),
        orderId: mapValueOfType<String>(json, r'order_id'),
        orderSeq: mapValueOfType<int>(json, r'order_seq'),
        price: mapValueOfType<String>(json, r'price'),
        quantity0: mapValueOfType<String>(json, r'quantity_0'),
        userId: mapValueOfType<String>(json, r'user_id'),
        side: Side.fromJson(json[r'side']),
        aggressorIndicator: mapValueOfType<bool>(json, r'aggressor_indicator'),
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
  };
}

