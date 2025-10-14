part of dora_client.api;

class OrderBookTerminateResponse {
  
  bool data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  OrderBookTerminateResponse();

  @override
  String toString() {
    return 'OrderBookTerminateResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  OrderBookTerminateResponse.fromJson(Map<String, dynamic> json) {
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

  static List<OrderBookTerminateResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBookTerminateResponse>() : json.map((value) => new OrderBookTerminateResponse.fromJson(value)).toList();
  }

  static Map<String, OrderBookTerminateResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBookTerminateResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBookTerminateResponse.fromJson(value));
    }
    return map;
  }
}
