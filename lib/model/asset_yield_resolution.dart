//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssetYieldResolution {
  /// Instantiate a new enum with the provided [value].
  const AssetYieldResolution._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n1h = AssetYieldResolution._(r'1h');
  static const n1d = AssetYieldResolution._(r'1d');
  static const n7d = AssetYieldResolution._(r'7d');
  static const n30d = AssetYieldResolution._(r'30d');

  /// List of all possible values in this [enum][AssetYieldResolution].
  static const values = <AssetYieldResolution>[
    n1h,
    n1d,
    n7d,
    n30d,
  ];

  static AssetYieldResolution? fromJson(dynamic value) => AssetYieldResolutionTypeTransformer().decode(value);

  static List<AssetYieldResolution> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetYieldResolution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetYieldResolution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssetYieldResolution] to String,
/// and [decode] dynamic data back to [AssetYieldResolution].
class AssetYieldResolutionTypeTransformer {
  factory AssetYieldResolutionTypeTransformer() => _instance ??= const AssetYieldResolutionTypeTransformer._();

  const AssetYieldResolutionTypeTransformer._();

  String encode(AssetYieldResolution data) => data.value;

  /// Decodes a [dynamic value][data] to a AssetYieldResolution.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssetYieldResolution? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'1h': return AssetYieldResolution.n1h;
        case r'1d': return AssetYieldResolution.n1d;
        case r'7d': return AssetYieldResolution.n7d;
        case r'30d': return AssetYieldResolution.n30d;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssetYieldResolutionTypeTransformer] instance.
  static AssetYieldResolutionTypeTransformer? _instance;
}

