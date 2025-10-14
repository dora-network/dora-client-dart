part of dora_client.api;

class ListCandlesResponse {
  
  List<Candle> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListCandlesResponse();

  @override
  String toString() {
    return 'ListCandlesResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListCandlesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = Candle.listFromJson(json['data']);
    error = json['error'];
    metadata = new Metadata.fromJson(json['metadata']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'error': error,
      'metadata': metadata
     };
  }

  static List<ListCandlesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListCandlesResponse>() : json.map((value) => new ListCandlesResponse.fromJson(value)).toList();
  }

  static Map<String, ListCandlesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListCandlesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListCandlesResponse.fromJson(value));
    }
    return map;
  }
}
