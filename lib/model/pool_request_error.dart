part of dora_client.api;

class PoolRequestError {
  
  String error = null;
/* The response data. Present for successful (2xx) responses. */
  Object data = null;

  Metadata metadata = null;

  PoolRequestError();

  @override
  String toString() {
    return 'PoolRequestError[error=$error, data=$data, metadata=$metadata, ]';
  }

  PoolRequestError.fromJson(Map<String, dynamic> json) {
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

  static List<PoolRequestError> listFromJson(List<dynamic> json) {
    return json == null ? new List<PoolRequestError>() : json.map((value) => new PoolRequestError.fromJson(value)).toList();
  }

  static Map<String, PoolRequestError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PoolRequestError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PoolRequestError.fromJson(value));
    }
    return map;
  }
}
