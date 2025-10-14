part of dora_client.api;

class OrderBookHaltResponse {
  
  bool data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  OrderBookHaltResponse();

  @override
  String toString() {
    return 'OrderBookHaltResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  OrderBookHaltResponse.fromJson(Map<String, dynamic> json) {
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

  static List<OrderBookHaltResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBookHaltResponse>() : json.map((value) => new OrderBookHaltResponse.fromJson(value)).toList();
  }

  static Map<String, OrderBookHaltResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBookHaltResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBookHaltResponse.fromJson(value));
    }
    return map;
  }
}
