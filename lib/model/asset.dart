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
    required this.name,
    required this.symbol,
    required this.kind,
    required this.yield_,
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
  int maxUtilization;

  String name;

  String symbol;

  AssetKind kind;

  /// Minimum value: 0
  num yield_;

  bool canAddLiquidity;

  bool canDirectBorrow;

  bool canOnboard;

  bool canTrade;

  bool canVirtualBorrow;

  /// Minimum value: 0
  /// Maximum value: 1
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
    (name.hashCode) +
    (symbol.hashCode) +
    (kind.hashCode) +
    (yield_.hashCode) +
    (canAddLiquidity.hashCode) +
    (canDirectBorrow.hashCode) +
    (canOnboard.hashCode) +
    (canTrade.hashCode) +
    (canVirtualBorrow.hashCode) +
    (maxLeverage.hashCode) +
    (leverageInterestRate.hashCode) +
    (bond == null ? 0 : bond!.hashCode);

  @override
  String toString() => 'Asset[id=$id, collateralWeight=$collateralWeight, createdAt=$createdAt, decimals=$decimals, fractionalizedUnits=$fractionalizedUnits, description=$description, liquidationWeight=$liquidationWeight, maxSupply=$maxSupply, maxUtilization=$maxUtilization, name=$name, symbol=$symbol, kind=$kind, yield_=$yield_, canAddLiquidity=$canAddLiquidity, canDirectBorrow=$canDirectBorrow, canOnboard=$canOnboard, canTrade=$canTrade, canVirtualBorrow=$canVirtualBorrow, maxLeverage=$maxLeverage, leverageInterestRate=$leverageInterestRate, bond=$bond]';

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
      json[r'name'] = this.name;
      json[r'symbol'] = this.symbol;
      json[r'kind'] = this.kind;
      json[r'yield'] = this.yield_;
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Asset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Asset[$key]" has a null value in JSON.');
        });
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
        maxUtilization: mapValueOfType<int>(json, r'max_utilization')!,
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
    'name',
    'symbol',
    'kind',
    'yield',
    'can_add_liquidity',
    'can_direct_borrow',
    'can_onboard',
    'can_trade',
    'can_virtual_borrow',
    'max_leverage',
    'leverage_interest_rate',
  };
}

