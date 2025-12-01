//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssetKind {
  /// Instantiate a new enum with the provided [value].
  const AssetKind._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BOND = AssetKind._(r'BOND');
  static const CURRENCY = AssetKind._(r'CURRENCY');
  static const INTEREST = AssetKind._(r'INTEREST');
  static const POOL_SHARE = AssetKind._(r'POOL_SHARE');

  /// List of all possible values in this [enum][AssetKind].
  static const values = <AssetKind>[
    BOND,
    CURRENCY,
    INTEREST,
    POOL_SHARE,
  ];

  static AssetKind? fromJson(dynamic value) => AssetKindTypeTransformer().decode(value);

  static List<AssetKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssetKind] to String,
/// and [decode] dynamic data back to [AssetKind].
class AssetKindTypeTransformer {
  factory AssetKindTypeTransformer() => _instance ??= const AssetKindTypeTransformer._();

  const AssetKindTypeTransformer._();

  String encode(AssetKind data) => data.value;

  /// Decodes a [dynamic value][data] to a AssetKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssetKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BOND': return AssetKind.BOND;
        case r'CURRENCY': return AssetKind.CURRENCY;
        case r'INTEREST': return AssetKind.INTEREST;
        case r'POOL_SHARE': return AssetKind.POOL_SHARE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssetKindTypeTransformer] instance.
  static AssetKindTypeTransformer? _instance;
}

