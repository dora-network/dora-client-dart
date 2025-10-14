part of dora_client.api;

class UserConfig {
  
  String id = null;

  String photoUrl = null;
/* User's timezone, e.g., 'America/New_York', or an offset. */
  String timezone = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  UserConfig();

  @override
  String toString() {
    return 'UserConfig[id=$id, photoUrl=$photoUrl, timezone=$timezone, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  UserConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    photoUrl = json['photo_url'];
    timezone = json['timezone'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'photo_url': photoUrl,
      'timezone': timezone,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<UserConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserConfig>() : json.map((value) => new UserConfig.fromJson(value)).toList();
  }

  static Map<String, UserConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserConfig.fromJson(value));
    }
    return map;
  }
}
