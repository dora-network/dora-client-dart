part of dora_client.api;

class BorrowRequest {
  
  BorrowRequest();

  @override
  String toString() {
    return 'BorrowRequest[]';
  }

  BorrowRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<BorrowRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BorrowRequest>() : json.map((value) => new BorrowRequest.fromJson(value)).toList();
  }

  static Map<String, BorrowRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BorrowRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BorrowRequest.fromJson(value));
    }
    return map;
  }
}
