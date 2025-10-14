part of dora_client.api;

class ListAssetPriceResponse {
  
  List<AssetPrice> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListAssetPriceResponse();

  @override
  String toString() {
    return 'ListAssetPriceResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListAssetPriceResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = AssetPrice.listFromJson(json['data']);
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

  static List<ListAssetPriceResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListAssetPriceResponse>() : json.map((value) => new ListAssetPriceResponse.fromJson(value)).toList();
  }

  static Map<String, ListAssetPriceResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListAssetPriceResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListAssetPriceResponse.fromJson(value));
    }
    return map;
  }
}
