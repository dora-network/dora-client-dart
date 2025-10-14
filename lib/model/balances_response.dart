part of dora_client.api;

class BalancesResponse {
  
  List<Position> balances = [];

  BalancesResponse();

  @override
  String toString() {
    return 'BalancesResponse[balances=$balances, ]';
  }

  BalancesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    balances = Position.listFromJson(json['balances']);
  }

  Map<String, dynamic> toJson() {
    return {
      'balances': balances
     };
  }

  static List<BalancesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<BalancesResponse>() : json.map((value) => new BalancesResponse.fromJson(value)).toList();
  }

  static Map<String, BalancesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BalancesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BalancesResponse.fromJson(value));
    }
    return map;
  }
}
