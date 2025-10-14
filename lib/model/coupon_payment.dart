part of dora_client.api;

class CouponPayment {
  
  String id = null;

  String assetId = null;

  double yield_ = null;

  DateTime startAt = null;

  DateTime endAt = null;

  DateTime payAt = null;

  String availableToPay = null;

  DateTime completedAt = null;

  DateTime createdAt = null;
/* Number of nanoseconds to wait between coupon payment processing, must be at least 1000 (1 microsecond) */
  int processEvery = null;
   // range from 1000 to //

  DateTime lastProcessedAt = null;

  CouponPayment();

  @override
  String toString() {
    return 'CouponPayment[id=$id, assetId=$assetId, yield_=$yield_, startAt=$startAt, endAt=$endAt, payAt=$payAt, availableToPay=$availableToPay, completedAt=$completedAt, createdAt=$createdAt, processEvery=$processEvery, lastProcessedAt=$lastProcessedAt, ]';
  }

  CouponPayment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    assetId = json['asset_id'];
    yield_ = json['yield'];
    startAt = json['start_at'] == null ? null : DateTime.parse(json['start_at']);
    endAt = json['end_at'] == null ? null : DateTime.parse(json['end_at']);
    payAt = json['pay_at'] == null ? null : DateTime.parse(json['pay_at']);
    availableToPay = json['available_to_pay'];
    completedAt = json['completed_at'] == null ? null : DateTime.parse(json['completed_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    processEvery = json['process_every'];
    lastProcessedAt = json['last_processed_at'] == null ? null : DateTime.parse(json['last_processed_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'asset_id': assetId,
      'yield': yield_,
      'start_at': startAt == null ? '' : startAt.toUtc().toIso8601String(),
      'end_at': endAt == null ? '' : endAt.toUtc().toIso8601String(),
      'pay_at': payAt == null ? '' : payAt.toUtc().toIso8601String(),
      'available_to_pay': availableToPay,
      'completed_at': completedAt == null ? '' : completedAt.toUtc().toIso8601String(),
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'process_every': processEvery,
      'last_processed_at': lastProcessedAt == null ? '' : lastProcessedAt.toUtc().toIso8601String()
     };
  }

  static List<CouponPayment> listFromJson(List<dynamic> json) {
    return json == null ? new List<CouponPayment>() : json.map((value) => new CouponPayment.fromJson(value)).toList();
  }

  static Map<String, CouponPayment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CouponPayment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CouponPayment.fromJson(value));
    }
    return map;
  }
}
