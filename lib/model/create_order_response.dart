part of dora_client.api;

class CreateOrderResponse {
  
  OrderId data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  CreateOrderResponse();

  @override
  String toString() {
    return 'CreateOrderResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  CreateOrderResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new OrderId.fromJson(json['data']);
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

  static List<CreateOrderResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrderResponse>() : json.map((value) => new CreateOrderResponse.fromJson(value)).toList();
  }

  static Map<String, CreateOrderResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrderResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrderResponse.fromJson(value));
    }
    return map;
  }
}
