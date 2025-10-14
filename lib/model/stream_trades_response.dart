part of dora_client.api;

class StreamTradesResponse {
  
  StreamTradesResponse();

  @override
  String toString() {
    return 'StreamTradesResponse[]';
  }

  StreamTradesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamTradesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamTradesResponse>() : json.map((value) => new StreamTradesResponse.fromJson(value)).toList();
  }

  static Map<String, StreamTradesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamTradesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamTradesResponse.fromJson(value));
    }
    return map;
  }
}
