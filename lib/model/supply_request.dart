part of dora_client.api;

class SupplyRequest {
  
  String positionId = null;

  String assetId = null;

  String quantity = null;

  SupplyRequest();

  @override
  String toString() {
    return 'SupplyRequest[positionId=$positionId, assetId=$assetId, quantity=$quantity, ]';
  }

  SupplyRequest.fromJson(Map<String, dynamic> json) {
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

  static List<SupplyRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<SupplyRequest>() : json.map((value) => new SupplyRequest.fromJson(value)).toList();
  }

  static Map<String, SupplyRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SupplyRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SupplyRequest.fromJson(value));
    }
    return map;
  }
}
