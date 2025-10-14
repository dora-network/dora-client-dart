part of dora_client.api;

class Withdraw {
  
  String positionId = null;

  String transactionId = null;

  String assetId = null;

  String quantity = null;

  Withdraw();

  @override
  String toString() {
    return 'Withdraw[positionId=$positionId, transactionId=$transactionId, assetId=$assetId, quantity=$quantity, ]';
  }

  Withdraw.fromJson(Map<String, dynamic> json) {
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

  static List<Withdraw> listFromJson(List<dynamic> json) {
    return json == null ? new List<Withdraw>() : json.map((value) => new Withdraw.fromJson(value)).toList();
  }

  static Map<String, Withdraw> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Withdraw>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Withdraw.fromJson(value));
    }
    return map;
  }
}
