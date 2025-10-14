part of dora_client.api;

class LiquidityResponse {
  
  Liquidity data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  LiquidityResponse();

  @override
  String toString() {
    return 'LiquidityResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  LiquidityResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Liquidity.fromJson(json['data']);
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

  static List<LiquidityResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LiquidityResponse>() : json.map((value) => new LiquidityResponse.fromJson(value)).toList();
  }

  static Map<String, LiquidityResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LiquidityResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LiquidityResponse.fromJson(value));
    }
    return map;
  }
}
