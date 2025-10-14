part of dora_client.api;

class CancelOrderResponse {
  
  Order data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  CancelOrderResponse();

  @override
  String toString() {
    return 'CancelOrderResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  CancelOrderResponse.fromJson(Map<String, dynamic> json) {
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

  static List<CancelOrderResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CancelOrderResponse>() : json.map((value) => new CancelOrderResponse.fromJson(value)).toList();
  }

  static Map<String, CancelOrderResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CancelOrderResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CancelOrderResponse.fromJson(value));
    }
    return map;
  }
}
