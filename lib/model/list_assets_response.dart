part of dora_client.api;

class ListAssetsResponse {
  
  List<Asset> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListAssetsResponse();

  @override
  String toString() {
    return 'ListAssetsResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListAssetsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = Asset.listFromJson(json['data']);
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

  static List<ListAssetsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListAssetsResponse>() : json.map((value) => new ListAssetsResponse.fromJson(value)).toList();
  }

  static Map<String, ListAssetsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListAssetsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListAssetsResponse.fromJson(value));
    }
    return map;
  }
}
