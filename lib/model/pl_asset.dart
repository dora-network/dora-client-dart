//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PLAsset {
  /// Returns a new [PLAsset] instance.
  PLAsset({
    required this.id,
    required this.kind,
    required this.symbol,
    required this.side,
    required this.avgEntryPrice,
    required this.markPrice,
    required this.liquidationPrice,
    required this.available,
    required this.borrowed,
    required this.margin,
    required this.unrealizedPl,
    required this.leverageLimit,
    this.tp,
    this.sl,
    required this.initialCapital,
    this.impendingBorrows,
    required this.locked,
    required this.unusedCollateral,
  });

  /// The ID of the asset
  String id;

  AssetKind kind;

  /// The symbol of the asset
  String symbol;

  /// The side of the position (LONG or SHORT)
  PLAssetSideEnum side;

  /// The average entry price of the position
  String avgEntryPrice;

  /// The current mark price for the asset to calculate daily PL. This is usually the close price of the previous day
  String markPrice;

  /// The liquidation price of the position
  String liquidationPrice;

  /// The available quantity in units of the asset
  String available;

  /// The borrowed quantity in units of the asset
  String borrowed;

  Margin margin;

  /// The unrealized profit or loss of the position
  String unrealizedPl;

  /// The leverage limit for the position
  String leverageLimit;

  /// The take profit price set for the position, if any
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tp;

  /// The stop loss price set for the position, if any
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sl;

  /// The initial capital of the position
  String initialCapital;

  /// The impending borrows of the position
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? impendingBorrows;

  /// The locked amount of the position
  String locked;

  /// The unused collateral of the position
  String unusedCollateral;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PLAsset &&
    other.id == id &&
    other.kind == kind &&
    other.symbol == symbol &&
    other.side == side &&
    other.avgEntryPrice == avgEntryPrice &&
    other.markPrice == markPrice &&
    other.liquidationPrice == liquidationPrice &&
    other.available == available &&
    other.borrowed == borrowed &&
    other.margin == margin &&
    other.unrealizedPl == unrealizedPl &&
    other.leverageLimit == leverageLimit &&
    other.tp == tp &&
    other.sl == sl &&
    other.initialCapital == initialCapital &&
    other.impendingBorrows == impendingBorrows &&
    other.locked == locked &&
    other.unusedCollateral == unusedCollateral;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (kind.hashCode) +
    (symbol.hashCode) +
    (side.hashCode) +
    (avgEntryPrice.hashCode) +
    (markPrice.hashCode) +
    (liquidationPrice.hashCode) +
    (available.hashCode) +
    (borrowed.hashCode) +
    (margin.hashCode) +
    (unrealizedPl.hashCode) +
    (leverageLimit.hashCode) +
    (tp == null ? 0 : tp!.hashCode) +
    (sl == null ? 0 : sl!.hashCode) +
    (initialCapital.hashCode) +
    (impendingBorrows == null ? 0 : impendingBorrows!.hashCode) +
    (locked.hashCode) +
    (unusedCollateral.hashCode);

  @override
  String toString() => 'PLAsset[id=$id, kind=$kind, symbol=$symbol, side=$side, avgEntryPrice=$avgEntryPrice, markPrice=$markPrice, liquidationPrice=$liquidationPrice, available=$available, borrowed=$borrowed, margin=$margin, unrealizedPl=$unrealizedPl, leverageLimit=$leverageLimit, tp=$tp, sl=$sl, initialCapital=$initialCapital, impendingBorrows=$impendingBorrows, locked=$locked, unusedCollateral=$unusedCollateral]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'kind'] = this.kind;
      json[r'symbol'] = this.symbol;
      json[r'side'] = this.side;
      json[r'avg_entry_price'] = this.avgEntryPrice;
      json[r'mark_price'] = this.markPrice;
      json[r'liquidation_price'] = this.liquidationPrice;
      json[r'available'] = this.available;
      json[r'borrowed'] = this.borrowed;
      json[r'margin'] = this.margin;
      json[r'unrealized_pl'] = this.unrealizedPl;
      json[r'leverage_limit'] = this.leverageLimit;
    if (this.tp != null) {
      json[r'tp'] = this.tp;
    } else {
      json[r'tp'] = null;
    }
    if (this.sl != null) {
      json[r'sl'] = this.sl;
    } else {
      json[r'sl'] = null;
    }
      json[r'initial_capital'] = this.initialCapital;
    if (this.impendingBorrows != null) {
      json[r'impending_borrows'] = this.impendingBorrows;
    } else {
      json[r'impending_borrows'] = null;
    }
      json[r'locked'] = this.locked;
      json[r'unused_collateral'] = this.unusedCollateral;
    return json;
  }

  /// Returns a new [PLAsset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PLAsset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PLAsset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PLAsset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PLAsset(
        id: mapValueOfType<String>(json, r'id')!,
        kind: AssetKind.fromJson(json[r'kind'])!,
        symbol: mapValueOfType<String>(json, r'symbol')!,
        side: PLAssetSideEnum.fromJson(json[r'side'])!,
        avgEntryPrice: mapValueOfType<String>(json, r'avg_entry_price')!,
        markPrice: mapValueOfType<String>(json, r'mark_price')!,
        liquidationPrice: mapValueOfType<String>(json, r'liquidation_price')!,
        available: mapValueOfType<String>(json, r'available')!,
        borrowed: mapValueOfType<String>(json, r'borrowed')!,
        margin: Margin.fromJson(json[r'margin'])!,
        unrealizedPl: mapValueOfType<String>(json, r'unrealized_pl')!,
        leverageLimit: mapValueOfType<String>(json, r'leverage_limit')!,
        tp: mapValueOfType<String>(json, r'tp'),
        sl: mapValueOfType<String>(json, r'sl'),
        initialCapital: mapValueOfType<String>(json, r'initial_capital')!,
        impendingBorrows: mapValueOfType<String>(json, r'impending_borrows'),
        locked: mapValueOfType<String>(json, r'locked')!,
        unusedCollateral: mapValueOfType<String>(json, r'unused_collateral')!,
      );
    }
    return null;
  }

  static List<PLAsset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PLAsset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PLAsset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PLAsset> mapFromJson(dynamic json) {
    final map = <String, PLAsset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PLAsset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PLAsset-objects as value to a dart map
  static Map<String, List<PLAsset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PLAsset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PLAsset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'kind',
    'symbol',
    'side',
    'avg_entry_price',
    'mark_price',
    'liquidation_price',
    'available',
    'borrowed',
    'margin',
    'unrealized_pl',
    'leverage_limit',
    'initial_capital',
    'locked',
    'unused_collateral',
  };
}

