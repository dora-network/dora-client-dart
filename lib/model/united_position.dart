part of dora_client.api;

class UnitedPosition {
  
  String globalPositionId = null;

  List<String> transactionIds = [];

  UnitedPosition();

  @override
  String toString() {
    return 'UnitedPosition[globalPositionId=$globalPositionId, transactionIds=$transactionIds, ]';
  }

  UnitedPosition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    globalPositionId = json['global_position_id'];
    transactionIds = (json['transaction_ids'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'global_position_id': globalPositionId,
      'transaction_ids': transactionIds
     };
  }

  static List<UnitedPosition> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnitedPosition>() : json.map((value) => new UnitedPosition.fromJson(value)).toList();
  }

  static Map<String, UnitedPosition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnitedPosition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnitedPosition.fromJson(value));
    }
    return map;
  }
}
