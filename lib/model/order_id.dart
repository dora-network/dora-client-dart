part of dora_client.api;

class OrderId {
  
  String orderId = null;

  OrderId();

  @override
  String toString() {
    return 'OrderId[orderId=$orderId, ]';
  }

  OrderId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderId = json['order_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order_id': orderId
     };
  }

  static List<OrderId> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderId>() : json.map((value) => new OrderId.fromJson(value)).toList();
  }

  static Map<String, OrderId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderId.fromJson(value));
    }
    return map;
  }
}
