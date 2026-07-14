//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DepositInstructionsResponse {
  /// Returns a new [DepositInstructionsResponse] instance.
  DepositInstructionsResponse({
    required this.userId,
    required this.ownerAddress,
    required this.quantity,
    this.chains = const [],
  });

  /// The authenticated user the instructions are issued for.
  String userId;

  /// The wallet address the instructions were issued for, echoed from the request.
  String ownerAddress;

  /// Human-decimal USDC deposit quantity, echoed from the request.
  String quantity;

  List<DepositInstructionForChain> chains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DepositInstructionsResponse &&
    other.userId == userId &&
    other.ownerAddress == ownerAddress &&
    other.quantity == quantity &&
    _deepEquality.equals(other.chains, chains);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (ownerAddress.hashCode) +
    (quantity.hashCode) +
    (chains.hashCode);

  @override
  String toString() => 'DepositInstructionsResponse[userId=$userId, ownerAddress=$ownerAddress, quantity=$quantity, chains=$chains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'owner_address'] = this.ownerAddress;
      json[r'quantity'] = this.quantity;
      json[r'chains'] = this.chains;
    return json;
  }

  /// Returns a new [DepositInstructionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DepositInstructionsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user_id'), 'Required key "DepositInstructionsResponse[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "DepositInstructionsResponse[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'owner_address'), 'Required key "DepositInstructionsResponse[owner_address]" is missing from JSON.');
        assert(json[r'owner_address'] != null, 'Required key "DepositInstructionsResponse[owner_address]" has a null value in JSON.');
        assert(json.containsKey(r'quantity'), 'Required key "DepositInstructionsResponse[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "DepositInstructionsResponse[quantity]" has a null value in JSON.');
        assert(json.containsKey(r'chains'), 'Required key "DepositInstructionsResponse[chains]" is missing from JSON.');
        assert(json[r'chains'] != null, 'Required key "DepositInstructionsResponse[chains]" has a null value in JSON.');
        return true;
      }());

      return DepositInstructionsResponse(
        userId: mapValueOfType<String>(json, r'user_id')!,
        ownerAddress: mapValueOfType<String>(json, r'owner_address')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
        chains: DepositInstructionForChain.listFromJson(json[r'chains']),
      );
    }
    return null;
  }

  static List<DepositInstructionsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DepositInstructionsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DepositInstructionsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DepositInstructionsResponse> mapFromJson(dynamic json) {
    final map = <String, DepositInstructionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DepositInstructionsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DepositInstructionsResponse-objects as value to a dart map
  static Map<String, List<DepositInstructionsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DepositInstructionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DepositInstructionsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'owner_address',
    'quantity',
    'chains',
  };
}

