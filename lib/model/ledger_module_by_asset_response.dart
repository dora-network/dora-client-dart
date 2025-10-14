part of dora_client.api;

class LedgerModuleByAssetResponse {
  
  ModuleBalance data = null;
/* The error message. Present for error (non-2xx) responses. */
  String error = null;

  Metadata metadata = null;

  LedgerModuleByAssetResponse();

  @override
  String toString() {
    return 'LedgerModuleByAssetResponse[data=$data, error=$error, metadata=$metadata, ]';
  }

  LedgerModuleByAssetResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new ModuleBalance.fromJson(json['data']);
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

  static List<LedgerModuleByAssetResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LedgerModuleByAssetResponse>() : json.map((value) => new LedgerModuleByAssetResponse.fromJson(value)).toList();
  }

  static Map<String, LedgerModuleByAssetResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LedgerModuleByAssetResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LedgerModuleByAssetResponse.fromJson(value));
    }
    return map;
  }
}
