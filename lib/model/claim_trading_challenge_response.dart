//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClaimTradingChallengeResponse {
  /// Returns a new [ClaimTradingChallengeResponse] instance.
  ClaimTradingChallengeResponse({
    required this.tradingChallengeId,
    required this.userId,
    required this.status,
  });

  String tradingChallengeId;

  String userId;

  String status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimTradingChallengeResponse &&
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
  String toString() => 'ClaimTradingChallengeResponse[tradingChallengeId=$tradingChallengeId, userId=$userId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'trading_challenge_id'] = this.tradingChallengeId;
      json[r'user_id'] = this.userId;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ClaimTradingChallengeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimTradingChallengeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'trading_challenge_id'), 'Required key "ClaimTradingChallengeResponse[trading_challenge_id]" is missing from JSON.');
        assert(json[r'trading_challenge_id'] != null, 'Required key "ClaimTradingChallengeResponse[trading_challenge_id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "ClaimTradingChallengeResponse[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "ClaimTradingChallengeResponse[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "ClaimTradingChallengeResponse[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "ClaimTradingChallengeResponse[status]" has a null value in JSON.');
        return true;
      }());

      return ClaimTradingChallengeResponse(
        tradingChallengeId: mapValueOfType<String>(json, r'trading_challenge_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        status: mapValueOfType<String>(json, r'status')!,
      );
    }
    return null;
  }

  static List<ClaimTradingChallengeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimTradingChallengeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimTradingChallengeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimTradingChallengeResponse> mapFromJson(dynamic json) {
    final map = <String, ClaimTradingChallengeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimTradingChallengeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimTradingChallengeResponse-objects as value to a dart map
  static Map<String, List<ClaimTradingChallengeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimTradingChallengeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimTradingChallengeResponse.listFromJson(entry.value, growable: growable,);
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

