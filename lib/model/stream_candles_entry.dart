part of dora_client.api;

class StreamCandlesEntry {
  
  Candle val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamCandlesEntry();

  @override
  String toString() {
    return 'StreamCandlesEntry[val=$val, time=$time, ]';
  }

  StreamCandlesEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new Candle.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamCandlesEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamCandlesEntry>() : json.map((value) => new StreamCandlesEntry.fromJson(value)).toList();
  }

  static Map<String, StreamCandlesEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamCandlesEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamCandlesEntry.fromJson(value));
    }
    return map;
  }
}
