part of dora_client.api;

class UpdateFieldString {
  /* Whether to update the field. */
  bool update = null;
/* The new value to set for the field. */
  String value = null;

  UpdateFieldString();

  @override
  String toString() {
    return 'UpdateFieldString[update=$update, value=$value, ]';
  }

  UpdateFieldString.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    update = json['update'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'update': update,
      'value': value
     };
  }

  static List<UpdateFieldString> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateFieldString>() : json.map((value) => new UpdateFieldString.fromJson(value)).toList();
  }

  static Map<String, UpdateFieldString> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateFieldString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateFieldString.fromJson(value));
    }
    return map;
  }
}
