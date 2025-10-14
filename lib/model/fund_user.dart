part of dora_client.api;

class FundUser {
  
  String userId = null;

  String positionId = null;

  String assetId = null;

  String finalQuantity = null;

  FundUser();

  @override
  String toString() {
    return 'FundUser[userId=$userId, positionId=$positionId, assetId=$assetId, finalQuantity=$finalQuantity, ]';
  }

  FundUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId = json['user_id'];
    positionId = json['position_id'];
    assetId = json['asset_id'];
    finalQuantity = json['final_quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'position_id': positionId,
      'asset_id': assetId,
      'final_quantity': finalQuantity
     };
  }

  static List<FundUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<FundUser>() : json.map((value) => new FundUser.fromJson(value)).toList();
  }

  static Map<String, FundUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FundUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FundUser.fromJson(value));
    }
    return map;
  }
}
