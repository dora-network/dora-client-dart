part of dora_client.api;

class Supply {
  
  String positionId = null;

  String transactionId = null;

  String assetId = null;

  String quantity = null;

  Supply();

  @override
  String toString() {
    return 'Supply[positionId=$positionId, transactionId=$transactionId, assetId=$assetId, quantity=$quantity, ]';
  }

  Supply.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    positionId = json['position_id'];
    transactionId = json['transaction_id'];
    assetId = json['asset_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'position_id': positionId,
      'transaction_id': transactionId,
      'asset_id': assetId,
      'quantity': quantity
     };
  }

  static List<Supply> listFromJson(List<dynamic> json) {
    return json == null ? new List<Supply>() : json.map((value) => new Supply.fromJson(value)).toList();
  }

  static Map<String, Supply> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Supply>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Supply.fromJson(value));
    }
    return map;
  }
}
