part of dora_client.api;

class OrderBookTop {
  
  String orderBookId = null;

  String bestBid = null;

  String bestAsk = null;

  DateTime timestamp = null;

  OrderBookTop();

  @override
  String toString() {
    return 'OrderBookTop[orderBookId=$orderBookId, bestBid=$bestBid, bestAsk=$bestAsk, timestamp=$timestamp, ]';
  }

  OrderBookTop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderBookId = json['order_book_id'];
    bestBid = json['best_bid'];
    bestAsk = json['best_ask'];
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
  }

  Map<String, dynamic> toJson() {
    return {
      'order_book_id': orderBookId,
      'best_bid': bestBid,
      'best_ask': bestAsk,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String()
     };
  }

  static List<OrderBookTop> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBookTop>() : json.map((value) => new OrderBookTop.fromJson(value)).toList();
  }

  static Map<String, OrderBookTop> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBookTop>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBookTop.fromJson(value));
    }
    return map;
  }
}
