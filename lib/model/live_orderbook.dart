part of dora_client.api;

class LiveOrderbook {
  /* sorted in desc order by price */
  List<PriceLevel> bids = [];
/* sorted in asc order by price */
  List<PriceLevel> asks = [];

  LiveOrderbook();

  @override
  String toString() {
    return 'LiveOrderbook[bids=$bids, asks=$asks, ]';
  }

  LiveOrderbook.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bids = PriceLevel.listFromJson(json['bids']);
    asks = PriceLevel.listFromJson(json['asks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'bids': bids,
      'asks': asks
     };
  }

  static List<LiveOrderbook> listFromJson(List<dynamic> json) {
    return json == null ? new List<LiveOrderbook>() : json.map((value) => new LiveOrderbook.fromJson(value)).toList();
  }

  static Map<String, LiveOrderbook> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LiveOrderbook>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LiveOrderbook.fromJson(value));
    }
    return map;
  }
}
