part of dora_client.api;

class StreamOrderBookBalancesResponse {
  
  StreamOrderBookBalancesResponse();

  @override
  String toString() {
    return 'StreamOrderBookBalancesResponse[]';
  }

  StreamOrderBookBalancesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamOrderBookBalancesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamOrderBookBalancesResponse>() : json.map((value) => new StreamOrderBookBalancesResponse.fromJson(value)).toList();
  }

  static Map<String, StreamOrderBookBalancesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamOrderBookBalancesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamOrderBookBalancesResponse.fromJson(value));
    }
    return map;
  }
}
