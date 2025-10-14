part of dora_client.api;

class StreamTransactionsResponse {
  
  StreamTransactionsResponse();

  @override
  String toString() {
    return 'StreamTransactionsResponse[]';
  }

  StreamTransactionsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamTransactionsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamTransactionsResponse>() : json.map((value) => new StreamTransactionsResponse.fromJson(value)).toList();
  }

  static Map<String, StreamTransactionsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamTransactionsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamTransactionsResponse.fromJson(value));
    }
    return map;
  }
}
