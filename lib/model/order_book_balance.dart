part of dora_client.api;

class OrderBookBalance {
  /* The ID of the order book. */
  String orderBookId = null;
/* The quantity of the base asset. */
  double baseQuantity = null;
/* The quantity of the quote asset. */
  double quoteQuantity = null;
/* The quantity of pool shares. */
  double sharesQuantity = null;

  OrderBookBalance();

  @override
  String toString() {
    return 'OrderBookBalance[orderBookId=$orderBookId, baseQuantity=$baseQuantity, quoteQuantity=$quoteQuantity, sharesQuantity=$sharesQuantity, ]';
  }

  OrderBookBalance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderBookId = json['order_book_id'];
    baseQuantity = json['base_quantity'];
    quoteQuantity = json['quote_quantity'];
    sharesQuantity = json['shares_quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order_book_id': orderBookId,
      'base_quantity': baseQuantity,
      'quote_quantity': quoteQuantity,
      'shares_quantity': sharesQuantity
     };
  }

  static List<OrderBookBalance> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBookBalance>() : json.map((value) => new OrderBookBalance.fromJson(value)).toList();
  }

  static Map<String, OrderBookBalance> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBookBalance>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBookBalance.fromJson(value));
    }
    return map;
  }
}
