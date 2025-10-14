part of dora_client.api;

class Candle {
  
  String orderBookId = null;

  DateTime startTimestamp = null;

  String open = null;

  String high = null;

  String low = null;

  String close = null;

  String volume = null;

  Candle();

  @override
  String toString() {
    return 'Candle[orderBookId=$orderBookId, startTimestamp=$startTimestamp, open=$open, high=$high, low=$low, close=$close, volume=$volume, ]';
  }

  Candle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderBookId = json['order_book_id'];
    startTimestamp = json['start_timestamp'] == null ? null : DateTime.parse(json['start_timestamp']);
    open = json['open'];
    high = json['high'];
    low = json['low'];
    close = json['close'];
    volume = json['volume'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order_book_id': orderBookId,
      'start_timestamp': startTimestamp == null ? '' : startTimestamp.toUtc().toIso8601String(),
      'open': open,
      'high': high,
      'low': low,
      'close': close,
      'volume': volume
     };
  }

  static List<Candle> listFromJson(List<dynamic> json) {
    return json == null ? new List<Candle>() : json.map((value) => new Candle.fromJson(value)).toList();
  }

  static Map<String, Candle> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Candle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Candle.fromJson(value));
    }
    return map;
  }
}
