part of dora_client.api;

class IsolatedCollateral {
  
  String globalPositionId = null;

  String isolatedPositionId = null;

  String transactionId = null;

  String assetId = null;

  String quantity = null;

  IsolatedCollateral();

  @override
  String toString() {
    return 'IsolatedCollateral[globalPositionId=$globalPositionId, isolatedPositionId=$isolatedPositionId, transactionId=$transactionId, assetId=$assetId, quantity=$quantity, ]';
  }

  IsolatedCollateral.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    globalPositionId = json['global_position_id'];
    isolatedPositionId = json['isolated_position_id'];
    transactionId = json['transaction_id'];
    assetId = json['asset_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'global_position_id': globalPositionId,
      'isolated_position_id': isolatedPositionId,
      'transaction_id': transactionId,
      'asset_id': assetId,
      'quantity': quantity
     };
  }

  static List<IsolatedCollateral> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsolatedCollateral>() : json.map((value) => new IsolatedCollateral.fromJson(value)).toList();
  }

  static Map<String, IsolatedCollateral> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsolatedCollateral>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsolatedCollateral.fromJson(value));
    }
    return map;
  }
}
