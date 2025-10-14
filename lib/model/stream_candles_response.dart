part of dora_client.api;

class StreamCandlesResponse {
  
  StreamCandlesResponse();

  @override
  String toString() {
    return 'StreamCandlesResponse[]';
  }

  StreamCandlesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamCandlesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamCandlesResponse>() : json.map((value) => new StreamCandlesResponse.fromJson(value)).toList();
  }

  static Map<String, StreamCandlesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamCandlesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamCandlesResponse.fromJson(value));
    }
    return map;
  }
}
