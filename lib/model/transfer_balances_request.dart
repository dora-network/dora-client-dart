part of dora_client.api;

class TransferBalancesRequest {
  
  String fromPositionId = null;

  String toPositionId = null;

  String assetId = null;

  String quantity = null;

  TransferBalancesRequest();

  @override
  String toString() {
    return 'TransferBalancesRequest[fromPositionId=$fromPositionId, toPositionId=$toPositionId, assetId=$assetId, quantity=$quantity, ]';
  }

  TransferBalancesRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fromPositionId = json['from_position_id'];
    toPositionId = json['to_position_id'];
    assetId = json['asset_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'from_position_id': fromPositionId,
      'to_position_id': toPositionId,
      'asset_id': assetId,
      'quantity': quantity
     };
  }

  static List<TransferBalancesRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransferBalancesRequest>() : json.map((value) => new TransferBalancesRequest.fromJson(value)).toList();
  }

  static Map<String, TransferBalancesRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransferBalancesRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransferBalancesRequest.fromJson(value));
    }
    return map;
  }
}
