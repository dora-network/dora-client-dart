part of dora_client.api;

class StreamOrderUpdatesResponse {
  
  StreamOrderUpdatesResponse();

  @override
  String toString() {
    return 'StreamOrderUpdatesResponse[]';
  }

  StreamOrderUpdatesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamOrderUpdatesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamOrderUpdatesResponse>() : json.map((value) => new StreamOrderUpdatesResponse.fromJson(value)).toList();
  }

  static Map<String, StreamOrderUpdatesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamOrderUpdatesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamOrderUpdatesResponse.fromJson(value));
    }
    return map;
  }
}
