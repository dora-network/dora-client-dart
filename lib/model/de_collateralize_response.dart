part of dora_client.api;

class DeCollateralizeResponse {
  
  Collateral data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  DeCollateralizeResponse();

  @override
  String toString() {
    return 'DeCollateralizeResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  DeCollateralizeResponse.fromJson(Map<String, dynamic> json) {
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

  static List<DeCollateralizeResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeCollateralizeResponse>() : json.map((value) => new DeCollateralizeResponse.fromJson(value)).toList();
  }

  static Map<String, DeCollateralizeResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeCollateralizeResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeCollateralizeResponse.fromJson(value));
    }
    return map;
  }
}
