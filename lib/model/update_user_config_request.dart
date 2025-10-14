part of dora_client.api;

class UpdateUserConfigRequest {
  
  UpdateFieldString photoUrl = null;

  UpdateFieldString timezone = null;

  UpdateUserConfigRequest();

  @override
  String toString() {
    return 'UpdateUserConfigRequest[photoUrl=$photoUrl, timezone=$timezone, ]';
  }

  UpdateUserConfigRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    photoUrl = new UpdateFieldString.fromJson(json['photo_url']);
    timezone = new UpdateFieldString.fromJson(json['timezone']);
  }

  Map<String, dynamic> toJson() {
    return {
      'photo_url': photoUrl,
      'timezone': timezone
     };
  }

  static List<UpdateUserConfigRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateUserConfigRequest>() : json.map((value) => new UpdateUserConfigRequest.fromJson(value)).toList();
  }

  static Map<String, UpdateUserConfigRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateUserConfigRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateUserConfigRequest.fromJson(value));
    }
    return map;
  }
}
