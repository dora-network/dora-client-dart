part of dora_client.api;

class DeCollateralizeRequest {
  
  String positionId = null;

  String assetId = null;

  String quantity = null;

  DeCollateralizeRequest();

  @override
  String toString() {
    return 'DeCollateralizeRequest[positionId=$positionId, assetId=$assetId, quantity=$quantity, ]';
  }

  DeCollateralizeRequest.fromJson(Map<String, dynamic> json) {
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

  static List<DeCollateralizeRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeCollateralizeRequest>() : json.map((value) => new DeCollateralizeRequest.fromJson(value)).toList();
  }

  static Map<String, DeCollateralizeRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeCollateralizeRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeCollateralizeRequest.fromJson(value));
    }
    return map;
  }
}
