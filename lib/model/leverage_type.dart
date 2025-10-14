part of dora_client.api;

class LeverageType {
  /// The underlying value of this enum member.
  String value;

  LeverageType._internal(this.value);

  static LeverageType balances_ = LeverageType._internal("Balances");
  static LeverageType supplied_ = LeverageType._internal("Supplied");
  static LeverageType virtual_ = LeverageType._internal("Virtual");
  static LeverageType borrowed_ = LeverageType._internal("Borrowed");
  static LeverageType couponFunds_ = LeverageType._internal("Coupon Funds");
  static LeverageType couponFundSources_ = LeverageType._internal("Coupon Fund Sources");
  static LeverageType snapshots_ = LeverageType._internal("Snapshots");

  LeverageType.fromJson(dynamic data) {
    switch (data) {
          case "Balances": value = data; break;
          case "Supplied": value = data; break;
          case "Virtual": value = data; break;
          case "Borrowed": value = data; break;
          case "Coupon Funds": value = data; break;
          case "Coupon Fund Sources": value = data; break;
          case "Snapshots": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(LeverageType data) {
    return data.value;
  }
}