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
    this.id,
    this.collateralWeight,
    this.createdAt,
    this.decimals,
    this.fractionalizedUnits,
    this.description,
    this.liquidationThreshold,
    this.maturityId,
    this.maxSupply,
    this.maxUtilization,
    this.name,
    this.symbol,
    this.kind,
    this.yield_,
    this.canAddLiquidity,
    this.canDirectBorrow,
    this.canOnboard,
    this.canTrade,
    this.canVirtualBorrow,
    this.bond,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? collateralWeight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decimals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fractionalizedUnits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? liquidationThreshold;

  String? maturityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxSupply;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxUtilization;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetKind? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? yield_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canAddLiquidity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canDirectBorrow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canOnboard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canTrade;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canVirtualBorrow;

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
    other.liquidationThreshold == liquidationThreshold &&
    other.maturityId == maturityId &&
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
    other.bond == bond;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (collateralWeight == null ? 0 : collateralWeight!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (decimals == null ? 0 : decimals!.hashCode) +
    (fractionalizedUnits == null ? 0 : fractionalizedUnits!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (liquidationThreshold == null ? 0 : liquidationThreshold!.hashCode) +
    (maturityId == null ? 0 : maturityId!.hashCode) +
    (maxSupply == null ? 0 : maxSupply!.hashCode) +
    (maxUtilization == null ? 0 : maxUtilization!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (yield_ == null ? 0 : yield_!.hashCode) +
    (canAddLiquidity == null ? 0 : canAddLiquidity!.hashCode) +
    (canDirectBorrow == null ? 0 : canDirectBorrow!.hashCode) +
    (canOnboard == null ? 0 : canOnboard!.hashCode) +
    (canTrade == null ? 0 : canTrade!.hashCode) +
    (canVirtualBorrow == null ? 0 : canVirtualBorrow!.hashCode) +
    (bond == null ? 0 : bond!.hashCode);

  @override
  String toString() => 'Asset[id=$id, collateralWeight=$collateralWeight, createdAt=$createdAt, decimals=$decimals, fractionalizedUnits=$fractionalizedUnits, description=$description, liquidationThreshold=$liquidationThreshold, maturityId=$maturityId, maxSupply=$maxSupply, maxUtilization=$maxUtilization, name=$name, symbol=$symbol, kind=$kind, yield_=$yield_, canAddLiquidity=$canAddLiquidity, canDirectBorrow=$canDirectBorrow, canOnboard=$canOnboard, canTrade=$canTrade, canVirtualBorrow=$canVirtualBorrow, bond=$bond]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.collateralWeight != null) {
      json[r'collateral_weight'] = this.collateralWeight;
    } else {
      json[r'collateral_weight'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.decimals != null) {
      json[r'decimals'] = this.decimals;
    } else {
      json[r'decimals'] = null;
    }
    if (this.fractionalizedUnits != null) {
      json[r'fractionalized_units'] = this.fractionalizedUnits;
    } else {
      json[r'fractionalized_units'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.liquidationThreshold != null) {
      json[r'liquidation_threshold'] = this.liquidationThreshold;
    } else {
      json[r'liquidation_threshold'] = null;
    }
    if (this.maturityId != null) {
      json[r'maturity_id'] = this.maturityId;
    } else {
      json[r'maturity_id'] = null;
    }
    if (this.maxSupply != null) {
      json[r'max_supply'] = this.maxSupply;
    } else {
      json[r'max_supply'] = null;
    }
    if (this.maxUtilization != null) {
      json[r'max_utilization'] = this.maxUtilization;
    } else {
      json[r'max_utilization'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.yield_ != null) {
      json[r'yield'] = this.yield_;
    } else {
      json[r'yield'] = null;
    }
    if (this.canAddLiquidity != null) {
      json[r'can_add_liquidity'] = this.canAddLiquidity;
    } else {
      json[r'can_add_liquidity'] = null;
    }
    if (this.canDirectBorrow != null) {
      json[r'can_direct_borrow'] = this.canDirectBorrow;
    } else {
      json[r'can_direct_borrow'] = null;
    }
    if (this.canOnboard != null) {
      json[r'can_onboard'] = this.canOnboard;
    } else {
      json[r'can_onboard'] = null;
    }
    if (this.canTrade != null) {
      json[r'can_trade'] = this.canTrade;
    } else {
      json[r'can_trade'] = null;
    }
    if (this.canVirtualBorrow != null) {
      json[r'can_virtual_borrow'] = this.canVirtualBorrow;
    } else {
      json[r'can_virtual_borrow'] = null;
    }
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
        id: mapValueOfType<String>(json, r'id'),
        collateralWeight: num.parse('${json[r'collateral_weight']}'),
        createdAt: mapDateTime(json, r'created_at', r''),
        decimals: mapValueOfType<int>(json, r'decimals'),
        fractionalizedUnits: mapValueOfType<int>(json, r'fractionalized_units'),
        description: mapValueOfType<String>(json, r'description'),
        liquidationThreshold: num.parse('${json[r'liquidation_threshold']}'),
        maturityId: mapValueOfType<String>(json, r'maturity_id'),
        maxSupply: mapValueOfType<int>(json, r'max_supply'),
        maxUtilization: mapValueOfType<int>(json, r'max_utilization'),
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        kind: AssetKind.fromJson(json[r'kind']),
        yield_: num.parse('${json[r'yield']}'),
        canAddLiquidity: mapValueOfType<bool>(json, r'can_add_liquidity'),
        canDirectBorrow: mapValueOfType<bool>(json, r'can_direct_borrow'),
        canOnboard: mapValueOfType<bool>(json, r'can_onboard'),
        canTrade: mapValueOfType<bool>(json, r'can_trade'),
        canVirtualBorrow: mapValueOfType<bool>(json, r'can_virtual_borrow'),
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
  };
}

