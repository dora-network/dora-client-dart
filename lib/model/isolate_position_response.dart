part of dora_client.api;

class IsolatePositionResponse {
  
  IsolatedPosition data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  IsolatePositionResponse();

  @override
  String toString() {
    return 'IsolatePositionResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  IsolatePositionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new IsolatedPosition.fromJson(json['data']);
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

  static List<IsolatePositionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsolatePositionResponse>() : json.map((value) => new IsolatePositionResponse.fromJson(value)).toList();
  }

  static Map<String, IsolatePositionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsolatePositionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsolatePositionResponse.fromJson(value));
    }
    return map;
  }
}
