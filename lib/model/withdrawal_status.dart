//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WithdrawalStatus {
  /// Instantiate a new enum with the provided [value].
  const WithdrawalStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = WithdrawalStatus._(r'PENDING');
  static const COMPLETED = WithdrawalStatus._(r'COMPLETED');
  static const CANCELED = WithdrawalStatus._(r'CANCELED');
  static const REJECTED = WithdrawalStatus._(r'REJECTED');

  /// List of all possible values in this [enum][WithdrawalStatus].
  static const values = <WithdrawalStatus>[
    PENDING,
    COMPLETED,
    CANCELED,
    REJECTED,
  ];

  static WithdrawalStatus? fromJson(dynamic value) => WithdrawalStatusTypeTransformer().decode(value);

  static List<WithdrawalStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WithdrawalStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WithdrawalStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WithdrawalStatus] to String,
/// and [decode] dynamic data back to [WithdrawalStatus].
class WithdrawalStatusTypeTransformer {
  factory WithdrawalStatusTypeTransformer() => _instance ??= const WithdrawalStatusTypeTransformer._();

  const WithdrawalStatusTypeTransformer._();

  String encode(WithdrawalStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a WithdrawalStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WithdrawalStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return WithdrawalStatus.PENDING;
        case r'COMPLETED': return WithdrawalStatus.COMPLETED;
        case r'CANCELED': return WithdrawalStatus.CANCELED;
        case r'REJECTED': return WithdrawalStatus.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WithdrawalStatusTypeTransformer] instance.
  static WithdrawalStatusTypeTransformer? _instance;
}

