//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PositionSide {
  /// Instantiate a new enum with the provided [value].
  const PositionSide._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LONG = PositionSide._(r'LONG');
  static const SHORT = PositionSide._(r'SHORT');

  /// List of all possible values in this [enum][PositionSide].
  static const values = <PositionSide>[
    LONG,
    SHORT,
  ];

  static PositionSide? fromJson(dynamic value) => PositionSideTypeTransformer().decode(value);

  static List<PositionSide> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PositionSide>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PositionSide.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PositionSide] to String,
/// and [decode] dynamic data back to [PositionSide].
class PositionSideTypeTransformer {
  factory PositionSideTypeTransformer() => _instance ??= const PositionSideTypeTransformer._();

  const PositionSideTypeTransformer._();

  String encode(PositionSide data) => data.value;

  /// Decodes a [dynamic value][data] to a PositionSide.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PositionSide? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LONG': return PositionSide.LONG;
        case r'SHORT': return PositionSide.SHORT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PositionSideTypeTransformer] instance.
  static PositionSideTypeTransformer? _instance;
}