/// The side of the position (LONG or SHORT)
class PLAssetSideEnum {
  /// Instantiate a new enum with the provided [value].
  const PLAssetSideEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LONG = PLAssetSideEnum._(r'LONG');
  static const SHORT = PLAssetSideEnum._(r'SHORT');

  /// List of all possible values in this [enum][PLAssetSideEnum].
  static const values = <PLAssetSideEnum>[
    LONG,
    SHORT,
  ];

  static PLAssetSideEnum? fromJson(dynamic value) => PLAssetSideEnumTypeTransformer().decode(value);

  static List<PLAssetSideEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PLAssetSideEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PLAssetSideEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PLAssetSideEnum] to String,
/// and [decode] dynamic data back to [PLAssetSideEnum].
class PLAssetSideEnumTypeTransformer {
  factory PLAssetSideEnumTypeTransformer() => _instance ??= const PLAssetSideEnumTypeTransformer._();

  const PLAssetSideEnumTypeTransformer._();

  String encode(PLAssetSideEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PLAssetSideEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PLAssetSideEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LONG': return PLAssetSideEnum.LONG;
        case r'SHORT': return PLAssetSideEnum.SHORT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PLAssetSideEnumTypeTransformer] instance.
  static PLAssetSideEnumTypeTransformer? _instance;
}


