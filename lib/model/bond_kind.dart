part of dora_client.api;

class BondKind {
  /// The underlying value of this enum member.
  String value;

  BondKind._internal(this.value);

  static BondKind cOUPONPAYING_ = BondKind._internal("COUPON-PAYING");
  static BondKind pRINCIPALONLY_ = BondKind._internal("PRINCIPAL-ONLY");

  BondKind.fromJson(dynamic data) {
    switch (data) {
          case "COUPON-PAYING": value = data; break;
          case "PRINCIPAL-ONLY": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(BondKind data) {
    return data.value;
  }
}