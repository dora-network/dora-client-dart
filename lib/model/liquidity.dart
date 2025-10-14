part of dora_client.api;

class Liquidity {
  
  String orderBookId = null;

  String positionId = null;

  String transactionId = null;

  String baseQuantity = null;

  String quoteQuantity = null;

  String sharesQuantity = null;

  Liquidity();

  @override
  String toString() {
    return 'Liquidity[orderBookId=$orderBookId, positionId=$positionId, transactionId=$transactionId, baseQuantity=$baseQuantity, quoteQuantity=$quoteQuantity, sharesQuantity=$sharesQuantity, ]';
  }

  Liquidity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderBookId = json['order_book_id'];
    positionId = json['position_id'];
    transactionId = json['transaction_id'];
    baseQuantity = json['base_quantity'];
    quoteQuantity = json['quote_quantity'];
    sharesQuantity = json['shares_quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order_book_id': orderBookId,
      'position_id': positionId,
      'transaction_id': transactionId,
      'base_quantity': baseQuantity,
      'quote_quantity': quoteQuantity,
      'shares_quantity': sharesQuantity
     };
  }

  static List<Liquidity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Liquidity>() : json.map((value) => new Liquidity.fromJson(value)).toList();
  }

  static Map<String, Liquidity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Liquidity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Liquidity.fromJson(value));
    }
    return map;
  }
}
