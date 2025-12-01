//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrderKind {
  /// Instantiate a new enum with the provided [value].
  const OrderKind._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LIMIT = OrderKind._(r'LIMIT');
  static const MARKET = OrderKind._(r'MARKET');

  /// List of all possible values in this [enum][OrderKind].
  static const values = <OrderKind>[
    LIMIT,
    MARKET,
  ];

  static OrderKind? fromJson(dynamic value) => OrderKindTypeTransformer().decode(value);

  static List<OrderKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderKind] to String,
/// and [decode] dynamic data back to [OrderKind].
class OrderKindTypeTransformer {
  factory OrderKindTypeTransformer() => _instance ??= const OrderKindTypeTransformer._();

  const OrderKindTypeTransformer._();

  String encode(OrderKind data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LIMIT': return OrderKind.LIMIT;
        case r'MARKET': return OrderKind.MARKET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderKindTypeTransformer] instance.
  static OrderKindTypeTransformer? _instance;
}

