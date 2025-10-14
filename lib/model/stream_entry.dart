part of dora_client.api;

class StreamEntry {
  /* The data being streamed */
  Object val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamEntry();

  @override
  String toString() {
    return 'StreamEntry[val=$val, time=$time, ]';
  }

  StreamEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new Object.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamEntry>() : json.map((value) => new StreamEntry.fromJson(value)).toList();
  }

  static Map<String, StreamEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamEntry.fromJson(value));
    }
    return map;
  }
}
