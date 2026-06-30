//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponKind {
  /// Instantiate a new enum with the provided [value].
  const CouponKind._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COUPON_PAYING = CouponKind._(r'COUPON-PAYING');
  static const PRINCIPAL_ONLY = CouponKind._(r'PRINCIPAL-ONLY');

  /// List of all possible values in this [enum][CouponKind].
  static const values = <CouponKind>[
    COUPON_PAYING,
    PRINCIPAL_ONLY,
  ];

  static CouponKind? fromJson(dynamic value) => CouponKindTypeTransformer().decode(value);

  static List<CouponKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CouponKind] to String,
/// and [decode] dynamic data back to [CouponKind].
class CouponKindTypeTransformer {
  factory CouponKindTypeTransformer() => _instance ??= const CouponKindTypeTransformer._();

  const CouponKindTypeTransformer._();

  String encode(CouponKind data) => data.value;

  /// Decodes a [dynamic value][data] to a CouponKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CouponKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COUPON-PAYING': return CouponKind.COUPON_PAYING;
        case r'PRINCIPAL-ONLY': return CouponKind.PRINCIPAL_ONLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CouponKindTypeTransformer] instance.
  static CouponKindTypeTransformer? _instance;
}

