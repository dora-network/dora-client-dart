part of dora_client.api;

class UserDeletedResponse {
  
  String data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  UserDeletedResponse();

  @override
  String toString() {
    return 'UserDeletedResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  UserDeletedResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = json['data'];
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

  static List<UserDeletedResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserDeletedResponse>() : json.map((value) => new UserDeletedResponse.fromJson(value)).toList();
  }

  static Map<String, UserDeletedResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDeletedResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDeletedResponse.fromJson(value));
    }
    return map;
  }
}
