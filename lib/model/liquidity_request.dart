part of dora_client.api;

class LiquidityRequest {
  
  String positionId = null;

  String quantity = null;

  LiquidityRequest();

  @override
  String toString() {
    return 'LiquidityRequest[positionId=$positionId, quantity=$quantity, ]';
  }

  LiquidityRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    positionId = json['position_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'position_id': positionId,
      'quantity': quantity
     };
  }

  static List<LiquidityRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<LiquidityRequest>() : json.map((value) => new LiquidityRequest.fromJson(value)).toList();
  }

  static Map<String, LiquidityRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LiquidityRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LiquidityRequest.fromJson(value));
    }
    return map;
  }
}
