part of dora_client.api;

class TransactionRequestError {
  
  String error = null;
/* The response data. Present for successful (2xx) responses. */
  Object data = null;

  Metadata metadata = null;

  TransactionRequestError();

  @override
  String toString() {
    return 'TransactionRequestError[error=$error, data=$data, metadata=$metadata, ]';
  }

  TransactionRequestError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
    data = new Object.fromJson(json['data']);
    metadata = new Metadata.fromJson(json['metadata']);
  }

  Map<String, dynamic> toJson() {
    return {
      'error': error,
      'data': data,
      'metadata': metadata
     };
  }

  static List<TransactionRequestError> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransactionRequestError>() : json.map((value) => new TransactionRequestError.fromJson(value)).toList();
  }

  static Map<String, TransactionRequestError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransactionRequestError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransactionRequestError.fromJson(value));
    }
    return map;
  }
}
