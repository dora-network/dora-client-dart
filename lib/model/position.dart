part of dora_client.api;

class Position {
  /* The unique identifier for the position. Used, for example, when creating an order from a position, or deciding collateral should be transferred from position A to position B. */
  String id = null;

  String assetId = null;

  int seq = null;

  bool isGlobal = null;
/* The available balance in the position for this asset that are not locked, supplied, or used as collateral */
  String available = null;
/* The balance that has been reserved for a current order. If spent by the order, they are removed. If the order is cancelled, they are returned to the position's available balance. */
  String locked = null;
/* The balance that user has supplied to the leverage module. The user remains entitled to these assets and can withdraw them into their available balance. */
  String supplied = null;
/* The balance that has been locked or supplied, but are marked as collateral to support borrow limits and can be consumed in case of liquidation. When unmarked as collateral, the balance returns to the available balance. */
  String collateral = null;
/* The balance that have been supplied to the leverage module and marked as collateral. The user remains entitled to this balance and can withdraw it into the collateral balance, or unmark them as collateral and move them to the supplied balance. */
  String suppliedCollateral = null;
/* The total amount of debt outstanding for this position. The position's collateral + supplied_collateral must support a borrow limit sufficient to cover all borrowed assets. This position cannot be closed until all debt is fully repaid, i.e. borrowed = 0. */
  String borrowed = null;
/* The equivalent of locked balances, but for leveraged orders. If a user has an active order that would borrow assets as part of its input, then their borrow limit must be reduced until the order is executed or cancelled. */
  String impendingBorrows = null;
/* average cost per unit quantity that was paid (long positions) or received (short positions) for this asset. */
  String avgEntryPrice = null;
/* The borrow limit */
  String borrowLimit = null;
/* The borrow limit */
  String liquidationThreshold = null;

  DateTime createdAt = null;

  Position();

  @override
  String toString() {
    return 'Position[id=$id, assetId=$assetId, seq=$seq, isGlobal=$isGlobal, available=$available, locked=$locked, supplied=$supplied, collateral=$collateral, suppliedCollateral=$suppliedCollateral, borrowed=$borrowed, impendingBorrows=$impendingBorrows, avgEntryPrice=$avgEntryPrice, borrowLimit=$borrowLimit, liquidationThreshold=$liquidationThreshold, createdAt=$createdAt, ]';
  }

  Position.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    assetId = json['asset_id'];
    seq = json['seq'];
    isGlobal = json['is_global'];
    available = json['available'];
    locked = json['locked'];
    supplied = json['supplied'];
    collateral = json['collateral'];
    suppliedCollateral = json['supplied_collateral'];
    borrowed = json['borrowed'];
    impendingBorrows = json['impending_borrows'];
    avgEntryPrice = json['avg_entry_price'];
    borrowLimit = json['borrow_limit'];
    liquidationThreshold = json['liquidation_threshold'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'asset_id': assetId,
      'seq': seq,
      'is_global': isGlobal,
      'available': available,
      'locked': locked,
      'supplied': supplied,
      'collateral': collateral,
      'supplied_collateral': suppliedCollateral,
      'borrowed': borrowed,
      'impending_borrows': impendingBorrows,
      'avg_entry_price': avgEntryPrice,
      'borrow_limit': borrowLimit,
      'liquidation_threshold': liquidationThreshold,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String()
     };
  }

  static List<Position> listFromJson(List<dynamic> json) {
    return json == null ? new List<Position>() : json.map((value) => new Position.fromJson(value)).toList();
  }

  static Map<String, Position> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Position>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Position.fromJson(value));
    }
    return map;
  }
}
