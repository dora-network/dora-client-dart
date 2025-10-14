part of dora_client.api;

class LiquidationTargetsResponse {
  
  List<String> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  LiquidationTargetsResponse();

  @override
  String toString() {
    return 'LiquidationTargetsResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  LiquidationTargetsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] as List).map((item) => item as String).toList();
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

  static List<LiquidationTargetsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LiquidationTargetsResponse>() : json.map((value) => new LiquidationTargetsResponse.fromJson(value)).toList();
  }

  static Map<String, LiquidationTargetsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LiquidationTargetsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LiquidationTargetsResponse.fromJson(value));
    }
    return map;
  }
}
