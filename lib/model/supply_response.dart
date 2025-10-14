part of dora_client.api;

class SupplyResponse {
  
  Supply data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  SupplyResponse();

  @override
  String toString() {
    return 'SupplyResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  SupplyResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new Supply.fromJson(json['data']);
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

  static List<SupplyResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<SupplyResponse>() : json.map((value) => new SupplyResponse.fromJson(value)).toList();
  }

  static Map<String, SupplyResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SupplyResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SupplyResponse.fromJson(value));
    }
    return map;
  }
}
