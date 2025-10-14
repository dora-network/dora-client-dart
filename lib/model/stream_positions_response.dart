part of dora_client.api;

class StreamPositionsResponse {
  
  StreamPositionsResponse();

  @override
  String toString() {
    return 'StreamPositionsResponse[]';
  }

  StreamPositionsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamPositionsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamPositionsResponse>() : json.map((value) => new StreamPositionsResponse.fromJson(value)).toList();
  }

  static Map<String, StreamPositionsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamPositionsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamPositionsResponse.fromJson(value));
    }
    return map;
  }
}
