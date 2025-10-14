part of dora_client.api;

class OrderBookDepth {
  
  String orderBookId = null;

  List<PriceLevel> bids = [];

  List<PriceLevel> asks = [];

  DateTime timestamp = null;

  OrderBookDepth();

  @override
  String toString() {
    return 'OrderBookDepth[orderBookId=$orderBookId, bids=$bids, asks=$asks, timestamp=$timestamp, ]';
  }

  OrderBookDepth.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderBookId = json['order_book_id'];
    bids = PriceLevel.listFromJson(json['bids']);
    asks = PriceLevel.listFromJson(json['asks']);
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
  }

  Map<String, dynamic> toJson() {
    return {
      'order_book_id': orderBookId,
      'bids': bids,
      'asks': asks,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String()
     };
  }

  static List<OrderBookDepth> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBookDepth>() : json.map((value) => new OrderBookDepth.fromJson(value)).toList();
  }

  static Map<String, OrderBookDepth> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBookDepth>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBookDepth.fromJson(value));
    }
    return map;
  }
}
