part of dora_client.api;

class NewIsolatedPositionRequest {
  
  String globalPositionId = null;

  String assetId = null;

  String quantity = null;

  String positionName = null;

  NewIsolatedPositionRequest();

  @override
  String toString() {
    return 'NewIsolatedPositionRequest[globalPositionId=$globalPositionId, assetId=$assetId, quantity=$quantity, positionName=$positionName, ]';
  }

  NewIsolatedPositionRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    globalPositionId = json['global_position_id'];
    assetId = json['asset_id'];
    quantity = json['quantity'];
    positionName = json['position_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'global_position_id': globalPositionId,
      'asset_id': assetId,
      'quantity': quantity,
      'position_name': positionName
     };
  }

  static List<NewIsolatedPositionRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<NewIsolatedPositionRequest>() : json.map((value) => new NewIsolatedPositionRequest.fromJson(value)).toList();
  }

  static Map<String, NewIsolatedPositionRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewIsolatedPositionRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NewIsolatedPositionRequest.fromJson(value));
    }
    return map;
  }
}
