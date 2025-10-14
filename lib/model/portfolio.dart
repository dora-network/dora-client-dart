part of dora_client.api;

class Portfolio {
  
  String userId = null;

  Map<String, Map<String, Position>> position = {};

  TransformedAssets netStablecoinEquivalence = null;

  Portfolio();

  @override
  String toString() {
    return 'Portfolio[userId=$userId, position=$position, netStablecoinEquivalence=$netStablecoinEquivalence, ]';
  }

  Portfolio.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId = json['user_id'];
    position = Map.mapFromJson(json['position']);
    netStablecoinEquivalence = new TransformedAssets.fromJson(json['net_stablecoin_equivalence']);
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'position': position,
      'net_stablecoin_equivalence': netStablecoinEquivalence
     };
  }

  static List<Portfolio> listFromJson(List<dynamic> json) {
    return json == null ? new List<Portfolio>() : json.map((value) => new Portfolio.fromJson(value)).toList();
  }

  static Map<String, Portfolio> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Portfolio>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Portfolio.fromJson(value));
    }
    return map;
  }
}
