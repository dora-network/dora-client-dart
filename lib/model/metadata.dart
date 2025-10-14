part of dora_client.api;

class Metadata {
  /* HTTP status code for the response. */
  int statusCode = null;
/* Trace ID for distributed tracing. */
  String traceId = null;
/* Request ID for correlating logs and debugging. */
  String requestId = null;

  Metadata();

  @override
  String toString() {
    return 'Metadata[statusCode=$statusCode, traceId=$traceId, requestId=$requestId, ]';
  }

  Metadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    statusCode = json['status_code'];
    traceId = json['trace_id'];
    requestId = json['request_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'status_code': statusCode,
      'trace_id': traceId,
      'request_id': requestId
     };
  }

  static List<Metadata> listFromJson(List<dynamic> json) {
    return json == null ? new List<Metadata>() : json.map((value) => new Metadata.fromJson(value)).toList();
  }

  static Map<String, Metadata> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Metadata>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Metadata.fromJson(value));
    }
    return map;
  }
}
