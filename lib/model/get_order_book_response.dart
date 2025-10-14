part of dora_client.api;

class GetOrderBookResponse {
  
  OrderBook data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetOrderBookResponse();

  @override
  String toString() {
    return 'GetOrderBookResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetOrderBookResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new OrderBook.fromJson(json['data']);
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

  static List<GetOrderBookResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetOrderBookResponse>() : json.map((value) => new GetOrderBookResponse.fromJson(value)).toList();
  }

  static Map<String, GetOrderBookResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetOrderBookResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetOrderBookResponse.fromJson(value));
    }
    return map;
  }
}
