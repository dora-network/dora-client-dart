part of dora_client.api;

class OrderBook {
  
  String orderBookId = null;

  double baseQuantity = null;

  String baseAssetId = null;

  DateTime createdAt = null;

  String displayName = null;

  double feeFactor = null;

  double initialAssetsRatio = null;

  DateTime maturityAt = null;

  double quoteQuantity = null;

  String quoteAssetId = null;

  double sharesQuantity = null;

  OrderBookStatus status = null;

  double tickSize = null;

  DateTime updatedAt = null;

  DateTime haltedAt = null;

  DateTime terminatedAt = null;

  DateTime poolUpdatedAt = null;

  String sharesAssetId = null;

  OrderBook();

  @override
  String toString() {
    return 'OrderBook[orderBookId=$orderBookId, baseQuantity=$baseQuantity, baseAssetId=$baseAssetId, createdAt=$createdAt, displayName=$displayName, feeFactor=$feeFactor, initialAssetsRatio=$initialAssetsRatio, maturityAt=$maturityAt, quoteQuantity=$quoteQuantity, quoteAssetId=$quoteAssetId, sharesQuantity=$sharesQuantity, status=$status, tickSize=$tickSize, updatedAt=$updatedAt, haltedAt=$haltedAt, terminatedAt=$terminatedAt, poolUpdatedAt=$poolUpdatedAt, sharesAssetId=$sharesAssetId, ]';
  }

  OrderBook.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderBookId = json['order_book_id'];
    baseQuantity = json['base_quantity'];
    baseAssetId = json['base_asset_id'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    displayName = json['display_name'];
    feeFactor = json['fee_factor'];
    initialAssetsRatio = json['initial_assets_ratio'];
    maturityAt = json['maturity_at'] == null ? null : DateTime.parse(json['maturity_at']);
    quoteQuantity = json['quote_quantity'];
    quoteAssetId = json['quote_asset_id'];
    sharesQuantity = json['shares_quantity'];
    status = new OrderBookStatus.fromJson(json['status']);
    tickSize = json['tick_size'];
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    haltedAt = json['halted_at'] == null ? null : DateTime.parse(json['halted_at']);
    terminatedAt = json['terminated_at'] == null ? null : DateTime.parse(json['terminated_at']);
    poolUpdatedAt = json['pool_updated_at'] == null ? null : DateTime.parse(json['pool_updated_at']);
    sharesAssetId = json['shares_asset_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order_book_id': orderBookId,
      'base_quantity': baseQuantity,
      'base_asset_id': baseAssetId,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'display_name': displayName,
      'fee_factor': feeFactor,
      'initial_assets_ratio': initialAssetsRatio,
      'maturity_at': maturityAt == null ? '' : maturityAt.toUtc().toIso8601String(),
      'quote_quantity': quoteQuantity,
      'quote_asset_id': quoteAssetId,
      'shares_quantity': sharesQuantity,
      'status': status,
      'tick_size': tickSize,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'halted_at': haltedAt == null ? '' : haltedAt.toUtc().toIso8601String(),
      'terminated_at': terminatedAt == null ? '' : terminatedAt.toUtc().toIso8601String(),
      'pool_updated_at': poolUpdatedAt == null ? '' : poolUpdatedAt.toUtc().toIso8601String(),
      'shares_asset_id': sharesAssetId
     };
  }

  static List<OrderBook> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBook>() : json.map((value) => new OrderBook.fromJson(value)).toList();
  }

  static Map<String, OrderBook> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBook>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBook.fromJson(value));
    }
    return map;
  }
}
