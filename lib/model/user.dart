part of dora_client.api;

class User {
  
  String id = null;

  DateTime closedAt = null;

  DateTime disabledAt = null;

  String email = null;

  String name = null;

  String nativeAssetId = null;

  String photoUrl = null;

  String provider = null;

  String providerId = null;

  List<UserRole> roles = [];
/* User's timezone, e.g., 'America/New_York', or an offset. */
  String timezone = null;
/* timezone offset in seconds */
  int timezoneOffset = null;

  DateTime verifiedAt = null;

  User();

  @override
  String toString() {
    return 'User[id=$id, closedAt=$closedAt, disabledAt=$disabledAt, email=$email, name=$name, nativeAssetId=$nativeAssetId, photoUrl=$photoUrl, provider=$provider, providerId=$providerId, roles=$roles, timezone=$timezone, timezoneOffset=$timezoneOffset, verifiedAt=$verifiedAt, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    closedAt = json['closed_at'] == null ? null : DateTime.parse(json['closed_at']);
    disabledAt = json['disabled_at'] == null ? null : DateTime.parse(json['disabled_at']);
    email = json['email'];
    name = json['name'];
    nativeAssetId = json['native_asset_id'];
    photoUrl = json['photo_url'];
    provider = json['provider'];
    providerId = json['provider_id'];
    roles = UserRole.listFromJson(json['roles']);
    timezone = json['timezone'];
    timezoneOffset = json['timezone_offset'];
    verifiedAt = json['verified_at'] == null ? null : DateTime.parse(json['verified_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'closed_at': closedAt == null ? '' : closedAt.toUtc().toIso8601String(),
      'disabled_at': disabledAt == null ? '' : disabledAt.toUtc().toIso8601String(),
      'email': email,
      'name': name,
      'native_asset_id': nativeAssetId,
      'photo_url': photoUrl,
      'provider': provider,
      'provider_id': providerId,
      'roles': roles,
      'timezone': timezone,
      'timezone_offset': timezoneOffset,
      'verified_at': verifiedAt == null ? '' : verifiedAt.toUtc().toIso8601String()
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}
