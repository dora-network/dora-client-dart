part of dora_client.api;

class IsolatedPosition {
  
  String globalPositionId = null;

  String isolatedPositionId = null;

  String transactionId = null;

  IsolatedPosition();

  @override
  String toString() {
    return 'IsolatedPosition[globalPositionId=$globalPositionId, isolatedPositionId=$isolatedPositionId, transactionId=$transactionId, ]';
  }

  IsolatedPosition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    globalPositionId = json['global_position_id'];
    isolatedPositionId = json['isolated_position_id'];
    transactionId = json['transaction_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'global_position_id': globalPositionId,
      'isolated_position_id': isolatedPositionId,
      'transaction_id': transactionId
     };
  }

  static List<IsolatedPosition> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsolatedPosition>() : json.map((value) => new IsolatedPosition.fromJson(value)).toList();
  }

  static Map<String, IsolatedPosition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsolatedPosition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsolatedPosition.fromJson(value));
    }
    return map;
  }
}
