part of dora_client.api;

class StreamOrderUpdatesEntry {
  
  Order val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamOrderUpdatesEntry();

  @override
  String toString() {
    return 'StreamOrderUpdatesEntry[val=$val, time=$time, ]';
  }

  StreamOrderUpdatesEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new Order.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamOrderUpdatesEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamOrderUpdatesEntry>() : json.map((value) => new StreamOrderUpdatesEntry.fromJson(value)).toList();
  }

  static Map<String, StreamOrderUpdatesEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamOrderUpdatesEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamOrderUpdatesEntry.fromJson(value));
    }
    return map;
  }
}
