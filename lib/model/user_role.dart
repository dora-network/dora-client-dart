part of dora_client.api;

class UserRole {
  /// The underlying value of this enum member.
  String value;

  UserRole._internal(this.value);

  static UserRole pUBLIC_ = UserRole._internal("PUBLIC");
  static UserRole sELF_ = UserRole._internal("SELF");
  static UserRole aDMIN_ = UserRole._internal("ADMIN");
  static UserRole bONDPROVIDER_ = UserRole._internal("BOND_PROVIDER");
  static UserRole lIQUIDITYPROVIDER_ = UserRole._internal("LIQUIDITY_PROVIDER");
  static UserRole tRADER_ = UserRole._internal("TRADER");

  UserRole.fromJson(dynamic data) {
    switch (data) {
          case "PUBLIC": value = data; break;
          case "SELF": value = data; break;
          case "ADMIN": value = data; break;
          case "BOND_PROVIDER": value = data; break;
          case "LIQUIDITY_PROVIDER": value = data; break;
          case "TRADER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(UserRole data) {
    return data.value;
  }
}