part of dora_client.api;

class UserValueResponse {
  
  UserValue data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  UserValueResponse();

  @override
  String toString() {
    return 'UserValueResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  UserValueResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new UserValue.fromJson(json['data']);
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

  static List<UserValueResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserValueResponse>() : json.map((value) => new UserValueResponse.fromJson(value)).toList();
  }

  static Map<String, UserValueResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserValueResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserValueResponse.fromJson(value));
    }
    return map;
  }
}
