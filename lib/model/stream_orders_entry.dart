part of dora_client.api;

class StreamOrdersEntry {
  
  Order val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamOrdersEntry();

  @override
  String toString() {
    return 'StreamOrdersEntry[val=$val, time=$time, ]';
  }

  StreamOrdersEntry.fromJson(Map<String, dynamic> json) {
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

  static List<StreamOrdersEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamOrdersEntry>() : json.map((value) => new StreamOrdersEntry.fromJson(value)).toList();
  }

  static Map<String, StreamOrdersEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamOrdersEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamOrdersEntry.fromJson(value));
    }
    return map;
  }
}
