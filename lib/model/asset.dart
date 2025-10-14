part of dora_client.api;

class Asset {
  
  String id = null;

  double collateralWeight = null;

  DateTime createdAt = null;

  int decimals = null;

  int fractionalizedUnits = null;

  String description = null;

  double liquidationThreshold = null;

  String maturityId = null;

  int maxSupply = null;

  int maxUtilization = null;

  String name = null;

  String symbol = null;

  AssetKind kind = null;

  double yield_ = null;

  bool canAddLiquidity = null;

  bool canDirectBorrow = null;

  bool canOnboard = null;

  bool canTrade = null;

  bool canVirtualBorrow = null;

  Bond bond = null;

  Asset();

  @override
  String toString() {
    return 'Asset[id=$id, collateralWeight=$collateralWeight, createdAt=$createdAt, decimals=$decimals, fractionalizedUnits=$fractionalizedUnits, description=$description, liquidationThreshold=$liquidationThreshold, maturityId=$maturityId, maxSupply=$maxSupply, maxUtilization=$maxUtilization, name=$name, symbol=$symbol, kind=$kind, yield_=$yield_, canAddLiquidity=$canAddLiquidity, canDirectBorrow=$canDirectBorrow, canOnboard=$canOnboard, canTrade=$canTrade, canVirtualBorrow=$canVirtualBorrow, bond=$bond, ]';
  }

  Asset.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    collateralWeight = json['collateral_weight'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    decimals = json['decimals'];
    fractionalizedUnits = json['fractionalized_units'];
    description = json['description'];
    liquidationThreshold = json['liquidation_threshold'];
    maturityId = json['maturity_id'];
    maxSupply = json['max_supply'];
    maxUtilization = json['max_utilization'];
    name = json['name'];
    symbol = json['symbol'];
    kind = new AssetKind.fromJson(json['kind']);
    yield_ = json['yield'];
    canAddLiquidity = json['can_add_liquidity'];
    canDirectBorrow = json['can_direct_borrow'];
    canOnboard = json['can_onboard'];
    canTrade = json['can_trade'];
    canVirtualBorrow = json['can_virtual_borrow'];
    bond = new Bond.fromJson(json['bond']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'collateral_weight': collateralWeight,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'decimals': decimals,
      'fractionalized_units': fractionalizedUnits,
      'description': description,
      'liquidation_threshold': liquidationThreshold,
      'maturity_id': maturityId,
      'max_supply': maxSupply,
      'max_utilization': maxUtilization,
      'name': name,
      'symbol': symbol,
      'kind': kind,
      'yield': yield_,
      'can_add_liquidity': canAddLiquidity,
      'can_direct_borrow': canDirectBorrow,
      'can_onboard': canOnboard,
      'can_trade': canTrade,
      'can_virtual_borrow': canVirtualBorrow,
      'bond': bond
     };
  }

  static List<Asset> listFromJson(List<dynamic> json) {
    return json == null ? new List<Asset>() : json.map((value) => new Asset.fromJson(value)).toList();
  }

  static Map<String, Asset> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Asset>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Asset.fromJson(value));
    }
    return map;
  }
}
