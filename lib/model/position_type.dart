//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PositionType {
  /// Instantiate a new enum with the provided [value].
  const PositionType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owned = PositionType._(r'Owned');
  static const locked = PositionType._(r'Locked');
  static const supplied = PositionType._(r'Supplied');
  static const stablecoinEquivalents = PositionType._(r'Stablecoin Equivalents');
  static const inactive = PositionType._(r'Inactive');
  static const interestSources = PositionType._(r'Interest Sources');

  /// List of all possible values in this [enum][PositionType].
  static const values = <PositionType>[
    owned,
    locked,
    supplied,
    stablecoinEquivalents,
    inactive,
    interestSources,
  ];

  static PositionType? fromJson(dynamic value) => PositionTypeTypeTransformer().decode(value);

  static List<PositionType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PositionType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PositionType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PositionType] to String,
/// and [decode] dynamic data back to [PositionType].
class PositionTypeTypeTransformer {
  factory PositionTypeTypeTransformer() => _instance ??= const PositionTypeTypeTransformer._();

  const PositionTypeTypeTransformer._();

  String encode(PositionType data) => data.value;

  /// Decodes a [dynamic value][data] to a PositionType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PositionType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Owned': return PositionType.owned;
        case r'Locked': return PositionType.locked;
        case r'Supplied': return PositionType.supplied;
        case r'Stablecoin Equivalents': return PositionType.stablecoinEquivalents;
        case r'Inactive': return PositionType.inactive;
        case r'Interest Sources': return PositionType.interestSources;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PositionTypeTypeTransformer] instance.
  static PositionTypeTypeTransformer? _instance;
}

