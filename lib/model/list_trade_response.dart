part of dora_client.api;

class ListTradeResponse {
  
  List<Trade> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListTradeResponse();

  @override
  String toString() {
    return 'ListTradeResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListTradeResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = Trade.listFromJson(json['data']);
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

  static List<ListTradeResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListTradeResponse>() : json.map((value) => new ListTradeResponse.fromJson(value)).toList();
  }

  static Map<String, ListTradeResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListTradeResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListTradeResponse.fromJson(value));
    }
    return map;
  }
}
