part of dora_client.api;

class GetUserResponse {
  
  User data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetUserResponse();

  @override
  String toString() {
    return 'GetUserResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetUserResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new User.fromJson(json['data']);
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

  static List<GetUserResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetUserResponse>() : json.map((value) => new GetUserResponse.fromJson(value)).toList();
  }

  static Map<String, GetUserResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserResponse.fromJson(value));
    }
    return map;
  }
}
