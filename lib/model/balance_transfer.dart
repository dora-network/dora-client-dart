part of dora_client.api;

class BalanceTransfer {
  
  String fromPositionId = null;

  String toPositionId = null;

  String transactionId = null;

  BalanceTransfer();

  @override
  String toString() {
    return 'BalanceTransfer[fromPositionId=$fromPositionId, toPositionId=$toPositionId, transactionId=$transactionId, ]';
  }

  BalanceTransfer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fromPositionId = json['from_position_id'];
    toPositionId = json['to_position_id'];
    transactionId = json['transaction_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'from_position_id': fromPositionId,
      'to_position_id': toPositionId,
      'transaction_id': transactionId
     };
  }

  static List<BalanceTransfer> listFromJson(List<dynamic> json) {
    return json == null ? new List<BalanceTransfer>() : json.map((value) => new BalanceTransfer.fromJson(value)).toList();
  }

  static Map<String, BalanceTransfer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BalanceTransfer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BalanceTransfer.fromJson(value));
    }
    return map;
  }
}
