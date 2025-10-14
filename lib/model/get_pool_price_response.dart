part of dora_client.api;

class GetPoolPriceResponse {
  
  PoolPrice data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetPoolPriceResponse();

  @override
  String toString() {
    return 'GetPoolPriceResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetPoolPriceResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new PoolPrice.fromJson(json['data']);
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

  static List<GetPoolPriceResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetPoolPriceResponse>() : json.map((value) => new GetPoolPriceResponse.fromJson(value)).toList();
  }

  static Map<String, GetPoolPriceResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetPoolPriceResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetPoolPriceResponse.fromJson(value));
    }
    return map;
  }
}
