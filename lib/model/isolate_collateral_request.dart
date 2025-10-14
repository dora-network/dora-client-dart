part of dora_client.api;

class IsolateCollateralRequest {
  
  String globalPositionId = null;

  String assetId = null;

  String quantity = null;

  IsolateCollateralRequest();

  @override
  String toString() {
    return 'IsolateCollateralRequest[globalPositionId=$globalPositionId, assetId=$assetId, quantity=$quantity, ]';
  }

  IsolateCollateralRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    globalPositionId = json['global_position_id'];
    assetId = json['asset_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'global_position_id': globalPositionId,
      'asset_id': assetId,
      'quantity': quantity
     };
  }

  static List<IsolateCollateralRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsolateCollateralRequest>() : json.map((value) => new IsolateCollateralRequest.fromJson(value)).toList();
  }

  static Map<String, IsolateCollateralRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsolateCollateralRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsolateCollateralRequest.fromJson(value));
    }
    return map;
  }
}
