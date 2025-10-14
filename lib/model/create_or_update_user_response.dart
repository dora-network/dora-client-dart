part of dora_client.api;

class CreateOrUpdateUserResponse {
  /* The ID of the created or updated user. */
  String id = null;

  CreateOrUpdateUserResponse();

  @override
  String toString() {
    return 'CreateOrUpdateUserResponse[id=$id, ]';
  }

  CreateOrUpdateUserResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<CreateOrUpdateUserResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrUpdateUserResponse>() : json.map((value) => new CreateOrUpdateUserResponse.fromJson(value)).toList();
  }

  static Map<String, CreateOrUpdateUserResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrUpdateUserResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrUpdateUserResponse.fromJson(value));
    }
    return map;
  }
}
