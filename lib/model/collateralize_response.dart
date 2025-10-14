part of dora_client.api;

class CollateralizeResponse {
  
  Collateral data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  CollateralizeResponse();

  @override
  String toString() {
    return 'CollateralizeResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  CollateralizeResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Collateral.fromJson(json['data']);
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

  static List<CollateralizeResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CollateralizeResponse>() : json.map((value) => new CollateralizeResponse.fromJson(value)).toList();
  }

  static Map<String, CollateralizeResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CollateralizeResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CollateralizeResponse.fromJson(value));
    }
    return map;
  }
}
