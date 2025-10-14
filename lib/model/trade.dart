part of dora_client.api;

class Trade {
  
  String transactionId = null;

  String asset0 = null;

  DateTime createdAt = null;

  String feeAssetId = null;

  String feeQuantity = null;

  String orderBookId = null;

  String orderId = null;

  int orderSeq = null;

  String price = null;

  String quantity0 = null;

  String userId = null;

  Trade();

  @override
  String toString() {
    return 'Trade[transactionId=$transactionId, asset0=$asset0, createdAt=$createdAt, feeAssetId=$feeAssetId, feeQuantity=$feeQuantity, orderBookId=$orderBookId, orderId=$orderId, orderSeq=$orderSeq, price=$price, quantity0=$quantity0, userId=$userId, ]';
  }

  Trade.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    transactionId = json['transaction_id'];
    asset0 = json['asset_0'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    feeAssetId = json['fee_asset_id'];
    feeQuantity = json['fee_quantity'];
    orderBookId = json['order_book_id'];
    orderId = json['order_id'];
    orderSeq = json['order_seq'];
    price = json['price'];
    quantity0 = json['quantity_0'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'transaction_id': transactionId,
      'asset_0': asset0,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'fee_asset_id': feeAssetId,
      'fee_quantity': feeQuantity,
      'order_book_id': orderBookId,
      'order_id': orderId,
      'order_seq': orderSeq,
      'price': price,
      'quantity_0': quantity0,
      'user_id': userId
     };
  }

  static List<Trade> listFromJson(List<dynamic> json) {
    return json == null ? new List<Trade>() : json.map((value) => new Trade.fromJson(value)).toList();
  }

  static Map<String, Trade> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Trade>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Trade.fromJson(value));
    }
    return map;
  }
}
