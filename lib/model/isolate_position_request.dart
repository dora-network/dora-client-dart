part of dora_client.api;

class IsolatePositionRequest {
  
  String globalPositionId = null;

  IsolatePositionRequest();

  @override
  String toString() {
    return 'IsolatePositionRequest[globalPositionId=$globalPositionId, ]';
  }

  IsolatePositionRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    globalPositionId = json['global_position_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'global_position_id': globalPositionId
     };
  }

  static List<IsolatePositionRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsolatePositionRequest>() : json.map((value) => new IsolatePositionRequest.fromJson(value)).toList();
  }

  static Map<String, IsolatePositionRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsolatePositionRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsolatePositionRequest.fromJson(value));
    }
    return map;
  }
}
