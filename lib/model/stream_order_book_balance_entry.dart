part of dora_client.api;

class StreamOrderBookBalanceEntry {
  
  OrderBookBalance val = null;
/* The timestamp when the data was created */
  DateTime time = null;

  StreamOrderBookBalanceEntry();

  @override
  String toString() {
    return 'StreamOrderBookBalanceEntry[val=$val, time=$time, ]';
  }

  StreamOrderBookBalanceEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    val = new OrderBookBalance.fromJson(json['Val']);
    time = json['Time'] == null ? null : DateTime.parse(json['Time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Val': val,
      'Time': time == null ? '' : time.toUtc().toIso8601String()
     };
  }

  static List<StreamOrderBookBalanceEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<StreamOrderBookBalanceEntry>() : json.map((value) => new StreamOrderBookBalanceEntry.fromJson(value)).toList();
  }

  static Map<String, StreamOrderBookBalanceEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StreamOrderBookBalanceEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StreamOrderBookBalanceEntry.fromJson(value));
    }
    return map;
  }
}
