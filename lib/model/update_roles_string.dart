part of dora_client.api;

class UpdateRolesString {
  /* Whether to update the field. */
  bool update = null;

  UserRole value = null;

  UpdateRolesString();

  @override
  String toString() {
    return 'UpdateRolesString[update=$update, value=$value, ]';
  }

  UpdateRolesString.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    update = json['update'];
    value = new UserRole.fromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {
      'update': update,
      'value': value
     };
  }

  static List<UpdateRolesString> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateRolesString>() : json.map((value) => new UpdateRolesString.fromJson(value)).toList();
  }

  static Map<String, UpdateRolesString> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateRolesString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateRolesString.fromJson(value));
    }
    return map;
  }
}
