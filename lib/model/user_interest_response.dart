part of dora_client.api;

class UserInterestResponse {
  
  UserInterest data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  UserInterestResponse();

  @override
  String toString() {
    return 'UserInterestResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  UserInterestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new UserInterest.fromJson(json['data']);
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

  static List<UserInterestResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserInterestResponse>() : json.map((value) => new UserInterestResponse.fromJson(value)).toList();
  }

  static Map<String, UserInterestResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserInterestResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserInterestResponse.fromJson(value));
    }
    return map;
  }
}
