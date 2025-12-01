//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BondKind {
  /// Instantiate a new enum with the provided [value].
  const BondKind._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COUPON_PAYING = BondKind._(r'COUPON-PAYING');
  static const PRINCIPAL_ONLY = BondKind._(r'PRINCIPAL-ONLY');

  /// List of all possible values in this [enum][BondKind].
  static const values = <BondKind>[
    COUPON_PAYING,
    PRINCIPAL_ONLY,
  ];

  static BondKind? fromJson(dynamic value) => BondKindTypeTransformer().decode(value);

  static List<BondKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BondKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BondKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BondKind] to String,
/// and [decode] dynamic data back to [BondKind].
class BondKindTypeTransformer {
  factory BondKindTypeTransformer() => _instance ??= const BondKindTypeTransformer._();

  const BondKindTypeTransformer._();

  String encode(BondKind data) => data.value;

  /// Decodes a [dynamic value][data] to a BondKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BondKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COUPON-PAYING': return BondKind.COUPON_PAYING;
        case r'PRINCIPAL-ONLY': return BondKind.PRINCIPAL_ONLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BondKindTypeTransformer] instance.
  static BondKindTypeTransformer? _instance;
}

