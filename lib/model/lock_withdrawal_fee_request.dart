//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LockWithdrawalFeeRequest {
  /// Returns a new [LockWithdrawalFeeRequest] instance.
  LockWithdrawalFeeRequest({
    required this.quoteToken,
  });

  /// The signed quote token returned by GET /v1/web3/withdrawals/fee-quote. It must still be within its TTL and must have been issued for this withdrawal's destination, quantity, and chain.
  String quoteToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LockWithdrawalFeeRequest &&
    other.quoteToken == quoteToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quoteToken.hashCode);

  @override
  String toString() => 'LockWithdrawalFeeRequest[quoteToken=$quoteToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quote_token'] = this.quoteToken;
    return json;
  }

  /// Returns a new [LockWithdrawalFeeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LockWithdrawalFeeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'quote_token'), 'Required key "LockWithdrawalFeeRequest[quote_token]" is missing from JSON.');
        assert(json[r'quote_token'] != null, 'Required key "LockWithdrawalFeeRequest[quote_token]" has a null value in JSON.');
        return true;
      }());

      return LockWithdrawalFeeRequest(
        quoteToken: mapValueOfType<String>(json, r'quote_token')!,
      );
    }
    return null;
  }

  static List<LockWithdrawalFeeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockWithdrawalFeeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockWithdrawalFeeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LockWithdrawalFeeRequest> mapFromJson(dynamic json) {
    final map = <String, LockWithdrawalFeeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LockWithdrawalFeeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LockWithdrawalFeeRequest-objects as value to a dart map
  static Map<String, List<LockWithdrawalFeeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LockWithdrawalFeeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LockWithdrawalFeeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quote_token',
  };
}

