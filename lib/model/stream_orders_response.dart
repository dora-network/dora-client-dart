part of dora_client.api;

class StreamOrdersResponse {
  
  StreamOrdersResponse();

  @override
  String toString() {
    return 'StreamOrdersResponse[]';
  }

  StreamOrdersResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamOrdersResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamOrdersResponse>() : json.map((value) => new StreamOrdersResponse.fromJson(value)).toList();
  }

  static Map<String, StreamOrdersResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamOrdersResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamOrdersResponse.fromJson(value));
    }
    return map;
  }
}
