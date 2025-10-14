part of dora_client.api;

class GetOrderResponse {
  
  Order data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetOrderResponse();

  @override
  String toString() {
    return 'GetOrderResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetOrderResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Order.fromJson(json['data']);
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

  static List<GetOrderResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetOrderResponse>() : json.map((value) => new GetOrderResponse.fromJson(value)).toList();
  }

  static Map<String, GetOrderResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetOrderResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetOrderResponse.fromJson(value));
    }
    return map;
  }
}
