part of dora_client.api;

class ListCouponPaymentsResponse {
  
  List<CouponPayment> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  ListCouponPaymentsResponse();

  @override
  String toString() {
    return 'ListCouponPaymentsResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  ListCouponPaymentsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = CouponPayment.listFromJson(json['data']);
    error = json['error'];
    metadata = new Metadata.fromJson(json['metadata']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'error': error,
      'metadata': metadata
     };
  }

  static List<ListCouponPaymentsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListCouponPaymentsResponse>() : json.map((value) => new ListCouponPaymentsResponse.fromJson(value)).toList();
  }

  static Map<String, ListCouponPaymentsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListCouponPaymentsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListCouponPaymentsResponse.fromJson(value));
    }
    return map;
  }
}
