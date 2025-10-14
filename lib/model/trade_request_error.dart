part of dora_client.api;

class TradeRequestError {
  
  String error = null;
/* The response data. Present for successful (2xx) responses. */
  Object data = null;

  Metadata metadata = null;

  TradeRequestError();

  @override
  String toString() {
    return 'TradeRequestError[error=$error, data=$data, metadata=$metadata, ]';
  }

  TradeRequestError.fromJson(Map<String, dynamic> json) {
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

  static List<TradeRequestError> listFromJson(List<dynamic> json) {
    return json == null ? new List<TradeRequestError>() : json.map((value) => new TradeRequestError.fromJson(value)).toList();
  }

  static Map<String, TradeRequestError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TradeRequestError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TradeRequestError.fromJson(value));
    }
    return map;
  }
}
