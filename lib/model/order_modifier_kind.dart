part of dora_client.api;

class OrderModifierKind {
  /// The underlying value of this enum member.
  String value;

  OrderModifierKind._internal(this.value);

  static OrderModifierKind lIQUIDATION_ = OrderModifierKind._internal("LIQUIDATION");
  static OrderModifierKind mAXBUY_ = OrderModifierKind._internal("MAX_BUY");

  OrderModifierKind.fromJson(dynamic data) {
    switch (data) {
          case "LIQUIDATION": value = data; break;
          case "MAX_BUY": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(OrderModifierKind data) {
    return data.value;
  }
}