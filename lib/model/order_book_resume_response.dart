part of dora_client.api;

class OrderBookResumeResponse {
  
  bool data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  OrderBookResumeResponse();

  @override
  String toString() {
    return 'OrderBookResumeResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  OrderBookResumeResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = json['data'];
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

  static List<OrderBookResumeResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBookResumeResponse>() : json.map((value) => new OrderBookResumeResponse.fromJson(value)).toList();
  }

  static Map<String, OrderBookResumeResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBookResumeResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBookResumeResponse.fromJson(value));
    }
    return map;
  }
}
