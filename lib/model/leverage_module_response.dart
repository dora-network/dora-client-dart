part of dora_client.api;

class LeverageModuleResponse {
  /* A map of asset IDs to their module balances */
  Map<String, ModuleBalance> balances = {};

  LeverageModuleResponse();

  @override
  String toString() {
    return 'LeverageModuleResponse[balances=$balances, ]';
  }

  LeverageModuleResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    balances = ModuleBalance.mapFromJson(json['balances']);
  }

  Map<String, dynamic> toJson() {
    return {
      'balances': balances
     };
  }

  static List<LeverageModuleResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LeverageModuleResponse>() : json.map((value) => new LeverageModuleResponse.fromJson(value)).toList();
  }

  static Map<String, LeverageModuleResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LeverageModuleResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LeverageModuleResponse.fromJson(value));
    }
    return map;
  }
}
