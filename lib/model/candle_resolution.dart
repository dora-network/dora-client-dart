//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CandleResolution {
  /// Instantiate a new enum with the provided [value].
  const CandleResolution._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n1m = CandleResolution._(r'1m');
  static const n5m = CandleResolution._(r'5m');
  static const n15m = CandleResolution._(r'15m');
  static const n1h = CandleResolution._(r'1h');
  static const n4h = CandleResolution._(r'4h');
  static const n1d = CandleResolution._(r'1d');

  /// List of all possible values in this [enum][CandleResolution].
  static const values = <CandleResolution>[
    n1m,
    n5m,
    n15m,
    n1h,
    n4h,
    n1d,
  ];

  static CandleResolution? fromJson(dynamic value) => CandleResolutionTypeTransformer().decode(value);

  static List<CandleResolution> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CandleResolution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CandleResolution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CandleResolution] to String,
/// and [decode] dynamic data back to [CandleResolution].
class CandleResolutionTypeTransformer {
  factory CandleResolutionTypeTransformer() => _instance ??= const CandleResolutionTypeTransformer._();

  const CandleResolutionTypeTransformer._();

  String encode(CandleResolution data) => data.value;

  /// Decodes a [dynamic value][data] to a CandleResolution.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandleResolution? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'1m': return CandleResolution.n1m;
        case r'5m': return CandleResolution.n5m;
        case r'15m': return CandleResolution.n15m;
        case r'1h': return CandleResolution.n1h;
        case r'4h': return CandleResolution.n4h;
        case r'1d': return CandleResolution.n1d;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandleResolutionTypeTransformer] instance.
  static CandleResolutionTypeTransformer? _instance;
}

