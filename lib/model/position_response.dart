part of dora_client.api;

class PositionResponse {
  
  Portfolio portfolio = null;

  PositionResponse();

  @override
  String toString() {
    return 'PositionResponse[portfolio=$portfolio, ]';
  }

  PositionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    portfolio = new Portfolio.fromJson(json['portfolio']);
  }

  Map<String, dynamic> toJson() {
    return {
      'portfolio': portfolio
     };
  }

  static List<PositionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<PositionResponse>() : json.map((value) => new PositionResponse.fromJson(value)).toList();
  }

  static Map<String, PositionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PositionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PositionResponse.fromJson(value));
    }
    return map;
  }
}
