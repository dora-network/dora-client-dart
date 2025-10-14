part of dora_client.api;

class UnitePositionResponse {
  
  UnitedPosition data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  UnitePositionResponse();

  @override
  String toString() {
    return 'UnitePositionResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  UnitePositionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new UnitedPosition.fromJson(json['data']);
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

  static List<UnitePositionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnitePositionResponse>() : json.map((value) => new UnitePositionResponse.fromJson(value)).toList();
  }

  static Map<String, UnitePositionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnitePositionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnitePositionResponse.fromJson(value));
    }
    return map;
  }
}
