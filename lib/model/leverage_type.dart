//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LeverageType {
  /// Instantiate a new enum with the provided [value].
  const LeverageType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const balances = LeverageType._(r'Balances');
  static const supplied = LeverageType._(r'Supplied');
  static const virtual = LeverageType._(r'Virtual');
  static const borrowed = LeverageType._(r'Borrowed');
  static const couponFunds = LeverageType._(r'Coupon Funds');
  static const couponFundSources = LeverageType._(r'Coupon Fund Sources');
  static const snapshots = LeverageType._(r'Snapshots');

  /// List of all possible values in this [enum][LeverageType].
  static const values = <LeverageType>[
    balances,
    supplied,
    virtual,
    borrowed,
    couponFunds,
    couponFundSources,
    snapshots,
  ];

  static LeverageType? fromJson(dynamic value) => LeverageTypeTypeTransformer().decode(value);

  static List<LeverageType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeverageType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeverageType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LeverageType] to String,
/// and [decode] dynamic data back to [LeverageType].
class LeverageTypeTypeTransformer {
  factory LeverageTypeTypeTransformer() => _instance ??= const LeverageTypeTypeTransformer._();

  const LeverageTypeTypeTransformer._();

  String encode(LeverageType data) => data.value;

  /// Decodes a [dynamic value][data] to a LeverageType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LeverageType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Balances': return LeverageType.balances;
        case r'Supplied': return LeverageType.supplied;
        case r'Virtual': return LeverageType.virtual;
        case r'Borrowed': return LeverageType.borrowed;
        case r'Coupon Funds': return LeverageType.couponFunds;
        case r'Coupon Fund Sources': return LeverageType.couponFundSources;
        case r'Snapshots': return LeverageType.snapshots;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LeverageTypeTypeTransformer] instance.
  static LeverageTypeTypeTransformer? _instance;
}

