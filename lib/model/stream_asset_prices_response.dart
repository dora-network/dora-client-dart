part of dora_client.api;

class StreamAssetPricesResponse {
  
  StreamAssetPricesResponse();

  @override
  String toString() {
    return 'StreamAssetPricesResponse[]';
  }

  StreamAssetPricesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StreamAssetPricesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamAssetPricesResponse>() : json.map((value) => new StreamAssetPricesResponse.fromJson(value)).toList();
  }

  static Map<String, StreamAssetPricesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamAssetPricesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamAssetPricesResponse.fromJson(value));
    }
    return map;
  }
}
