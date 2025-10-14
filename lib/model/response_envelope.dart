part of dora_client.api;

class ResponseEnvelope {
  /* The response data. Present for successful (2xx) responses. */
  Object data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ResponseEnvelope();

  @override
  String toString() {
    return 'ResponseEnvelope[data=$data, error=$error, metadata=$metadata, ]';
  }

  ResponseEnvelope.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Object.fromJson(json['data']);
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

  static List<ResponseEnvelope> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseEnvelope>() : json.map((value) => new ResponseEnvelope.fromJson(value)).toList();
  }

  static Map<String, ResponseEnvelope> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseEnvelope>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseEnvelope.fromJson(value));
    }
    return map;
  }
}
