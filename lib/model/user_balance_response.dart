part of dora_client.api;

class UserBalanceResponse {
  
  BalancesResponse data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  UserBalanceResponse();

  @override
  String toString() {
    return 'UserBalanceResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  UserBalanceResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new BalancesResponse.fromJson(json['data']);
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

  static List<UserBalanceResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserBalanceResponse>() : json.map((value) => new UserBalanceResponse.fromJson(value)).toList();
  }

  static Map<String, UserBalanceResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserBalanceResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserBalanceResponse.fromJson(value));
    }
    return map;
  }
}
