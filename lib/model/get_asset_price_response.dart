part of dora_client.api;

class GetAssetPriceResponse {
  
  AssetPrice data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetAssetPriceResponse();

  @override
  String toString() {
    return 'GetAssetPriceResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetAssetPriceResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new AssetPrice.fromJson(json['data']);
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

  static List<GetAssetPriceResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetAssetPriceResponse>() : json.map((value) => new GetAssetPriceResponse.fromJson(value)).toList();
  }

  static Map<String, GetAssetPriceResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAssetPriceResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAssetPriceResponse.fromJson(value));
    }
    return map;
  }
}
