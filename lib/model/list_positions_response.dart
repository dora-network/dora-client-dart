part of dora_client.api;

class ListPositionsResponse {
  
  List<Position> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListPositionsResponse();

  @override
  String toString() {
    return 'ListPositionsResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListPositionsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = Position.listFromJson(json['data']);
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

  static List<ListPositionsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListPositionsResponse>() : json.map((value) => new ListPositionsResponse.fromJson(value)).toList();
  }

  static Map<String, ListPositionsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListPositionsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListPositionsResponse.fromJson(value));
    }
    return map;
  }
}
