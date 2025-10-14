part of dora_client.api;

class OrderStatus {
  /// The underlying value of this enum member.
  String value;

  OrderStatus._internal(this.value);

  static OrderStatus oPEN_ = OrderStatus._internal("OPEN");
  static OrderStatus fILLED_ = OrderStatus._internal("FILLED");
  static OrderStatus pARTIALFILL_ = OrderStatus._internal("PARTIAL_FILL");
  static OrderStatus cANCELLED_ = OrderStatus._internal("CANCELLED");

  OrderStatus.fromJson(dynamic data) {
    switch (data) {
          case "OPEN": value = data; break;
          case "FILLED": value = data; break;
          case "PARTIAL_FILL": value = data; break;
          case "CANCELLED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(OrderStatus data) {
    return data.value;
  }
}