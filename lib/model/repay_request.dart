part of dora_client.api;

class RepayRequest {
  
  RepayRequest();

  @override
  String toString() {
    return 'RepayRequest[]';
  }

  RepayRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RepayRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepayRequest>() : json.map((value) => new RepayRequest.fromJson(value)).toList();
  }

  static Map<String, RepayRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepayRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepayRequest.fromJson(value));
    }
    return map;
  }
}
