part of dora_client.api;

class ListTransactionsResponse {
  
  List<Transaction> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListTransactionsResponse();

  @override
  String toString() {
    return 'ListTransactionsResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListTransactionsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = Transaction.listFromJson(json['data']);
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

  static List<ListTransactionsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListTransactionsResponse>() : json.map((value) => new ListTransactionsResponse.fromJson(value)).toList();
  }

  static Map<String, ListTransactionsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListTransactionsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListTransactionsResponse.fromJson(value));
    }
    return map;
  }
}
