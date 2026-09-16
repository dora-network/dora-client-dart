//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PromoClaimState {
  /// Instantiate a new enum with the provided [value].
  const PromoClaimState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_FOUND = PromoClaimState._(r'NOT_FOUND');
  static const VALID = PromoClaimState._(r'VALID');
  static const CLAIMED = PromoClaimState._(r'CLAIMED');
  static const REVOKED = PromoClaimState._(r'REVOKED');
  static const EXPIRED = PromoClaimState._(r'EXPIRED');
  static const CAMPAIGN_ENDED = PromoClaimState._(r'CAMPAIGN_ENDED');
  static const CAMPAIGN_FULL = PromoClaimState._(r'CAMPAIGN_FULL');

  /// List of all possible values in this [enum][PromoClaimState].
  static const values = <PromoClaimState>[
    NOT_FOUND,
    VALID,
    CLAIMED,
    REVOKED,
    EXPIRED,
    CAMPAIGN_ENDED,
    CAMPAIGN_FULL,
  ];

  static PromoClaimState? fromJson(dynamic value) => PromoClaimStateTypeTransformer().decode(value);

  static List<PromoClaimState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoClaimState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoClaimState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PromoClaimState] to String,
/// and [decode] dynamic data back to [PromoClaimState].
class PromoClaimStateTypeTransformer {
  factory PromoClaimStateTypeTransformer() => _instance ??= const PromoClaimStateTypeTransformer._();

  const PromoClaimStateTypeTransformer._();

  String encode(PromoClaimState data) => data.value;

  /// Decodes a [dynamic value][data] to a PromoClaimState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PromoClaimState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_FOUND': return PromoClaimState.NOT_FOUND;
        case r'VALID': return PromoClaimState.VALID;
        case r'CLAIMED': return PromoClaimState.CLAIMED;
        case r'REVOKED': return PromoClaimState.REVOKED;
        case r'EXPIRED': return PromoClaimState.EXPIRED;
        case r'CAMPAIGN_ENDED': return PromoClaimState.CAMPAIGN_ENDED;
        case r'CAMPAIGN_FULL': return PromoClaimState.CAMPAIGN_FULL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PromoClaimStateTypeTransformer] instance.
  static PromoClaimStateTypeTransformer? _instance;
}

