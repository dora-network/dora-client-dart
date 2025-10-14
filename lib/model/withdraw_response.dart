part of dora_client.api;

class WithdrawResponse {
  
  Withdraw data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  WithdrawResponse();

  @override
  String toString() {
    return 'WithdrawResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  WithdrawResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Withdraw.fromJson(json['data']);
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

  static List<WithdrawResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<WithdrawResponse>() : json.map((value) => new WithdrawResponse.fromJson(value)).toList();
  }

  static Map<String, WithdrawResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WithdrawResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WithdrawResponse.fromJson(value));
    }
    return map;
  }
}
