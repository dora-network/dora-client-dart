part of dora_client.api;

class TradeResponse {
  
  Trade data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  TradeResponse();

  @override
  String toString() {
    return 'TradeResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  TradeResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Trade.fromJson(json['data']);
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

  static List<TradeResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TradeResponse>() : json.map((value) => new TradeResponse.fromJson(value)).toList();
  }

  static Map<String, TradeResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TradeResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TradeResponse.fromJson(value));
    }
    return map;
  }
}
