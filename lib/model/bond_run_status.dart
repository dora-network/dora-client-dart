//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BondRunStatus {
  /// Instantiate a new enum with the provided [value].
  const BondRunStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ON_THE_RUN = BondRunStatus._(r'ON_THE_RUN');
  static const OFF_THE_RUN = BondRunStatus._(r'OFF_THE_RUN');

  /// List of all possible values in this [enum][BondRunStatus].
  static const values = <BondRunStatus>[
    ON_THE_RUN,
    OFF_THE_RUN,
  ];

  static BondRunStatus? fromJson(dynamic value) => BondRunStatusTypeTransformer().decode(value);

  static List<BondRunStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BondRunStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BondRunStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BondRunStatus] to String,
/// and [decode] dynamic data back to [BondRunStatus].
class BondRunStatusTypeTransformer {
  factory BondRunStatusTypeTransformer() => _instance ??= const BondRunStatusTypeTransformer._();

  const BondRunStatusTypeTransformer._();

  String encode(BondRunStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a BondRunStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BondRunStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ON_THE_RUN': return BondRunStatus.ON_THE_RUN;
        case r'OFF_THE_RUN': return BondRunStatus.OFF_THE_RUN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BondRunStatusTypeTransformer] instance.
  static BondRunStatusTypeTransformer? _instance;
}

