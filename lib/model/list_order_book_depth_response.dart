part of dora_client.api;

class ListOrderBookDepthResponse {
  
  OrderBookDepth data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListOrderBookDepthResponse();

  @override
  String toString() {
    return 'ListOrderBookDepthResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListOrderBookDepthResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new OrderBookDepth.fromJson(json['data']);
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

  static List<ListOrderBookDepthResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListOrderBookDepthResponse>() : json.map((value) => new ListOrderBookDepthResponse.fromJson(value)).toList();
  }

  static Map<String, ListOrderBookDepthResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListOrderBookDepthResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListOrderBookDepthResponse.fromJson(value));
    }
    return map;
  }
}
