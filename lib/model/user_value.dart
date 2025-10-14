part of dora_client.api;

class UserValue {
  
  Map<String, String> available = {};

  Map<String, String> locked = {};

  Map<String, String> borrowed = {};

  Map<String, String> supplied = {};

  Map<String, String> collateral = {};

  Map<String, String> suppliedCollateral = {};

  Map<String, String> impendingBorrows = {};

  Map<String, String> borrowLimit = {};

  Map<String, String> liquidationThreshold = {};

  Map<String, String> notionalLong = {};

  Map<String, String> notionalShort = {};

  Map<String, String> portfolioValue = {};

  Map<String, String> netLiquidationValue = {};

  Map<String, String> unrealizedPnl = {};

  Map<String, String> realizedPnl = {};

  UserValue();

  @override
  String toString() {
    return 'UserValue[available=$available, locked=$locked, borrowed=$borrowed, supplied=$supplied, collateral=$collateral, suppliedCollateral=$suppliedCollateral, impendingBorrows=$impendingBorrows, borrowLimit=$borrowLimit, liquidationThreshold=$liquidationThreshold, notionalLong=$notionalLong, notionalShort=$notionalShort, portfolioValue=$portfolioValue, netLiquidationValue=$netLiquidationValue, unrealizedPnl=$unrealizedPnl, realizedPnl=$realizedPnl, ]';
  }

  UserValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    available = json['available'];
    locked = json['locked'];
    borrowed = json['borrowed'];
    supplied = json['supplied'];
    collateral = json['collateral'];
    suppliedCollateral = json['supplied_collateral'];
    impendingBorrows = json['impending_borrows'];
    borrowLimit = json['borrow_limit'];
    liquidationThreshold = json['liquidation_threshold'];
    notionalLong = json['notional_long'];
    notionalShort = json['notional_short'];
    portfolioValue = json['portfolio_value'];
    netLiquidationValue = json['net_liquidation_value'];
    unrealizedPnl = json['unrealized_pnl'];
    realizedPnl = json['realized_pnl'];
  }

  Map<String, dynamic> toJson() {
    return {
      'available': available,
      'locked': locked,
      'borrowed': borrowed,
      'supplied': supplied,
      'collateral': collateral,
      'supplied_collateral': suppliedCollateral,
      'impending_borrows': impendingBorrows,
      'borrow_limit': borrowLimit,
      'liquidation_threshold': liquidationThreshold,
      'notional_long': notionalLong,
      'notional_short': notionalShort,
      'portfolio_value': portfolioValue,
      'net_liquidation_value': netLiquidationValue,
      'unrealized_pnl': unrealizedPnl,
      'realized_pnl': realizedPnl
     };
  }

  static List<UserValue> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserValue>() : json.map((value) => new UserValue.fromJson(value)).toList();
  }

  static Map<String, UserValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserValue.fromJson(value));
    }
    return map;
  }
}
