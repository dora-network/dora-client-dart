part of dora_client.api;

class LeverageRequestError {
  
  String error = null;
/* The response data. Present for successful (2xx) responses. */
  Object data = null;

  Metadata metadata = null;

  LeverageRequestError();

  @override
  String toString() {
    return 'LeverageRequestError[error=$error, data=$data, metadata=$metadata, ]';
  }

  LeverageRequestError.fromJson(Map<String, dynamic> json) {
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

  static List<LeverageRequestError> listFromJson(List<dynamic> json) {
    return json == null ? new List<LeverageRequestError>() : json.map((value) => new LeverageRequestError.fromJson(value)).toList();
  }

  static Map<String, LeverageRequestError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LeverageRequestError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LeverageRequestError.fromJson(value));
    }
    return map;
  }
}
