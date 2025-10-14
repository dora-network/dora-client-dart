part of dora_client.api;

class ListOrderBooksResponse {
  
  List<OrderBook> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListOrderBooksResponse();

  @override
  String toString() {
    return 'ListOrderBooksResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListOrderBooksResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = OrderBook.listFromJson(json['data']);
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

  static List<ListOrderBooksResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListOrderBooksResponse>() : json.map((value) => new ListOrderBooksResponse.fromJson(value)).toList();
  }

  static Map<String, ListOrderBooksResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListOrderBooksResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListOrderBooksResponse.fromJson(value));
    }
    return map;
  }
}
