part of dora_client.api;

class WithdrawRequest {
  
  String positionId = null;

  String assetId = null;

  String quantity = null;

  WithdrawRequest();

  @override
  String toString() {
    return 'WithdrawRequest[positionId=$positionId, assetId=$assetId, quantity=$quantity, ]';
  }

  WithdrawRequest.fromJson(Map<String, dynamic> json) {
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

  static List<WithdrawRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<WithdrawRequest>() : json.map((value) => new WithdrawRequest.fromJson(value)).toList();
  }

  static Map<String, WithdrawRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WithdrawRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WithdrawRequest.fromJson(value));
    }
    return map;
  }
}
