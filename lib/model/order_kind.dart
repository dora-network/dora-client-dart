part of dora_client.api;

class OrderKind {
  /// The underlying value of this enum member.
  String value;

  OrderKind._internal(this.value);

  static OrderKind lIMIT_ = OrderKind._internal("LIMIT");
  static OrderKind mARKET_ = OrderKind._internal("MARKET");

  OrderKind.fromJson(dynamic data) {
    switch (data) {
          case "LIMIT": value = data; break;
          case "MARKET": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(OrderKind data) {
    return data.value;
  }
}