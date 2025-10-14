part of dora_client.api;

class UserInterest {
  
  Map<String, int> available = {};

  Map<String, String> value = {};

  UserInterest();

  @override
  String toString() {
    return 'UserInterest[available=$available, value=$value, ]';
  }

  UserInterest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    available = json['available'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'available': available,
      'value': value
     };
  }

  static List<UserInterest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserInterest>() : json.map((value) => new UserInterest.fromJson(value)).toList();
  }

  static Map<String, UserInterest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserInterest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserInterest.fromJson(value));
    }
    return map;
  }
}
