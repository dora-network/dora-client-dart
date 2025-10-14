part of dora_client.api;

class StreamTransactionsEntry {
  
  Transaction val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamTransactionsEntry();

  @override
  String toString() {
    return 'StreamTransactionsEntry[val=$val, time=$time, ]';
  }

  StreamTransactionsEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new Transaction.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamTransactionsEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamTransactionsEntry>() : json.map((value) => new StreamTransactionsEntry.fromJson(value)).toList();
  }

  static Map<String, StreamTransactionsEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamTransactionsEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamTransactionsEntry.fromJson(value));
    }
    return map;
  }
}
