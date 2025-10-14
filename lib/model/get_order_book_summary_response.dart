part of dora_client.api;

class GetOrderBookSummaryResponse {
  
  OrderBookSummary data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  GetOrderBookSummaryResponse();

  @override
  String toString() {
    return 'GetOrderBookSummaryResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  GetOrderBookSummaryResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new OrderBookSummary.fromJson(json['data']);
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

  static List<GetOrderBookSummaryResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetOrderBookSummaryResponse>() : json.map((value) => new GetOrderBookSummaryResponse.fromJson(value)).toList();
  }

  static Map<String, GetOrderBookSummaryResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetOrderBookSummaryResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetOrderBookSummaryResponse.fromJson(value));
    }
    return map;
  }
}
