part of dora_client.api;

class Bond {
  
  String id = null;

  BondKind kind = null;

  DateTime couponStartAt = null;

  DateTime createdAt = null;

  DateTime finalCouponAt = null;

  String isin = null;

  DateTime issuedAt = null;

  String issuer = null;

  DateTime maturityAt = null;

  String principalValue = null;

  int paymentsPerYear = null;
/* Coupon payment frequency in nanoseconds (minimum 1000 i.e. 1 microsecond) */
  int paymentsEvery = null;
   // range from 1000 to //

  Bond();

  @override
  String toString() {
    return 'Bond[id=$id, kind=$kind, couponStartAt=$couponStartAt, createdAt=$createdAt, finalCouponAt=$finalCouponAt, isin=$isin, issuedAt=$issuedAt, issuer=$issuer, maturityAt=$maturityAt, principalValue=$principalValue, paymentsPerYear=$paymentsPerYear, paymentsEvery=$paymentsEvery, ]';
  }

  Bond.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    kind = new BondKind.fromJson(json['kind']);
    couponStartAt = json['coupon_start_at'] == null ? null : DateTime.parse(json['coupon_start_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    finalCouponAt = json['final_coupon_at'] == null ? null : DateTime.parse(json['final_coupon_at']);
    isin = json['isin'];
    issuedAt = json['issued_at'] == null ? null : DateTime.parse(json['issued_at']);
    issuer = json['issuer'];
    maturityAt = json['maturity_at'] == null ? null : DateTime.parse(json['maturity_at']);
    principalValue = json['principal_value'];
    paymentsPerYear = json['payments_per_year'];
    paymentsEvery = json['payments_every'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'kind': kind,
      'coupon_start_at': couponStartAt == null ? '' : couponStartAt.toUtc().toIso8601String(),
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'final_coupon_at': finalCouponAt == null ? '' : finalCouponAt.toUtc().toIso8601String(),
      'isin': isin,
      'issued_at': issuedAt == null ? '' : issuedAt.toUtc().toIso8601String(),
      'issuer': issuer,
      'maturity_at': maturityAt == null ? '' : maturityAt.toUtc().toIso8601String(),
      'principal_value': principalValue,
      'payments_per_year': paymentsPerYear,
      'payments_every': paymentsEvery
     };
  }

  static List<Bond> listFromJson(List<dynamic> json) {
    return json == null ? new List<Bond>() : json.map((value) => new Bond.fromJson(value)).toList();
  }

  static Map<String, Bond> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Bond>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Bond.fromJson(value));
    }
    return map;
  }
}
