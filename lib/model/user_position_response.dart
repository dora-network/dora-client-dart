part of dora_client.api;

class UserPositionResponse {
  
  PositionResponse data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  UserPositionResponse();

  @override
  String toString() {
    return 'UserPositionResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  UserPositionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new PositionResponse.fromJson(json['data']);
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

  static List<UserPositionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserPositionResponse>() : json.map((value) => new UserPositionResponse.fromJson(value)).toList();
  }

  static Map<String, UserPositionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPositionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPositionResponse.fromJson(value));
    }
    return map;
  }
}
