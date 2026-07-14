//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DepositArgs {
  /// Returns a new [DepositArgs] instance.
  DepositArgs({
    required this.quantity,
    required this.userId,
    required this.clientReferenceId,
    required this.deadline,
  });

  /// Deposit quantity in USDC base units (10^-6 USDC), as a decimal string. Matches the permit's value.
  String quantity;

  /// The caller's user ID as 16 bytes, 0x-prefixed hex. Stored on-chain with the deposit and mapped back to the user by the indexer.
  String userId;

  /// The bytes32 client reference as a 0x-prefixed hex string. All zero bytes when not supplied.
  String clientReferenceId;

  /// Unix timestamp (seconds), as a decimal string. Matches the permit's deadline exactly.
  String deadline;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DepositArgs &&
    other.quantity == quantity &&
    other.userId == userId &&
    other.clientReferenceId == clientReferenceId &&
    other.deadline == deadline;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quantity.hashCode) +
    (userId.hashCode) +
    (clientReferenceId.hashCode) +
    (deadline.hashCode);

  @override
  String toString() => 'DepositArgs[quantity=$quantity, userId=$userId, clientReferenceId=$clientReferenceId, deadline=$deadline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quantity'] = this.quantity;
      json[r'user_id'] = this.userId;
      json[r'client_reference_id'] = this.clientReferenceId;
      json[r'deadline'] = this.deadline;
    return json;
  }

  /// Returns a new [DepositArgs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DepositArgs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'quantity'), 'Required key "DepositArgs[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "DepositArgs[quantity]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "DepositArgs[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "DepositArgs[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'client_reference_id'), 'Required key "DepositArgs[client_reference_id]" is missing from JSON.');
        assert(json[r'client_reference_id'] != null, 'Required key "DepositArgs[client_reference_id]" has a null value in JSON.');
        assert(json.containsKey(r'deadline'), 'Required key "DepositArgs[deadline]" is missing from JSON.');
        assert(json[r'deadline'] != null, 'Required key "DepositArgs[deadline]" has a null value in JSON.');
        return true;
      }());

      return DepositArgs(
        quantity: mapValueOfType<String>(json, r'quantity')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        clientReferenceId: mapValueOfType<String>(json, r'client_reference_id')!,
        deadline: mapValueOfType<String>(json, r'deadline')!,
      );
    }
    return null;
  }

  static List<DepositArgs> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DepositArgs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DepositArgs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DepositArgs> mapFromJson(dynamic json) {
    final map = <String, DepositArgs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DepositArgs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DepositArgs-objects as value to a dart map
  static Map<String, List<DepositArgs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DepositArgs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DepositArgs.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quantity',
    'user_id',
    'client_reference_id',
    'deadline',
  };
}

