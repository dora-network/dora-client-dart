part of dora_client.api;

class AssetRequestError {
  
  String error = null;
/* The response data. Present for successful (2xx) responses. */
  Object data = null;

  Metadata metadata = null;

  AssetRequestError();

  @override
  String toString() {
    return 'AssetRequestError[error=$error, data=$data, metadata=$metadata, ]';
  }

  AssetRequestError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
    data = new Object.fromJson(json['data']);
    metadata = new Metadata.fromJson(json['metadata']);
  }

  Map<String, dynamic> toJson() {
    return {
      'error': error,
      'data': data,
      'metadata': metadata
     };
  }

  static List<AssetRequestError> listFromJson(List<dynamic> json) {
    return json == null ? new List<AssetRequestError>() : json.map((value) => new AssetRequestError.fromJson(value)).toList();
  }

  static Map<String, AssetRequestError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AssetRequestError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AssetRequestError.fromJson(value));
    }
    return map;
  }
}
