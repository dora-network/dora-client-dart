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
    required this.orderId,
    required this.orderBookId,
    required this.kind,
    required this.originalPrice,
    required this.avgFillPrice,
    required this.cancelledQuantity,
    required this.openQuantity,
    required this.originalQuantity,
    required this.filledQuantity,
    required this.filledNotional,
    required this.lockedQuantity,
    required this.impendingBorrowsQuantity,
    required this.lastUpdateAt,
    required this.openedAt,
    required this.inverseLeverage,
    required this.side,
    required this.status,
    required this.userId,
    this.orderModifiers = const [],
    required this.positionId,
    this.orderInfo,
    this.goodTillDate,
    this.triggerPrice,
    this.triggerType,
    this.clientOrderId,
    this.parentOrderId,
  });

  String orderId;

  String orderBookId;

  OrderKind kind;

  /// If Kind is LIMIT, this is the original limit price. If Kind is MARKET, this may be 0 or omitted.
  String originalPrice;

  String avgFillPrice;

  /// Quantity that was cancelled, if any.
  String cancelledQuantity;

  /// Quantity that is still open, i.e., not filled or cancelled.
  String openQuantity;

  /// The original quantity of the order when it was created.
  String originalQuantity;

  /// Quantity that has been filled so far.
  String filledQuantity;

  /// Quote quantity that has been filled so far.
  String filledNotional;

  /// Balance locked to ensure limit buy orders have sufficient balance to be fulfilled
  String lockedQuantity;

  /// Borrows locked from the liquidity pool to ensure limit short sell orders have sufficient balance to be fulfilled
  String impendingBorrowsQuantity;

  DateTime lastUpdateAt;

  DateTime openedAt;

  String inverseLeverage;

  Side side;

  OrderStatus status;

  String userId;

  List<OrderModifierKind> orderModifiers;

  String positionId;

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

  /// An optional client-provided identifier for the order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientOrderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentOrderId;

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
    other.lockedQuantity == lockedQuantity &&
    other.impendingBorrowsQuantity == impendingBorrowsQuantity &&
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
    other.triggerType == triggerType &&
    other.clientOrderId == clientOrderId &&
    other.parentOrderId == parentOrderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderId.hashCode) +
    (orderBookId.hashCode) +
    (kind.hashCode) +
    (originalPrice.hashCode) +
    (avgFillPrice.hashCode) +
    (cancelledQuantity.hashCode) +
    (openQuantity.hashCode) +
    (originalQuantity.hashCode) +
    (filledQuantity.hashCode) +
    (filledNotional.hashCode) +
    (lockedQuantity.hashCode) +
    (impendingBorrowsQuantity.hashCode) +
    (lastUpdateAt.hashCode) +
    (openedAt.hashCode) +
    (inverseLeverage.hashCode) +
    (side.hashCode) +
    (status.hashCode) +
    (userId.hashCode) +
    (orderModifiers.hashCode) +
    (positionId.hashCode) +
    (orderInfo == null ? 0 : orderInfo!.hashCode) +
    (goodTillDate == null ? 0 : goodTillDate!.hashCode) +
    (triggerPrice == null ? 0 : triggerPrice!.hashCode) +
    (triggerType == null ? 0 : triggerType!.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId!.hashCode) +
    (parentOrderId == null ? 0 : parentOrderId!.hashCode);

  @override
  String toString() => 'Order[orderId=$orderId, orderBookId=$orderBookId, kind=$kind, originalPrice=$originalPrice, avgFillPrice=$avgFillPrice, cancelledQuantity=$cancelledQuantity, openQuantity=$openQuantity, originalQuantity=$originalQuantity, filledQuantity=$filledQuantity, filledNotional=$filledNotional, lockedQuantity=$lockedQuantity, impendingBorrowsQuantity=$impendingBorrowsQuantity, lastUpdateAt=$lastUpdateAt, openedAt=$openedAt, inverseLeverage=$inverseLeverage, side=$side, status=$status, userId=$userId, orderModifiers=$orderModifiers, positionId=$positionId, orderInfo=$orderInfo, goodTillDate=$goodTillDate, triggerPrice=$triggerPrice, triggerType=$triggerType, clientOrderId=$clientOrderId, parentOrderId=$parentOrderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_id'] = this.orderId;
      json[r'order_book_id'] = this.orderBookId;
      json[r'kind'] = this.kind;
      json[r'original_price'] = this.originalPrice;
      json[r'avg_fill_price'] = this.avgFillPrice;
      json[r'cancelled_quantity'] = this.cancelledQuantity;
      json[r'open_quantity'] = this.openQuantity;
      json[r'original_quantity'] = this.originalQuantity;
      json[r'filled_quantity'] = this.filledQuantity;
      json[r'filled_notional'] = this.filledNotional;
      json[r'locked_quantity'] = this.lockedQuantity;
      json[r'impending_borrows_quantity'] = this.impendingBorrowsQuantity;
      json[r'last_update_at'] = this.lastUpdateAt.toUtc().toIso8601String();
      json[r'opened_at'] = this.openedAt.toUtc().toIso8601String();
      json[r'inverse_leverage'] = this.inverseLeverage;
      json[r'side'] = this.side;
      json[r'status'] = this.status;
      json[r'user_id'] = this.userId;
      json[r'order_modifiers'] = this.orderModifiers;
      json[r'position_id'] = this.positionId;
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
    if (this.clientOrderId != null) {
      json[r'client_order_id'] = this.clientOrderId;
    } else {
      json[r'client_order_id'] = null;
    }
    if (this.parentOrderId != null) {
      json[r'parent_order_id'] = this.parentOrderId;
    } else {
      json[r'parent_order_id'] = null;
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
        assert(json.containsKey(r'order_id'), 'Required key "Order[order_id]" is missing from JSON.');
        assert(json[r'order_id'] != null, 'Required key "Order[order_id]" has a null value in JSON.');
        assert(json.containsKey(r'order_book_id'), 'Required key "Order[order_book_id]" is missing from JSON.');
        assert(json[r'order_book_id'] != null, 'Required key "Order[order_book_id]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "Order[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "Order[kind]" has a null value in JSON.');
        assert(json.containsKey(r'original_price'), 'Required key "Order[original_price]" is missing from JSON.');
        assert(json[r'original_price'] != null, 'Required key "Order[original_price]" has a null value in JSON.');
        assert(json.containsKey(r'avg_fill_price'), 'Required key "Order[avg_fill_price]" is missing from JSON.');
        assert(json[r'avg_fill_price'] != null, 'Required key "Order[avg_fill_price]" has a null value in JSON.');
        assert(json.containsKey(r'cancelled_quantity'), 'Required key "Order[cancelled_quantity]" is missing from JSON.');
        assert(json[r'cancelled_quantity'] != null, 'Required key "Order[cancelled_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'open_quantity'), 'Required key "Order[open_quantity]" is missing from JSON.');
        assert(json[r'open_quantity'] != null, 'Required key "Order[open_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'original_quantity'), 'Required key "Order[original_quantity]" is missing from JSON.');
        assert(json[r'original_quantity'] != null, 'Required key "Order[original_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'filled_quantity'), 'Required key "Order[filled_quantity]" is missing from JSON.');
        assert(json[r'filled_quantity'] != null, 'Required key "Order[filled_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'filled_notional'), 'Required key "Order[filled_notional]" is missing from JSON.');
        assert(json[r'filled_notional'] != null, 'Required key "Order[filled_notional]" has a null value in JSON.');
        assert(json.containsKey(r'locked_quantity'), 'Required key "Order[locked_quantity]" is missing from JSON.');
        assert(json[r'locked_quantity'] != null, 'Required key "Order[locked_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'impending_borrows_quantity'), 'Required key "Order[impending_borrows_quantity]" is missing from JSON.');
        assert(json[r'impending_borrows_quantity'] != null, 'Required key "Order[impending_borrows_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'last_update_at'), 'Required key "Order[last_update_at]" is missing from JSON.');
        assert(json[r'last_update_at'] != null, 'Required key "Order[last_update_at]" has a null value in JSON.');
        assert(json.containsKey(r'opened_at'), 'Required key "Order[opened_at]" is missing from JSON.');
        assert(json[r'opened_at'] != null, 'Required key "Order[opened_at]" has a null value in JSON.');
        assert(json.containsKey(r'inverse_leverage'), 'Required key "Order[inverse_leverage]" is missing from JSON.');
        assert(json[r'inverse_leverage'] != null, 'Required key "Order[inverse_leverage]" has a null value in JSON.');
        assert(json.containsKey(r'side'), 'Required key "Order[side]" is missing from JSON.');
        assert(json[r'side'] != null, 'Required key "Order[side]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "Order[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "Order[status]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "Order[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "Order[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'position_id'), 'Required key "Order[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "Order[position_id]" has a null value in JSON.');
        return true;
      }());

      return Order(
        orderId: mapValueOfType<String>(json, r'order_id')!,
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        kind: OrderKind.fromJson(json[r'kind'])!,
        originalPrice: mapValueOfType<String>(json, r'original_price')!,
        avgFillPrice: mapValueOfType<String>(json, r'avg_fill_price')!,
        cancelledQuantity: mapValueOfType<String>(json, r'cancelled_quantity')!,
        openQuantity: mapValueOfType<String>(json, r'open_quantity')!,
        originalQuantity: mapValueOfType<String>(json, r'original_quantity')!,
        filledQuantity: mapValueOfType<String>(json, r'filled_quantity')!,
        filledNotional: mapValueOfType<String>(json, r'filled_notional')!,
        lockedQuantity: mapValueOfType<String>(json, r'locked_quantity')!,
        impendingBorrowsQuantity: mapValueOfType<String>(json, r'impending_borrows_quantity')!,
        lastUpdateAt: mapDateTime(json, r'last_update_at', r'')!,
        openedAt: mapDateTime(json, r'opened_at', r'')!,
        inverseLeverage: mapValueOfType<String>(json, r'inverse_leverage')!,
        side: Side.fromJson(json[r'side'])!,
        status: OrderStatus.fromJson(json[r'status'])!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        orderModifiers: OrderModifierKind.listFromJson(json[r'order_modifiers']),
        positionId: mapValueOfType<String>(json, r'position_id')!,
        orderInfo: mapValueOfType<String>(json, r'order_info'),
        goodTillDate: mapDateTime(json, r'good_till_date', r''),
        triggerPrice: mapValueOfType<String>(json, r'trigger_price'),
        triggerType: TriggerType.fromJson(json[r'trigger_type']),
        clientOrderId: mapValueOfType<String>(json, r'client_order_id'),
        parentOrderId: mapValueOfType<String>(json, r'parent_order_id'),
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
    'order_id',
    'order_book_id',
    'kind',
    'original_price',
    'avg_fill_price',
    'cancelled_quantity',
    'open_quantity',
    'original_quantity',
    'filled_quantity',
    'filled_notional',
    'locked_quantity',
    'impending_borrows_quantity',
    'last_update_at',
    'opened_at',
    'inverse_leverage',
    'side',
    'status',
    'user_id',
    'position_id',
  };
}

