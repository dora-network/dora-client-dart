part of dora_client.api;

class LedgerModuleResponse {
  
  List<LeverageModuleResponse> data = [];
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  LedgerModuleResponse();

  @override
  String toString() {
    return 'LedgerModuleResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  LedgerModuleResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = LeverageModuleResponse.listFromJson(json['data']);
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

  static List<LedgerModuleResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LedgerModuleResponse>() : json.map((value) => new LedgerModuleResponse.fromJson(value)).toList();
  }

  static Map<String, LedgerModuleResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LedgerModuleResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LedgerModuleResponse.fromJson(value));
    }
    return map;
  }
}
