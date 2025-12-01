//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class Side {
  /// Instantiate a new enum with the provided [value].
  const Side._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BUY = Side._(r'BUY');
  static const SELL = Side._(r'SELL');

  /// List of all possible values in this [enum][Side].
  static const values = <Side>[
    BUY,
    SELL,
  ];

  static Side? fromJson(dynamic value) => SideTypeTransformer().decode(value);

  static List<Side> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Side>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Side.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Side] to String,
/// and [decode] dynamic data back to [Side].
class SideTypeTransformer {
  factory SideTypeTransformer() => _instance ??= const SideTypeTransformer._();

  const SideTypeTransformer._();

  String encode(Side data) => data.value;

  /// Decodes a [dynamic value][data] to a Side.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Side? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BUY': return Side.BUY;
        case r'SELL': return Side.SELL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SideTypeTransformer] instance.
  static SideTypeTransformer? _instance;
}

