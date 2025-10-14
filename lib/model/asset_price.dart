part of dora_client.api;

class AssetPrice {
  
  String assetId = null;

  String price = null;

  DateTime time = null;

  AssetPrice();

  @override
  String toString() {
    return 'AssetPrice[assetId=$assetId, price=$price, time=$time, ]';
  }

  AssetPrice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assetId = json['asset_id'];
    price = json['price'];
    time = json['time'] == null ? null : DateTime.parse(json['time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'asset_id': assetId,
      'price': price,
      'time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<AssetPrice> listFromJson(List<dynamic> json) {
    return json == null ? new List<AssetPrice>() : json.map((value) => new AssetPrice.fromJson(value)).toList();
  }

  static Map<String, AssetPrice> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AssetPrice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AssetPrice.fromJson(value));
    }
    return map;
  }
}
