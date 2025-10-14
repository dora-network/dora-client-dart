part of dora_client.api;

class PoolPrice {
  
  String poolId = null;

  String price = null;

  DateTime timestamp = null;

  PoolPrice();

  @override
  String toString() {
    return 'PoolPrice[poolId=$poolId, price=$price, timestamp=$timestamp, ]';
  }

  PoolPrice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    poolId = json['pool_id'];
    price = json['price'];
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pool_id': poolId,
      'price': price,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String()
     };
  }

  static List<PoolPrice> listFromJson(List<dynamic> json) {
    return json == null ? new List<PoolPrice>() : json.map((value) => new PoolPrice.fromJson(value)).toList();
  }

  static Map<String, PoolPrice> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PoolPrice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PoolPrice.fromJson(value));
    }
    return map;
  }
}
