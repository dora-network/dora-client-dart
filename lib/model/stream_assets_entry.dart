part of dora_client.api;

class StreamAssetsEntry {
  
  Asset val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamAssetsEntry();

  @override
  String toString() {
    return 'StreamAssetsEntry[val=$val, time=$time, ]';
  }

  StreamAssetsEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new Asset.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamAssetsEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamAssetsEntry>() : json.map((value) => new StreamAssetsEntry.fromJson(value)).toList();
  }

  static Map<String, StreamAssetsEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamAssetsEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamAssetsEntry.fromJson(value));
    }
    return map;
  }
}
