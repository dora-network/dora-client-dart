part of dora_client.api;

class TransferBalancesResponse {
  
  BalanceTransfer data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  TransferBalancesResponse();

  @override
  String toString() {
    return 'TransferBalancesResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  TransferBalancesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new BalanceTransfer.fromJson(json['data']);
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

  static List<TransferBalancesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransferBalancesResponse>() : json.map((value) => new TransferBalancesResponse.fromJson(value)).toList();
  }

  static Map<String, TransferBalancesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransferBalancesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransferBalancesResponse.fromJson(value));
    }
    return map;
  }
}
