part of dora_client.api;

class CollateralizeRequest {
  
  String positionId = null;

  String assetId = null;

  String quantity = null;

  CollateralizeRequest();

  @override
  String toString() {
    return 'CollateralizeRequest[positionId=$positionId, assetId=$assetId, quantity=$quantity, ]';
  }

  CollateralizeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    positionId = json['position_id'];
    assetId = json['asset_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'position_id': positionId,
      'asset_id': assetId,
      'quantity': quantity
     };
  }

  static List<CollateralizeRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CollateralizeRequest>() : json.map((value) => new CollateralizeRequest.fromJson(value)).toList();
  }

  static Map<String, CollateralizeRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CollateralizeRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CollateralizeRequest.fromJson(value));
    }
    return map;
  }
}
