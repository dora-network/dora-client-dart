//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TradingChallengeType {
  /// Instantiate a new enum with the provided [value].
  const TradingChallengeType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOURNAMENT = TradingChallengeType._(r'TOURNAMENT');
  static const CASH = TradingChallengeType._(r'CASH');

  /// List of all possible values in this [enum][TradingChallengeType].
  static const values = <TradingChallengeType>[
    TOURNAMENT,
    CASH,
  ];

  static TradingChallengeType? fromJson(dynamic value) => TradingChallengeTypeTypeTransformer().decode(value);

  static List<TradingChallengeType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TradingChallengeType] to String,
/// and [decode] dynamic data back to [TradingChallengeType].
class TradingChallengeTypeTypeTransformer {
  factory TradingChallengeTypeTypeTransformer() => _instance ??= const TradingChallengeTypeTypeTransformer._();

  const TradingChallengeTypeTypeTransformer._();

  String encode(TradingChallengeType data) => data.value;

  /// Decodes a [dynamic value][data] to a TradingChallengeType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TradingChallengeType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOURNAMENT': return TradingChallengeType.TOURNAMENT;
        case r'CASH': return TradingChallengeType.CASH;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TradingChallengeTypeTypeTransformer] instance.
  static TradingChallengeTypeTypeTransformer? _instance;
}

