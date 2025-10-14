part of dora_client.api;

class RepayResponse {
  
  RepayResponse();

  @override
  String toString() {
    return 'RepayResponse[]';
  }

  RepayResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RepayResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepayResponse>() : json.map((value) => new RepayResponse.fromJson(value)).toList();
  }

  static Map<String, RepayResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepayResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepayResponse.fromJson(value));
    }
    return map;
  }
}
