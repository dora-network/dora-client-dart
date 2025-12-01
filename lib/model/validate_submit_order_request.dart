part of dora_client.api;

class ValidateSubmitOrderRequest {
  
  String quantity = null;
/* Minimum tradable increment for the selected order book */
  String tick = null;

  OrderKind kind = null;

  Side side = null;
/* If kind is LIMIT, must be > 0; if MARKET it must be 0 or omitted */
  String price = null;

  DateTime goodTillDate = null;

  String inverseLeverage = null;
/* User balance used to ensure they can afford the requested quantity */
  String userBalance = null;

  ValidateSubmitOrderRequest();

  @override
  String toString() {
    return 'ValidateSubmitOrderRequest[quantity=$quantity, tick=$tick, kind=$kind, side=$side, price=$price, goodTillDate=$goodTillDate, inverseLeverage=$inverseLeverage, userBalance=$userBalance, ]';
  }

  ValidateSubmitOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    quantity = json['quantity'];
    tick = json['tick'];
    kind = new OrderKind.fromJson(json['kind']);
    side = new Side.fromJson(json['side']);
    price = json['price'];
    goodTillDate = json['good_till_date'] == null ? null : DateTime.parse(json['good_till_date']);
    inverseLeverage = json['inverse_leverage'];
    userBalance = json['user_balance'];
  }

  Map<String, dynamic> toJson() {
    return {
      'quantity': quantity,
      'tick': tick,
      'kind': kind,
      'side': side,
      'price': price,
      'good_till_date': goodTillDate == null ? '' : goodTillDate.toUtc().toIso8601String(),
      'inverse_leverage': inverseLeverage,
      'user_balance': userBalance
     };
  }

  static List<ValidateSubmitOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidateSubmitOrderRequest>() : json.map((value) => new ValidateSubmitOrderRequest.fromJson(value)).toList();
  }

  static Map<String, ValidateSubmitOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidateSubmitOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidateSubmitOrderRequest.fromJson(value));
    }
    return map;
  }
}
