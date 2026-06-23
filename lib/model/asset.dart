//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Asset {
  /// Returns a new [Asset] instance.
  Asset({
    required this.id,
    required this.collateralWeight,
    required this.createdAt,
    required this.decimals,
    required this.fractionalizedUnits,
    required this.description,
    required this.liquidationWeight,
    required this.maxSupply,
    required this.maxUtilization,
    required this.minimumRate,
    required this.kinkRate,
    required this.maximumRate,
    required this.kinkUtilization,
    required this.name,
    required this.symbol,
    required this.kind,
    this.yield_,
    required this.canAddLiquidity,
    required this.canDirectBorrow,
    required this.canOnboard,
    required this.canTrade,
    required this.canVirtualBorrow,
    required this.maxLeverage,
    this.leverageInterestRate = 0,
    this.bond,
  });

  String id;

  /// Minimum value: 0
  /// Maximum value: 1
  num collateralWeight;

  DateTime createdAt;

  /// Minimum value: 0
  int decimals;

  /// Minimum value: 1
  int fractionalizedUnits;

  String description;

  /// Minimum value: 0
  /// Maximum value: 1
  num liquidationWeight;

  /// Minimum value: 0
  int maxSupply;

  /// Minimum value: 0
  /// Maximum value: 1
  num maxUtilization;

  /// Minimum value: 0
  /// Maximum value: 1
  num minimumRate;

  /// Minimum value: 0
  /// Maximum value: 1
  num kinkRate;

  /// Minimum value: 0
  /// Maximum value: 1
  num maximumRate;

  /// Minimum value: 0
  /// Maximum value: 1
  num kinkUtilization;

  String name;

  String symbol;

  AssetKind kind;

  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? yield_;

  bool canAddLiquidity;

  bool canDirectBorrow;

  bool canOnboard;

  bool canTrade;

  bool canVirtualBorrow;

  /// Minimum value: 1
  num maxLeverage;

  num leverageInterestRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Bond? bond;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Asset &&
    other.id == id &&
    other.collateralWeight == collateralWeight &&
    other.createdAt == createdAt &&
    other.decimals == decimals &&
    other.fractionalizedUnits == fractionalizedUnits &&
    other.description == description &&
    other.liquidationWeight == liquidationWeight &&
    other.maxSupply == maxSupply &&
    other.maxUtilization == maxUtilization &&
    other.minimumRate == minimumRate &&
    other.kinkRate == kinkRate &&
    other.maximumRate == maximumRate &&
    other.kinkUtilization == kinkUtilization &&
    other.name == name &&
    other.symbol == symbol &&
    other.kind == kind &&
    other.yield_ == yield_ &&
    other.canAddLiquidity == canAddLiquidity &&
    other.canDirectBorrow == canDirectBorrow &&
    other.canOnboard == canOnboard &&
    other.canTrade == canTrade &&
    other.canVirtualBorrow == canVirtualBorrow &&
    other.maxLeverage == maxLeverage &&
    other.leverageInterestRate == leverageInterestRate &&
    other.bond == bond;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (collateralWeight.hashCode) +
    (createdAt.hashCode) +
    (decimals.hashCode) +
    (fractionalizedUnits.hashCode) +
    (description.hashCode) +
    (liquidationWeight.hashCode) +
    (maxSupply.hashCode) +
    (maxUtilization.hashCode) +
    (minimumRate.hashCode) +
    (kinkRate.hashCode) +
    (maximumRate.hashCode) +
    (kinkUtilization.hashCode) +
    (name.hashCode) +
    (symbol.hashCode) +
    (kind.hashCode) +
    (yield_ == null ? 0 : yield_!.hashCode) +
    (canAddLiquidity.hashCode) +
    (canDirectBorrow.hashCode) +
    (canOnboard.hashCode) +
    (canTrade.hashCode) +
    (canVirtualBorrow.hashCode) +
    (maxLeverage.hashCode) +
    (leverageInterestRate.hashCode) +
    (bond == null ? 0 : bond!.hashCode);

  @override
  String toString() => 'Asset[id=$id, collateralWeight=$collateralWeight, createdAt=$createdAt, decimals=$decimals, fractionalizedUnits=$fractionalizedUnits, description=$description, liquidationWeight=$liquidationWeight, maxSupply=$maxSupply, maxUtilization=$maxUtilization, minimumRate=$minimumRate, kinkRate=$kinkRate, maximumRate=$maximumRate, kinkUtilization=$kinkUtilization, name=$name, symbol=$symbol, kind=$kind, yield_=$yield_, canAddLiquidity=$canAddLiquidity, canDirectBorrow=$canDirectBorrow, canOnboard=$canOnboard, canTrade=$canTrade, canVirtualBorrow=$canVirtualBorrow, maxLeverage=$maxLeverage, leverageInterestRate=$leverageInterestRate, bond=$bond]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'collateral_weight'] = this.collateralWeight;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'decimals'] = this.decimals;
      json[r'fractionalized_units'] = this.fractionalizedUnits;
      json[r'description'] = this.description;
      json[r'liquidation_weight'] = this.liquidationWeight;
      json[r'max_supply'] = this.maxSupply;
      json[r'max_utilization'] = this.maxUtilization;
      json[r'minimum_rate'] = this.minimumRate;
      json[r'kink_rate'] = this.kinkRate;
      json[r'maximum_rate'] = this.maximumRate;
      json[r'kink_utilization'] = this.kinkUtilization;
      json[r'name'] = this.name;
      json[r'symbol'] = this.symbol;
      json[r'kind'] = this.kind;
    if (this.yield_ != null) {
      json[r'yield'] = this.yield_;
    } else {
      json[r'yield'] = null;
    }
      json[r'can_add_liquidity'] = this.canAddLiquidity;
      json[r'can_direct_borrow'] = this.canDirectBorrow;
      json[r'can_onboard'] = this.canOnboard;
      json[r'can_trade'] = this.canTrade;
      json[r'can_virtual_borrow'] = this.canVirtualBorrow;
      json[r'max_leverage'] = this.maxLeverage;
      json[r'leverage_interest_rate'] = this.leverageInterestRate;
    if (this.bond != null) {
      json[r'bond'] = this.bond;
    } else {
      json[r'bond'] = null;
    }
    return json;
  }

  /// Returns a new [Asset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Asset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Asset[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Asset[id]" has a null value in JSON.');
        assert(json.containsKey(r'collateral_weight'), 'Required key "Asset[collateral_weight]" is missing from JSON.');
        assert(json[r'collateral_weight'] != null, 'Required key "Asset[collateral_weight]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "Asset[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "Asset[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'decimals'), 'Required key "Asset[decimals]" is missing from JSON.');
        assert(json[r'decimals'] != null, 'Required key "Asset[decimals]" has a null value in JSON.');
        assert(json.containsKey(r'fractionalized_units'), 'Required key "Asset[fractionalized_units]" is missing from JSON.');
        assert(json[r'fractionalized_units'] != null, 'Required key "Asset[fractionalized_units]" has a null value in JSON.');
        assert(json.containsKey(r'description'), 'Required key "Asset[description]" is missing from JSON.');
        assert(json[r'description'] != null, 'Required key "Asset[description]" has a null value in JSON.');
        assert(json.containsKey(r'liquidation_weight'), 'Required key "Asset[liquidation_weight]" is missing from JSON.');
        assert(json[r'liquidation_weight'] != null, 'Required key "Asset[liquidation_weight]" has a null value in JSON.');
        assert(json.containsKey(r'max_supply'), 'Required key "Asset[max_supply]" is missing from JSON.');
        assert(json[r'max_supply'] != null, 'Required key "Asset[max_supply]" has a null value in JSON.');
        assert(json.containsKey(r'max_utilization'), 'Required key "Asset[max_utilization]" is missing from JSON.');
        assert(json[r'max_utilization'] != null, 'Required key "Asset[max_utilization]" has a null value in JSON.');
        assert(json.containsKey(r'minimum_rate'), 'Required key "Asset[minimum_rate]" is missing from JSON.');
        assert(json[r'minimum_rate'] != null, 'Required key "Asset[minimum_rate]" has a null value in JSON.');
        assert(json.containsKey(r'kink_rate'), 'Required key "Asset[kink_rate]" is missing from JSON.');
        assert(json[r'kink_rate'] != null, 'Required key "Asset[kink_rate]" has a null value in JSON.');
        assert(json.containsKey(r'maximum_rate'), 'Required key "Asset[maximum_rate]" is missing from JSON.');
        assert(json[r'maximum_rate'] != null, 'Required key "Asset[maximum_rate]" has a null value in JSON.');
        assert(json.containsKey(r'kink_utilization'), 'Required key "Asset[kink_utilization]" is missing from JSON.');
        assert(json[r'kink_utilization'] != null, 'Required key "Asset[kink_utilization]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Asset[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Asset[name]" has a null value in JSON.');
        assert(json.containsKey(r'symbol'), 'Required key "Asset[symbol]" is missing from JSON.');
        assert(json[r'symbol'] != null, 'Required key "Asset[symbol]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "Asset[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "Asset[kind]" has a null value in JSON.');
        assert(json.containsKey(r'can_add_liquidity'), 'Required key "Asset[can_add_liquidity]" is missing from JSON.');
        assert(json[r'can_add_liquidity'] != null, 'Required key "Asset[can_add_liquidity]" has a null value in JSON.');
        assert(json.containsKey(r'can_direct_borrow'), 'Required key "Asset[can_direct_borrow]" is missing from JSON.');
        assert(json[r'can_direct_borrow'] != null, 'Required key "Asset[can_direct_borrow]" has a null value in JSON.');
        assert(json.containsKey(r'can_onboard'), 'Required key "Asset[can_onboard]" is missing from JSON.');
        assert(json[r'can_onboard'] != null, 'Required key "Asset[can_onboard]" has a null value in JSON.');
        assert(json.containsKey(r'can_trade'), 'Required key "Asset[can_trade]" is missing from JSON.');
        assert(json[r'can_trade'] != null, 'Required key "Asset[can_trade]" has a null value in JSON.');
        assert(json.containsKey(r'can_virtual_borrow'), 'Required key "Asset[can_virtual_borrow]" is missing from JSON.');
        assert(json[r'can_virtual_borrow'] != null, 'Required key "Asset[can_virtual_borrow]" has a null value in JSON.');
        assert(json.containsKey(r'max_leverage'), 'Required key "Asset[max_leverage]" is missing from JSON.');
        assert(json[r'max_leverage'] != null, 'Required key "Asset[max_leverage]" has a null value in JSON.');
        return true;
      }());

      return Asset(
        id: mapValueOfType<String>(json, r'id')!,
        collateralWeight: num.parse('${json[r'collateral_weight']}'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        decimals: mapValueOfType<int>(json, r'decimals')!,
        fractionalizedUnits: mapValueOfType<int>(json, r'fractionalized_units')!,
        description: mapValueOfType<String>(json, r'description')!,
        liquidationWeight: num.parse('${json[r'liquidation_weight']}'),
        maxSupply: mapValueOfType<int>(json, r'max_supply')!,
        maxUtilization: num.parse('${json[r'max_utilization']}'),
        minimumRate: num.parse('${json[r'minimum_rate']}'),
        kinkRate: num.parse('${json[r'kink_rate']}'),
        maximumRate: num.parse('${json[r'maximum_rate']}'),
        kinkUtilization: num.parse('${json[r'kink_utilization']}'),
        name: mapValueOfType<String>(json, r'name')!,
        symbol: mapValueOfType<String>(json, r'symbol')!,
        kind: AssetKind.fromJson(json[r'kind'])!,
        yield_: num.parse('${json[r'yield']}'),
        canAddLiquidity: mapValueOfType<bool>(json, r'can_add_liquidity')!,
        canDirectBorrow: mapValueOfType<bool>(json, r'can_direct_borrow')!,
        canOnboard: mapValueOfType<bool>(json, r'can_onboard')!,
        canTrade: mapValueOfType<bool>(json, r'can_trade')!,
        canVirtualBorrow: mapValueOfType<bool>(json, r'can_virtual_borrow')!,
        maxLeverage: num.parse('${json[r'max_leverage']}'),
        leverageInterestRate: num.parse('${json[r'leverage_interest_rate']}'),
        bond: Bond.fromJson(json[r'bond']),
      );
    }
    return null;
  }

  static List<Asset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Asset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Asset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Asset> mapFromJson(dynamic json) {
    final map = <String, Asset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Asset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Asset-objects as value to a dart map
  static Map<String, List<Asset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Asset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Asset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'collateral_weight',
    'created_at',
    'decimals',
    'fractionalized_units',
    'description',
    'liquidation_weight',
    'max_supply',
    'max_utilization',
    'minimum_rate',
    'kink_rate',
    'maximum_rate',
    'kink_utilization',
    'name',
    'symbol',
    'kind',
    'can_add_liquidity',
    'can_direct_borrow',
    'can_onboard',
    'can_trade',
    'can_virtual_borrow',
    'max_leverage',
  };
}

