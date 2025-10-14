part of dora_client.api;

class LeverageBalanceResponse {
  
  Object leverageBalance = null;

  LeverageBalanceResponse();

  @override
  String toString() {
    return 'LeverageBalanceResponse[leverageBalance=$leverageBalance, ]';
  }

  LeverageBalanceResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    leverageBalance = new Object.fromJson(json['leverage_balance']);
  }

  Map<String, dynamic> toJson() {
    return {
      'leverage_balance': leverageBalance
     };
  }

  static List<LeverageBalanceResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LeverageBalanceResponse>() : json.map((value) => new LeverageBalanceResponse.fromJson(value)).toList();
  }

  static Map<String, LeverageBalanceResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LeverageBalanceResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LeverageBalanceResponse.fromJson(value));
    }
    return map;
  }
}
