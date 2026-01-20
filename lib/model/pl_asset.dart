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
    this.symbol,
    this.side,
    this.avgEntryPrice,
    this.markPrice,
    this.liquidationPrice,
    this.available,
    this.borrowed,
    this.margin,
    this.unrealizedPl,
    this.leverageLimit,
    this.tp,
    this.sl,
  });

  /// The symbol of the asset
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbol;

  /// The side of the position (LONG or SHORT)
  PLAssetSideEnum? side;

  /// The average entry price of the position
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? avgEntryPrice;

  /// The current mark price for the asset to calculate daily PL. This is usually the close price of the previous day
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? markPrice;

  /// The liquidation price of the position
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? liquidationPrice;

  /// The available quantity in units of the asset
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? available;

  /// The borrowed quantity in units of the asset
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? borrowed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Margin? margin;

  /// The unrealized profit or loss of the position
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? unrealizedPl;

  /// The leverage limit for the position
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? leverageLimit;

  /// The take profit price set for the position, if any
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? tp;

  /// The stop loss price set for the position, if any
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? sl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PLAsset &&
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
    other.sl == sl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (side == null ? 0 : side!.hashCode) +
    (avgEntryPrice == null ? 0 : avgEntryPrice!.hashCode) +
    (markPrice == null ? 0 : markPrice!.hashCode) +
    (liquidationPrice == null ? 0 : liquidationPrice!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (borrowed == null ? 0 : borrowed!.hashCode) +
    (margin == null ? 0 : margin!.hashCode) +
    (unrealizedPl == null ? 0 : unrealizedPl!.hashCode) +
    (leverageLimit == null ? 0 : leverageLimit!.hashCode) +
    (tp == null ? 0 : tp!.hashCode) +
    (sl == null ? 0 : sl!.hashCode);

  @override
  String toString() => 'PLAsset[symbol=$symbol, side=$side, avgEntryPrice=$avgEntryPrice, markPrice=$markPrice, liquidationPrice=$liquidationPrice, available=$available, borrowed=$borrowed, margin=$margin, unrealizedPl=$unrealizedPl, leverageLimit=$leverageLimit, tp=$tp, sl=$sl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.side != null) {
      json[r'side'] = this.side;
    } else {
      json[r'side'] = null;
    }
    if (this.avgEntryPrice != null) {
      json[r'avg_entry_price'] = this.avgEntryPrice;
    } else {
      json[r'avg_entry_price'] = null;
    }
    if (this.markPrice != null) {
      json[r'mark_price'] = this.markPrice;
    } else {
      json[r'mark_price'] = null;
    }
    if (this.liquidationPrice != null) {
      json[r'liquidation_price'] = this.liquidationPrice;
    } else {
      json[r'liquidation_price'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.borrowed != null) {
      json[r'borrowed'] = this.borrowed;
    } else {
      json[r'borrowed'] = null;
    }
    if (this.margin != null) {
      json[r'margin'] = this.margin;
    } else {
      json[r'margin'] = null;
    }
    if (this.unrealizedPl != null) {
      json[r'unrealized_pl'] = this.unrealizedPl;
    } else {
      json[r'unrealized_pl'] = null;
    }
    if (this.leverageLimit != null) {
      json[r'leverage_limit'] = this.leverageLimit;
    } else {
      json[r'leverage_limit'] = null;
    }
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
        symbol: mapValueOfType<String>(json, r'symbol'),
        side: PLAssetSideEnum.fromJson(json[r'side']),
        avgEntryPrice: mapValueOfType<double>(json, r'avg_entry_price'),
        markPrice: mapValueOfType<double>(json, r'mark_price'),
        liquidationPrice: mapValueOfType<double>(json, r'liquidation_price'),
        available: mapValueOfType<double>(json, r'available'),
        borrowed: mapValueOfType<double>(json, r'borrowed'),
        margin: Margin.fromJson(json[r'margin']),
        unrealizedPl: mapValueOfType<double>(json, r'unrealized_pl'),
        leverageLimit: mapValueOfType<double>(json, r'leverage_limit'),
        tp: mapValueOfType<double>(json, r'tp'),
        sl: mapValueOfType<double>(json, r'sl'),
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


