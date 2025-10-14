part of dora_client.api;

class Transaction {
  
  String id = null;

  DateTime createdAt = null;

  TransactionKind kind = null;

  String asset0 = null;

  String quantity0 = null;

  String quantity1 = null;

  String asset1 = null;

  String userId = null;

  Transaction();

  @override
  String toString() {
    return 'Transaction[id=$id, createdAt=$createdAt, kind=$kind, asset0=$asset0, quantity0=$quantity0, quantity1=$quantity1, asset1=$asset1, userId=$userId, ]';
  }

  Transaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    kind = new TransactionKind.fromJson(json['kind']);
    asset0 = json['asset0'];
    quantity0 = json['quantity0'];
    quantity1 = json['quantity1'];
    asset1 = json['asset1'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'kind': kind,
      'asset0': asset0,
      'quantity0': quantity0,
      'quantity1': quantity1,
      'asset1': asset1,
      'user_id': userId
     };
  }

  static List<Transaction> listFromJson(List<dynamic> json) {
    return json == null ? new List<Transaction>() : json.map((value) => new Transaction.fromJson(value)).toList();
  }

  static Map<String, Transaction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Transaction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Transaction.fromJson(value));
    }
    return map;
  }
}
