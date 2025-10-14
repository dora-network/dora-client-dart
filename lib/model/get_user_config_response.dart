part of dora_client.api;

class GetUserConfigResponse {
  
  UserConfig data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetUserConfigResponse();

  @override
  String toString() {
    return 'GetUserConfigResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetUserConfigResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new UserConfig.fromJson(json['data']);
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

  static List<GetUserConfigResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetUserConfigResponse>() : json.map((value) => new GetUserConfigResponse.fromJson(value)).toList();
  }

  static Map<String, GetUserConfigResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserConfigResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserConfigResponse.fromJson(value));
    }
    return map;
  }
}
