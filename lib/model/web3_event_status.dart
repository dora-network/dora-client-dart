//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Processing status of an observed on-chain event.
class Web3EventStatus {
  /// Instantiate a new enum with the provided [value].
  const Web3EventStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = Web3EventStatus._(r'PENDING');
  static const FINALIZED = Web3EventStatus._(r'FINALIZED');
  static const ORPHANED = Web3EventStatus._(r'ORPHANED');

  /// List of all possible values in this [enum][Web3EventStatus].
  static const values = <Web3EventStatus>[
    PENDING,
    FINALIZED,
    ORPHANED,
  ];

  static Web3EventStatus? fromJson(dynamic value) => Web3EventStatusTypeTransformer().decode(value);

  static List<Web3EventStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Web3EventStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Web3EventStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Web3EventStatus] to String,
/// and [decode] dynamic data back to [Web3EventStatus].
class Web3EventStatusTypeTransformer {
  factory Web3EventStatusTypeTransformer() => _instance ??= const Web3EventStatusTypeTransformer._();

  const Web3EventStatusTypeTransformer._();

  String encode(Web3EventStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a Web3EventStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Web3EventStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return Web3EventStatus.PENDING;
        case r'FINALIZED': return Web3EventStatus.FINALIZED;
        case r'ORPHANED': return Web3EventStatus.ORPHANED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Web3EventStatusTypeTransformer] instance.
  static Web3EventStatusTypeTransformer? _instance;
}

