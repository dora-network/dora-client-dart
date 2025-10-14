part of dora_client.api;

class GetTransactionResponse {
  
  Transaction data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetTransactionResponse();

  @override
  String toString() {
    return 'GetTransactionResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetTransactionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Transaction.fromJson(json['data']);
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

  static List<GetTransactionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetTransactionResponse>() : json.map((value) => new GetTransactionResponse.fromJson(value)).toList();
  }

  static Map<String, GetTransactionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetTransactionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetTransactionResponse.fromJson(value));
    }
    return map;
  }
}
