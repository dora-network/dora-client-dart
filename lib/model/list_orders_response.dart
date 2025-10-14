part of dora_client.api;

class ListOrdersResponse {
  
  List<Order> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListOrdersResponse();

  @override
  String toString() {
    return 'ListOrdersResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListOrdersResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = Order.listFromJson(json['data']);
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

  static List<ListOrdersResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListOrdersResponse>() : json.map((value) => new ListOrdersResponse.fromJson(value)).toList();
  }

  static Map<String, ListOrdersResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListOrdersResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListOrdersResponse.fromJson(value));
    }
    return map;
  }
}
