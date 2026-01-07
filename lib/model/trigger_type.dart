//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TriggerType {
  /// Instantiate a new enum with the provided [value].
  const TriggerType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STOP_LOSS = TriggerType._(r'STOP_LOSS');
  static const TAKE_PROFIT = TriggerType._(r'TAKE_PROFIT');

  /// List of all possible values in this [enum][TriggerType].
  static const values = <TriggerType>[
    STOP_LOSS,
    TAKE_PROFIT,
  ];

  static TriggerType? fromJson(dynamic value) => TriggerTypeTypeTransformer().decode(value);

  static List<TriggerType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TriggerType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TriggerType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TriggerType] to String,
/// and [decode] dynamic data back to [TriggerType].
class TriggerTypeTypeTransformer {
  factory TriggerTypeTypeTransformer() => _instance ??= const TriggerTypeTypeTransformer._();

  const TriggerTypeTypeTransformer._();

  String encode(TriggerType data) => data.value;

  /// Decodes a [dynamic value][data] to a TriggerType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TriggerType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STOP_LOSS': return TriggerType.STOP_LOSS;
        case r'TAKE_PROFIT': return TriggerType.TAKE_PROFIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TriggerTypeTypeTransformer] instance.
  static TriggerTypeTypeTransformer? _instance;
}

