part of dora_client.api;

class GetTopOfBookResponse {
  
  OrderBookTop data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetTopOfBookResponse();

  @override
  String toString() {
    return 'GetTopOfBookResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetTopOfBookResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new OrderBookTop.fromJson(json['data']);
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

  static List<GetTopOfBookResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetTopOfBookResponse>() : json.map((value) => new GetTopOfBookResponse.fromJson(value)).toList();
  }

  static Map<String, GetTopOfBookResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetTopOfBookResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetTopOfBookResponse.fromJson(value));
    }
    return map;
  }
}
