part of dora_client.api;

class PositionType {
  /// The underlying value of this enum member.
  String value;

  PositionType._internal(this.value);

  static PositionType owned_ = PositionType._internal("Owned");
  static PositionType locked_ = PositionType._internal("Locked");
  static PositionType supplied_ = PositionType._internal("Supplied");
  static PositionType stablecoinEquivalents_ = PositionType._internal("Stablecoin Equivalents");
  static PositionType inactive_ = PositionType._internal("Inactive");
  static PositionType interestSources_ = PositionType._internal("Interest Sources");

  PositionType.fromJson(dynamic data) {
    switch (data) {
          case "Owned": value = data; break;
          case "Locked": value = data; break;
          case "Supplied": value = data; break;
          case "Stablecoin Equivalents": value = data; break;
          case "Inactive": value = data; break;
          case "Interest Sources": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(PositionType data) {
    return data.value;
  }
}