part of dora_client.api;

class StreamAssetsResponse {
  
  StreamAssetsResponse();

  @override
  String toString() {
    return 'StreamAssetsResponse[]';
  }

  StreamAssetsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamAssetsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamAssetsResponse>() : json.map((value) => new StreamAssetsResponse.fromJson(value)).toList();
  }

  static Map<String, StreamAssetsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamAssetsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamAssetsResponse.fromJson(value));
    }
    return map;
  }
}
