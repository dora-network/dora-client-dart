part of dora_client.api;

class GetAssetByIDResponse {
  
  Asset data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetAssetByIDResponse();

  @override
  String toString() {
    return 'GetAssetByIDResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetAssetByIDResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Asset.fromJson(json['data']);
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

  static List<GetAssetByIDResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetAssetByIDResponse>() : json.map((value) => new GetAssetByIDResponse.fromJson(value)).toList();
  }

  static Map<String, GetAssetByIDResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAssetByIDResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAssetByIDResponse.fromJson(value));
    }
    return map;
  }
}
