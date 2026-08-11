//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RemoveTradingChallengeUsersRequest {
  /// Returns a new [RemoveTradingChallengeUsersRequest] instance.
  RemoveTradingChallengeUsersRequest({
    required this.tradingChallengeId,
    this.users = const [],
  });

  String tradingChallengeId;

  List<String> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoveTradingChallengeUsersRequest &&
    other.tradingChallengeId == tradingChallengeId &&
    _deepEquality.equals(other.users, users);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tradingChallengeId.hashCode) +
    (users.hashCode);

  @override
  String toString() => 'RemoveTradingChallengeUsersRequest[tradingChallengeId=$tradingChallengeId, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'trading_challenge_id'] = this.tradingChallengeId;
      json[r'users'] = this.users;
    return json;
  }

  /// Returns a new [RemoveTradingChallengeUsersRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoveTradingChallengeUsersRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'trading_challenge_id'), 'Required key "RemoveTradingChallengeUsersRequest[trading_challenge_id]" is missing from JSON.');
        assert(json[r'trading_challenge_id'] != null, 'Required key "RemoveTradingChallengeUsersRequest[trading_challenge_id]" has a null value in JSON.');
        assert(json.containsKey(r'users'), 'Required key "RemoveTradingChallengeUsersRequest[users]" is missing from JSON.');
        assert(json[r'users'] != null, 'Required key "RemoveTradingChallengeUsersRequest[users]" has a null value in JSON.');
        return true;
      }());

      return RemoveTradingChallengeUsersRequest(
        tradingChallengeId: mapValueOfType<String>(json, r'trading_challenge_id')!,
        users: json[r'users'] is Iterable
            ? (json[r'users'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RemoveTradingChallengeUsersRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RemoveTradingChallengeUsersRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemoveTradingChallengeUsersRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemoveTradingChallengeUsersRequest> mapFromJson(dynamic json) {
    final map = <String, RemoveTradingChallengeUsersRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoveTradingChallengeUsersRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemoveTradingChallengeUsersRequest-objects as value to a dart map
  static Map<String, List<RemoveTradingChallengeUsersRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RemoveTradingChallengeUsersRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RemoveTradingChallengeUsersRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'trading_challenge_id',
    'users',
  };
}

