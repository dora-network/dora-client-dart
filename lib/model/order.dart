part of dora_client.api;

class Order {
  
  String orderId = null;

  String orderBookId = null;

  OrderKind kind = null;
/* If Kind is LIMIT, this is the original limit price. If Kind is MARKET, this may be 0 or omitted. */
  String originalPrice = null;

  String avgFillPrice = null;
/* Quantity that was cancelled, if any. */
  String cancelledQuantity = null;
/* Quantity that is still open, i.e., not filled or cancelled. */
  String openQuantity = null;
/* The original quantity of the order when it was created. */
  String originalQuantity = null;
/* Quantity that has been filled so far. */
  String filledQuantity = null;

  DateTime lastUpdateAt = null;

  DateTime openedAt = null;

  String inverseLeverage = null;

  Side side = null;

  OrderStatus status = null;

  String userId = null;

  List<OrderModifierKind> orderModifiers = [];

  String positionId = null;

  Order();

  @override
  String toString() {
    return 'Order[orderId=$orderId, orderBookId=$orderBookId, kind=$kind, originalPrice=$originalPrice, avgFillPrice=$avgFillPrice, cancelledQuantity=$cancelledQuantity, openQuantity=$openQuantity, originalQuantity=$originalQuantity, filledQuantity=$filledQuantity, lastUpdateAt=$lastUpdateAt, openedAt=$openedAt, inverseLeverage=$inverseLeverage, side=$side, status=$status, userId=$userId, orderModifiers=$orderModifiers, positionId=$positionId, ]';
  }

  Order.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderId = json['order_id'];
    orderBookId = json['order_book_id'];
    kind = new OrderKind.fromJson(json['kind']);
    originalPrice = json['original_price'];
    avgFillPrice = json['avg_fill_price'];
    cancelledQuantity = json['cancelled_quantity'];
    openQuantity = json['open_quantity'];
    originalQuantity = json['original_quantity'];
    filledQuantity = json['filled_quantity'];
    lastUpdateAt = json['last_update_at'] == null ? null : DateTime.parse(json['last_update_at']);
    openedAt = json['opened_at'] == null ? null : DateTime.parse(json['opened_at']);
    inverseLeverage = json['inverse_leverage'];
    side = new Side.fromJson(json['side']);
    status = new OrderStatus.fromJson(json['status']);
    userId = json['user_id'];
    orderModifiers = OrderModifierKind.listFromJson(json['order_modifiers']);
    positionId = json['position_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order_id': orderId,
      'order_book_id': orderBookId,
      'kind': kind,
      'original_price': originalPrice,
      'avg_fill_price': avgFillPrice,
      'cancelled_quantity': cancelledQuantity,
      'open_quantity': openQuantity,
      'original_quantity': originalQuantity,
      'filled_quantity': filledQuantity,
      'last_update_at': lastUpdateAt == null ? '' : lastUpdateAt.toUtc().toIso8601String(),
      'opened_at': openedAt == null ? '' : openedAt.toUtc().toIso8601String(),
      'inverse_leverage': inverseLeverage,
      'side': side,
      'status': status,
      'user_id': userId,
      'order_modifiers': orderModifiers,
      'position_id': positionId
     };
  }

  static List<Order> listFromJson(List<dynamic> json) {
    return json == null ? new List<Order>() : json.map((value) => new Order.fromJson(value)).toList();
  }

  static Map<String, Order> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Order>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Order.fromJson(value));
    }
    return map;
  }
}
