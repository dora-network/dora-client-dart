part of dora_client.api;

class UnitePositionRequest {
  
  String globalPositionId = null;

  UnitePositionRequest();

  @override
  String toString() {
    return 'UnitePositionRequest[globalPositionId=$globalPositionId, ]';
  }

  UnitePositionRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    globalPositionId = json['global_position_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'global_position_id': globalPositionId
     };
  }

  static List<UnitePositionRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnitePositionRequest>() : json.map((value) => new UnitePositionRequest.fromJson(value)).toList();
  }

  static Map<String, UnitePositionRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnitePositionRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnitePositionRequest.fromJson(value));
    }
    return map;
  }
}
