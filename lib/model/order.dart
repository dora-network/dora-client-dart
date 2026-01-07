//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Order {
  /// Returns a new [Order] instance.
  Order({
    this.orderId,
    this.orderBookId,
    this.kind,
    this.originalPrice,
    this.avgFillPrice,
    this.cancelledQuantity,
    this.openQuantity,
    this.originalQuantity,
    this.filledQuantity,
    this.filledNotional,
    this.lastUpdateAt,
    this.openedAt,
    this.inverseLeverage,
    this.side,
    this.status,
    this.userId,
    this.orderModifiers = const [],
    this.positionId,
    this.orderInfo,
    this.goodTillDate,
    this.triggerPrice,
    this.triggerType,
  });

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
  String? orderBookId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrderKind? kind;

  /// If Kind is LIMIT, this is the original limit price. If Kind is MARKET, this may be 0 or omitted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originalPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avgFillPrice;

  /// Quantity that was cancelled, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cancelledQuantity;

  /// Quantity that is still open, i.e., not filled or cancelled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openQuantity;

  /// The original quantity of the order when it was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originalQuantity;

  /// Quantity that has been filled so far.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filledQuantity;

  /// Quote quantity that has been filled so far.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filledNotional;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastUpdateAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? openedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inverseLeverage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Side? side;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrderStatus? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  List<OrderModifierKind> orderModifiers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? positionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? goodTillDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? triggerPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TriggerType? triggerType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Order &&
    other.orderId == orderId &&
    other.orderBookId == orderBookId &&
    other.kind == kind &&
    other.originalPrice == originalPrice &&
    other.avgFillPrice == avgFillPrice &&
    other.cancelledQuantity == cancelledQuantity &&
    other.openQuantity == openQuantity &&
    other.originalQuantity == originalQuantity &&
    other.filledQuantity == filledQuantity &&
    other.filledNotional == filledNotional &&
    other.lastUpdateAt == lastUpdateAt &&
    other.openedAt == openedAt &&
    other.inverseLeverage == inverseLeverage &&
    other.side == side &&
    other.status == status &&
    other.userId == userId &&
    _deepEquality.equals(other.orderModifiers, orderModifiers) &&
    other.positionId == positionId &&
    other.orderInfo == orderInfo &&
    other.goodTillDate == goodTillDate &&
    other.triggerPrice == triggerPrice &&
    other.triggerType == triggerType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderId == null ? 0 : orderId!.hashCode) +
    (orderBookId == null ? 0 : orderBookId!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (originalPrice == null ? 0 : originalPrice!.hashCode) +
    (avgFillPrice == null ? 0 : avgFillPrice!.hashCode) +
    (cancelledQuantity == null ? 0 : cancelledQuantity!.hashCode) +
    (openQuantity == null ? 0 : openQuantity!.hashCode) +
    (originalQuantity == null ? 0 : originalQuantity!.hashCode) +
    (filledQuantity == null ? 0 : filledQuantity!.hashCode) +
    (filledNotional == null ? 0 : filledNotional!.hashCode) +
    (lastUpdateAt == null ? 0 : lastUpdateAt!.hashCode) +
    (openedAt == null ? 0 : openedAt!.hashCode) +
    (inverseLeverage == null ? 0 : inverseLeverage!.hashCode) +
    (side == null ? 0 : side!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (orderModifiers.hashCode) +
    (positionId == null ? 0 : positionId!.hashCode) +
    (orderInfo == null ? 0 : orderInfo!.hashCode) +
    (goodTillDate == null ? 0 : goodTillDate!.hashCode) +
    (triggerPrice == null ? 0 : triggerPrice!.hashCode) +
    (triggerType == null ? 0 : triggerType!.hashCode);

  @override
  String toString() => 'Order[orderId=$orderId, orderBookId=$orderBookId, kind=$kind, originalPrice=$originalPrice, avgFillPrice=$avgFillPrice, cancelledQuantity=$cancelledQuantity, openQuantity=$openQuantity, originalQuantity=$originalQuantity, filledQuantity=$filledQuantity, filledNotional=$filledNotional, lastUpdateAt=$lastUpdateAt, openedAt=$openedAt, inverseLeverage=$inverseLeverage, side=$side, status=$status, userId=$userId, orderModifiers=$orderModifiers, positionId=$positionId, orderInfo=$orderInfo, goodTillDate=$goodTillDate, triggerPrice=$triggerPrice, triggerType=$triggerType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orderId != null) {
      json[r'order_id'] = this.orderId;
    } else {
      json[r'order_id'] = null;
    }
    if (this.orderBookId != null) {
      json[r'order_book_id'] = this.orderBookId;
    } else {
      json[r'order_book_id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.originalPrice != null) {
      json[r'original_price'] = this.originalPrice;
    } else {
      json[r'original_price'] = null;
    }
    if (this.avgFillPrice != null) {
      json[r'avg_fill_price'] = this.avgFillPrice;
    } else {
      json[r'avg_fill_price'] = null;
    }
    if (this.cancelledQuantity != null) {
      json[r'cancelled_quantity'] = this.cancelledQuantity;
    } else {
      json[r'cancelled_quantity'] = null;
    }
    if (this.openQuantity != null) {
      json[r'open_quantity'] = this.openQuantity;
    } else {
      json[r'open_quantity'] = null;
    }
    if (this.originalQuantity != null) {
      json[r'original_quantity'] = this.originalQuantity;
    } else {
      json[r'original_quantity'] = null;
    }
    if (this.filledQuantity != null) {
      json[r'filled_quantity'] = this.filledQuantity;
    } else {
      json[r'filled_quantity'] = null;
    }
    if (this.filledNotional != null) {
      json[r'filled_notional'] = this.filledNotional;
    } else {
      json[r'filled_notional'] = null;
    }
    if (this.lastUpdateAt != null) {
      json[r'last_update_at'] = this.lastUpdateAt!.toUtc().toIso8601String();
    } else {
      json[r'last_update_at'] = null;
    }
    if (this.openedAt != null) {
      json[r'opened_at'] = this.openedAt!.toUtc().toIso8601String();
    } else {
      json[r'opened_at'] = null;
    }
    if (this.inverseLeverage != null) {
      json[r'inverse_leverage'] = this.inverseLeverage;
    } else {
      json[r'inverse_leverage'] = null;
    }
    if (this.side != null) {
      json[r'side'] = this.side;
    } else {
      json[r'side'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
      json[r'order_modifiers'] = this.orderModifiers;
    if (this.positionId != null) {
      json[r'position_id'] = this.positionId;
    } else {
      json[r'position_id'] = null;
    }
    if (this.orderInfo != null) {
      json[r'order_info'] = this.orderInfo;
    } else {
      json[r'order_info'] = null;
    }
    if (this.goodTillDate != null) {
      json[r'good_till_date'] = this.goodTillDate!.toUtc().toIso8601String();
    } else {
      json[r'good_till_date'] = null;
    }
    if (this.triggerPrice != null) {
      json[r'trigger_price'] = this.triggerPrice;
    } else {
      json[r'trigger_price'] = null;
    }
    if (this.triggerType != null) {
      json[r'trigger_type'] = this.triggerType;
    } else {
      json[r'trigger_type'] = null;
    }
    return json;
  }

  /// Returns a new [Order] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Order? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Order[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Order[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Order(
        orderId: mapValueOfType<String>(json, r'order_id'),
        orderBookId: mapValueOfType<String>(json, r'order_book_id'),
        kind: OrderKind.fromJson(json[r'kind']),
        originalPrice: mapValueOfType<String>(json, r'original_price'),
        avgFillPrice: mapValueOfType<String>(json, r'avg_fill_price'),
        cancelledQuantity: mapValueOfType<String>(json, r'cancelled_quantity'),
        openQuantity: mapValueOfType<String>(json, r'open_quantity'),
        originalQuantity: mapValueOfType<String>(json, r'original_quantity'),
        filledQuantity: mapValueOfType<String>(json, r'filled_quantity'),
        filledNotional: mapValueOfType<String>(json, r'filled_notional'),
        lastUpdateAt: mapDateTime(json, r'last_update_at', r''),
        openedAt: mapDateTime(json, r'opened_at', r''),
        inverseLeverage: mapValueOfType<String>(json, r'inverse_leverage'),
        side: Side.fromJson(json[r'side']),
        status: OrderStatus.fromJson(json[r'status']),
        userId: mapValueOfType<String>(json, r'user_id'),
        orderModifiers: OrderModifierKind.listFromJson(json[r'order_modifiers']),
        positionId: mapValueOfType<String>(json, r'position_id'),
        orderInfo: mapValueOfType<String>(json, r'order_info'),
        goodTillDate: mapDateTime(json, r'good_till_date', r''),
        triggerPrice: mapValueOfType<String>(json, r'trigger_price'),
        triggerType: TriggerType.fromJson(json[r'trigger_type']),
      );
    }
    return null;
  }

  static List<Order> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Order>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Order.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Order> mapFromJson(dynamic json) {
    final map = <String, Order>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Order.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Order>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Order.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

