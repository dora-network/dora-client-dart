part of dora_client.api;

class BorrowResponse {
  
  BorrowResponse();

  @override
  String toString() {
    return 'BorrowResponse[]';
  }

  BorrowResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<BorrowResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<BorrowResponse>() : json.map((value) => new BorrowResponse.fromJson(value)).toList();
  }

  static Map<String, BorrowResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BorrowResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BorrowResponse.fromJson(value));
    }
    return map;
  }
}
