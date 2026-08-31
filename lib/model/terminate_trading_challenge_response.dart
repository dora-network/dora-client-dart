//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TerminateTradingChallengeResponse {
  /// Returns a new [TerminateTradingChallengeResponse] instance.
  TerminateTradingChallengeResponse({
    required this.tradingChallengeId,
    required this.userId,
    required this.status,
  });

  String tradingChallengeId;

  String userId;

  TerminateTradingChallengeResponseStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TerminateTradingChallengeResponse &&
    other.tradingChallengeId == tradingChallengeId &&
    other.userId == userId &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tradingChallengeId.hashCode) +
    (userId.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'TerminateTradingChallengeResponse[tradingChallengeId=$tradingChallengeId, userId=$userId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'trading_challenge_id'] = this.tradingChallengeId;
      json[r'user_id'] = this.userId;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [TerminateTradingChallengeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TerminateTradingChallengeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'trading_challenge_id'), 'Required key "TerminateTradingChallengeResponse[trading_challenge_id]" is missing from JSON.');
        assert(json[r'trading_challenge_id'] != null, 'Required key "TerminateTradingChallengeResponse[trading_challenge_id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "TerminateTradingChallengeResponse[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "TerminateTradingChallengeResponse[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "TerminateTradingChallengeResponse[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "TerminateTradingChallengeResponse[status]" has a null value in JSON.');
        return true;
      }());

      return TerminateTradingChallengeResponse(
        tradingChallengeId: mapValueOfType<String>(json, r'trading_challenge_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        status: TerminateTradingChallengeResponseStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<TerminateTradingChallengeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TerminateTradingChallengeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TerminateTradingChallengeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TerminateTradingChallengeResponse> mapFromJson(dynamic json) {
    final map = <String, TerminateTradingChallengeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TerminateTradingChallengeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TerminateTradingChallengeResponse-objects as value to a dart map
  static Map<String, List<TerminateTradingChallengeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TerminateTradingChallengeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TerminateTradingChallengeResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'trading_challenge_id',
    'user_id',
    'status',
  };
}


class TerminateTradingChallengeResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TerminateTradingChallengeResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TERMINATED = TerminateTradingChallengeResponseStatusEnum._(r'TERMINATED');

  /// List of all possible values in this [enum][TerminateTradingChallengeResponseStatusEnum].
  static const values = <TerminateTradingChallengeResponseStatusEnum>[
    TERMINATED,
  ];

  static TerminateTradingChallengeResponseStatusEnum? fromJson(dynamic value) => TerminateTradingChallengeResponseStatusEnumTypeTransformer().decode(value);

  static List<TerminateTradingChallengeResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TerminateTradingChallengeResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TerminateTradingChallengeResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TerminateTradingChallengeResponseStatusEnum] to String,
/// and [decode] dynamic data back to [TerminateTradingChallengeResponseStatusEnum].
class TerminateTradingChallengeResponseStatusEnumTypeTransformer {
  factory TerminateTradingChallengeResponseStatusEnumTypeTransformer() => _instance ??= const TerminateTradingChallengeResponseStatusEnumTypeTransformer._();

  const TerminateTradingChallengeResponseStatusEnumTypeTransformer._();

  String encode(TerminateTradingChallengeResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TerminateTradingChallengeResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TerminateTradingChallengeResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TERMINATED': return TerminateTradingChallengeResponseStatusEnum.TERMINATED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TerminateTradingChallengeResponseStatusEnumTypeTransformer] instance.
  static TerminateTradingChallengeResponseStatusEnumTypeTransformer? _instance;
}


