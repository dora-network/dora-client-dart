part of dora_client.api;

class CreateOrderRequest {
  
  String quantity = null;

  String inverseLeverage = null;

  String price = null;

  OrderKind kind = null;

  Side side = null;
/* position ID to use for the order. required. */
  String positionId = null;
/* Required: the order book to submit the order to */
  String orderBookId = null;

  List<OrderModifierKind> orderModifiers = [];

  DateTime goodTillDate = null;

  String triggerPrice = null;

  CreateOrderRequest();

  @override
  String toString() {
    return 'CreateOrderRequest[quantity=$quantity, inverseLeverage=$inverseLeverage, price=$price, kind=$kind, side=$side, positionId=$positionId, orderBookId=$orderBookId, orderModifiers=$orderModifiers, goodTillDate=$goodTillDate, triggerPrice=$triggerPrice, ]';
  }

  CreateOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    quantity = json['quantity'];
    inverseLeverage = json['inverse_leverage'];
    price = json['price'];
    kind = new OrderKind.fromJson(json['kind']);
    side = new Side.fromJson(json['side']);
    positionId = json['position_id'];
    orderBookId = json['order_book_id'];
    orderModifiers = OrderModifierKind.listFromJson(json['order_modifiers']);
    goodTillDate = json['good_till_date'] == null ? null : DateTime.parse(json['good_till_date']);
    triggerPrice = json['trigger_price'];
  }

  Map<String, dynamic> toJson() {
    return {
      'quantity': quantity,
      'inverse_leverage': inverseLeverage,
      'price': price,
      'kind': kind,
      'side': side,
      'position_id': positionId,
      'order_book_id': orderBookId,
      'order_modifiers': orderModifiers,
      'good_till_date': goodTillDate == null ? '' : goodTillDate.toUtc().toIso8601String(),
      'trigger_price': triggerPrice
     };
  }

  static List<CreateOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrderRequest>() : json.map((value) => new CreateOrderRequest.fromJson(value)).toList();
  }

  static Map<String, CreateOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrderRequest.fromJson(value));
    }
    return map;
  }
}
