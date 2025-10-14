part of dora_client.api;

class PriceLevel {
  
  String price = null;

  String quantity = null;

  PriceLevel();

  @override
  String toString() {
    return 'PriceLevel[price=$price, quantity=$quantity, ]';
  }

  PriceLevel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'quantity': quantity
     };
  }

  static List<PriceLevel> listFromJson(List<dynamic> json) {
    return json == null ? new List<PriceLevel>() : json.map((value) => new PriceLevel.fromJson(value)).toList();
  }

  static Map<String, PriceLevel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceLevel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PriceLevel.fromJson(value));
    }
    return map;
  }
}
