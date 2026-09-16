//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PromoSourceType {
  /// Instantiate a new enum with the provided [value].
  const PromoSourceType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const KOL = PromoSourceType._(r'KOL');
  static const PARTNER = PromoSourceType._(r'PARTNER');
  static const EVENT = PromoSourceType._(r'EVENT');
  static const DORA = PromoSourceType._(r'DORA');

  /// List of all possible values in this [enum][PromoSourceType].
  static const values = <PromoSourceType>[
    KOL,
    PARTNER,
    EVENT,
    DORA,
  ];

  static PromoSourceType? fromJson(dynamic value) => PromoSourceTypeTypeTransformer().decode(value);

  static List<PromoSourceType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoSourceType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoSourceType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PromoSourceType] to String,
/// and [decode] dynamic data back to [PromoSourceType].
class PromoSourceTypeTypeTransformer {
  factory PromoSourceTypeTypeTransformer() => _instance ??= const PromoSourceTypeTypeTransformer._();

  const PromoSourceTypeTypeTransformer._();

  String encode(PromoSourceType data) => data.value;

  /// Decodes a [dynamic value][data] to a PromoSourceType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PromoSourceType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'KOL': return PromoSourceType.KOL;
        case r'PARTNER': return PromoSourceType.PARTNER;
        case r'EVENT': return PromoSourceType.EVENT;
        case r'DORA': return PromoSourceType.DORA;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PromoSourceTypeTypeTransformer] instance.
  static PromoSourceTypeTypeTransformer? _instance;
}

