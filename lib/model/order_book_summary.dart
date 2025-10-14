part of dora_client.api;

class OrderBookSummary {
  
  String orderBookId = null;

  String midPrice = null;

  String spread = null;

  String bestBid = null;

  String bestAsk = null;

  OrderBookSummary();

  @override
  String toString() {
    return 'OrderBookSummary[orderBookId=$orderBookId, midPrice=$midPrice, spread=$spread, bestBid=$bestBid, bestAsk=$bestAsk, ]';
  }

  OrderBookSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderBookId = json['order_book_id'];
    midPrice = json['mid_price'];
    spread = json['spread'];
    bestBid = json['best_bid'];
    bestAsk = json['best_ask'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order_book_id': orderBookId,
      'mid_price': midPrice,
      'spread': spread,
      'best_bid': bestBid,
      'best_ask': bestAsk
     };
  }

  static List<OrderBookSummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBookSummary>() : json.map((value) => new OrderBookSummary.fromJson(value)).toList();
  }

  static Map<String, OrderBookSummary> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBookSummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBookSummary.fromJson(value));
    }
    return map;
  }
}
