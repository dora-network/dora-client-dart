part of dora_client.api;

class UserUpdatedResponse {
  
  CreateOrUpdateUserResponse data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  UserUpdatedResponse();

  @override
  String toString() {
    return 'UserUpdatedResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  UserUpdatedResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new CreateOrUpdateUserResponse.fromJson(json['data']);
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

  static List<UserUpdatedResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserUpdatedResponse>() : json.map((value) => new UserUpdatedResponse.fromJson(value)).toList();
  }

  static Map<String, UserUpdatedResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserUpdatedResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserUpdatedResponse.fromJson(value));
    }
    return map;
  }
}
