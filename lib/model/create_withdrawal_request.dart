//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateWithdrawalRequest {
  /// Returns a new [CreateWithdrawalRequest] instance.
  CreateWithdrawalRequest({
    required this.withdrawalId,
    required this.toAddress,
    required this.quantity,
  });

  /// Client-supplied idempotency key (also the on-chain correlation key). Repeating a request with the same withdrawal_id has no additional effect.
  String withdrawalId;

  /// Destination wallet address as a 0x-prefixed hex string. Must not be the zero address.
  String toAddress;

  /// Human-decimal USDC quantity to withdraw. Must be positive and no finer than USDC's 6 on-chain decimals.
  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWithdrawalRequest &&
    other.withdrawalId == withdrawalId &&
    other.toAddress == toAddress &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (withdrawalId.hashCode) +
    (toAddress.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'CreateWithdrawalRequest[withdrawalId=$withdrawalId, toAddress=$toAddress, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'withdrawal_id'] = this.withdrawalId;
      json[r'to_address'] = this.toAddress;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [CreateWithdrawalRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWithdrawalRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'withdrawal_id'), 'Required key "CreateWithdrawalRequest[withdrawal_id]" is missing from JSON.');
        assert(json[r'withdrawal_id'] != null, 'Required key "CreateWithdrawalRequest[withdrawal_id]" has a null value in JSON.');
        assert(json.containsKey(r'to_address'), 'Required key "CreateWithdrawalRequest[to_address]" is missing from JSON.');
        assert(json[r'to_address'] != null, 'Required key "CreateWithdrawalRequest[to_address]" has a null value in JSON.');
        assert(json.containsKey(r'quantity'), 'Required key "CreateWithdrawalRequest[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "CreateWithdrawalRequest[quantity]" has a null value in JSON.');
        return true;
      }());

      return CreateWithdrawalRequest(
        withdrawalId: mapValueOfType<String>(json, r'withdrawal_id')!,
        toAddress: mapValueOfType<String>(json, r'to_address')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<CreateWithdrawalRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWithdrawalRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWithdrawalRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWithdrawalRequest> mapFromJson(dynamic json) {
    final map = <String, CreateWithdrawalRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWithdrawalRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWithdrawalRequest-objects as value to a dart map
  static Map<String, List<CreateWithdrawalRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateWithdrawalRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWithdrawalRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'withdrawal_id',
    'to_address',
    'quantity',
  };
}

