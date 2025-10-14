part of dora_client.api;

class StreamPositionsEntry {
  
  Position val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamPositionsEntry();

  @override
  String toString() {
    return 'StreamPositionsEntry[val=$val, time=$time, ]';
  }

  StreamPositionsEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new Position.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamPositionsEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamPositionsEntry>() : json.map((value) => new StreamPositionsEntry.fromJson(value)).toList();
  }

  static Map<String, StreamPositionsEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamPositionsEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamPositionsEntry.fromJson(value));
    }
    return map;
  }
}
