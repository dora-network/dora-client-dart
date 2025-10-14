part of dora_client.api;

class Collateral {
  
  String positionId = null;

  String transactionId = null;

  String assetId = null;

  String quantity = null;

  Collateral();

  @override
  String toString() {
    return 'Collateral[positionId=$positionId, transactionId=$transactionId, assetId=$assetId, quantity=$quantity, ]';
  }

  Collateral.fromJson(Map<String, dynamic> json) {
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

  static List<Collateral> listFromJson(List<dynamic> json) {
    return json == null ? new List<Collateral>() : json.map((value) => new Collateral.fromJson(value)).toList();
  }

  static Map<String, Collateral> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Collateral>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Collateral.fromJson(value));
    }
    return map;
  }
}
