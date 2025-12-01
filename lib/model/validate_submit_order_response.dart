part of dora_client.api;

class ValidateSubmitOrderResponse {
  
  bool data = null;

  ValidateSubmitOrderResponse();

  @override
  String toString() {
    return 'ValidateSubmitOrderResponse[data=$data, ]';
  }

  ValidateSubmitOrderResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<ValidateSubmitOrderResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidateSubmitOrderResponse>() : json.map((value) => new ValidateSubmitOrderResponse.fromJson(value)).toList();
  }

  static Map<String, ValidateSubmitOrderResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidateSubmitOrderResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidateSubmitOrderResponse.fromJson(value));
    }
    return map;
  }
}
