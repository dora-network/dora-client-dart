part of dora_client.api;

class ModuleBalance {
  
  String assetId = null;

  int seq = null;
/* The available balance in the module for this asset */
  String available = null;
/* The total amount supplied to the module for this asset */
  String supplied = null;
/* The amount supplied as collateral from user balances in the module for this asset */
  String suppliedCollateral = null;
/* Assets minted by virtual-borrowing, but not yet repaid */
  String virtual = null;
/* The total amount borrowed from the supplied but not yet repaid */
  String borrowed = null;

  ModuleBalance();

  @override
  String toString() {
    return 'ModuleBalance[assetId=$assetId, seq=$seq, available=$available, supplied=$supplied, suppliedCollateral=$suppliedCollateral, virtual=$virtual, borrowed=$borrowed, ]';
  }

  ModuleBalance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assetId = json['asset_id'];
    seq = json['seq'];
    available = json['available'];
    supplied = json['supplied'];
    suppliedCollateral = json['supplied_collateral'];
    virtual = json['virtual'];
    borrowed = json['borrowed'];
  }

  Map<String, dynamic> toJson() {
    return {
      'asset_id': assetId,
      'seq': seq,
      'available': available,
      'supplied': supplied,
      'supplied_collateral': suppliedCollateral,
      'virtual': virtual,
      'borrowed': borrowed
     };
  }

  static List<ModuleBalance> listFromJson(List<dynamic> json) {
    return json == null ? new List<ModuleBalance>() : json.map((value) => new ModuleBalance.fromJson(value)).toList();
  }

  static Map<String, ModuleBalance> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ModuleBalance>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ModuleBalance.fromJson(value));
    }
    return map;
  }
}
