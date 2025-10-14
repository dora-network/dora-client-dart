part of dora_client.api;

class OrderBookStatus {
  /// The underlying value of this enum member.
  String value;

  OrderBookStatus._internal(this.value);

  static OrderBookStatus cLOSED_ = OrderBookStatus._internal("CLOSED");
  static OrderBookStatus oPEN_ = OrderBookStatus._internal("OPEN");
  static OrderBookStatus sUSPENDED_ = OrderBookStatus._internal("SUSPENDED");

  OrderBookStatus.fromJson(dynamic data) {
    switch (data) {
          case "CLOSED": value = data; break;
          case "OPEN": value = data; break;
          case "SUSPENDED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(OrderBookStatus data) {
    return data.value;
  }
}