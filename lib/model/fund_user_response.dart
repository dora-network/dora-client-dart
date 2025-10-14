part of dora_client.api;

class FundUserResponse {
  
  FundUser data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  FundUserResponse();

  @override
  String toString() {
    return 'FundUserResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  FundUserResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new FundUser.fromJson(json['data']);
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

  static List<FundUserResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<FundUserResponse>() : json.map((value) => new FundUserResponse.fromJson(value)).toList();
  }

  static Map<String, FundUserResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FundUserResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FundUserResponse.fromJson(value));
    }
    return map;
  }
}
