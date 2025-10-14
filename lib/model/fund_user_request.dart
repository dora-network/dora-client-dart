part of dora_client.api;

class FundUserRequest {
  
  String assetId = null;

  String quantity = null;

  FundUserRequest();

  @override
  String toString() {
    return 'FundUserRequest[assetId=$assetId, quantity=$quantity, ]';
  }

  FundUserRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assetId = json['asset_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'asset_id': assetId,
      'quantity': quantity
     };
  }

  static List<FundUserRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<FundUserRequest>() : json.map((value) => new FundUserRequest.fromJson(value)).toList();
  }

  static Map<String, FundUserRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FundUserRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FundUserRequest.fromJson(value));
    }
    return map;
  }
}
