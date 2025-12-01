part of dora_client.api;

class NewIsolatedPositionResponse {
  
  Position data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  NewIsolatedPositionResponse();

  @override
  String toString() {
    return 'NewIsolatedPositionResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  NewIsolatedPositionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Position.fromJson(json['data']);
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

  static List<NewIsolatedPositionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<NewIsolatedPositionResponse>() : json.map((value) => new NewIsolatedPositionResponse.fromJson(value)).toList();
  }

  static Map<String, NewIsolatedPositionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewIsolatedPositionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NewIsolatedPositionResponse.fromJson(value));
    }
    return map;
  }
}
