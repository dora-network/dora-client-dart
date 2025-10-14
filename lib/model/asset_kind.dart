part of dora_client.api;

class AssetKind {
  /// The underlying value of this enum member.
  String value;

  AssetKind._internal(this.value);

  static AssetKind bOND_ = AssetKind._internal("BOND");
  static AssetKind cURRENCY_ = AssetKind._internal("CURRENCY");
  static AssetKind iNTEREST_ = AssetKind._internal("INTEREST");
  static AssetKind pOOLSHARE_ = AssetKind._internal("POOL_SHARE");

  AssetKind.fromJson(dynamic data) {
    switch (data) {
          case "BOND": value = data; break;
          case "CURRENCY": value = data; break;
          case "INTEREST": value = data; break;
          case "POOL_SHARE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AssetKind data) {
    return data.value;
  }
}