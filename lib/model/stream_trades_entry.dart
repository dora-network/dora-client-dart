part of dora_client.api;

class StreamTradesEntry {
  
  Trade val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamTradesEntry();

  @override
  String toString() {
    return 'StreamTradesEntry[val=$val, time=$time, ]';
  }

  StreamTradesEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new Trade.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamTradesEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamTradesEntry>() : json.map((value) => new StreamTradesEntry.fromJson(value)).toList();
  }

  static Map<String, StreamTradesEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamTradesEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamTradesEntry.fromJson(value));
    }
    return map;
  }
}
