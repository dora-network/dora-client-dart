part of dora_client.api;

class Side {
  /// The underlying value of this enum member.
  String value;

  Side._internal(this.value);

  static Side bUY_ = Side._internal("BUY");
  static Side sELL_ = Side._internal("SELL");

  Side.fromJson(dynamic data) {
    switch (data) {
          case "BUY": value = data; break;
          case "SELL": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(Side data) {
    return data.value;
  }
}