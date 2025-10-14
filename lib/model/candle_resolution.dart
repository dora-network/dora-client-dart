part of dora_client.api;

class CandleResolution {
  /// The underlying value of this enum member.
  String value;

  CandleResolution._internal(this.value);

  static CandleResolution 1m_ = CandleResolution._internal("1m");
  static CandleResolution 5m_ = CandleResolution._internal("5m");
  static CandleResolution 15m_ = CandleResolution._internal("15m");
  static CandleResolution 1h_ = CandleResolution._internal("1h");
  static CandleResolution 4h_ = CandleResolution._internal("4h");
  static CandleResolution 1d_ = CandleResolution._internal("1d");

  CandleResolution.fromJson(dynamic data) {
    switch (data) {
          case "1m": value = data; break;
          case "5m": value = data; break;
          case "15m": value = data; break;
          case "1h": value = data; break;
          case "4h": value = data; break;
          case "1d": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CandleResolution data) {
    return data.value;
  }
}