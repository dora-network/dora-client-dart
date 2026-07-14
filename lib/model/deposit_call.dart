//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DepositCall {
  /// Returns a new [DepositCall] instance.
  DepositCall({
    required this.to,
    required this.chainId,
    required this.value,
    required this.functionSignature,
    required this.selector,
    required this.args,
  });

  /// The vault contract address, as a 0x-prefixed hex string.
  String to;

  /// EVM chain ID, as a JSON number.
  int chainId;

  /// Native currency value to send with the transaction. Always '0'.
  String value;

  /// Canonical Solidity signature of the vault's permit-aware deposit function: deposit(uint256,bytes16,bytes32,uint256,uint8,bytes32,bytes32).
  String functionSignature;

  /// The 4-byte ABI call selector of function_signature, as a 0x-prefixed hex string.
  String selector;

  DepositArgs args;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DepositCall &&
    other.to == to &&
    other.chainId == chainId &&
    other.value == value &&
    other.functionSignature == functionSignature &&
    other.selector == selector &&
    other.args == args;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (chainId.hashCode) +
    (value.hashCode) +
    (functionSignature.hashCode) +
    (selector.hashCode) +
    (args.hashCode);

  @override
  String toString() => 'DepositCall[to=$to, chainId=$chainId, value=$value, functionSignature=$functionSignature, selector=$selector, args=$args]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
      json[r'chain_id'] = this.chainId;
      json[r'value'] = this.value;
      json[r'function_signature'] = this.functionSignature;
      json[r'selector'] = this.selector;
      json[r'args'] = this.args;
    return json;
  }

  /// Returns a new [DepositCall] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DepositCall? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'to'), 'Required key "DepositCall[to]" is missing from JSON.');
        assert(json[r'to'] != null, 'Required key "DepositCall[to]" has a null value in JSON.');
        assert(json.containsKey(r'chain_id'), 'Required key "DepositCall[chain_id]" is missing from JSON.');
        assert(json[r'chain_id'] != null, 'Required key "DepositCall[chain_id]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "DepositCall[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "DepositCall[value]" has a null value in JSON.');
        assert(json.containsKey(r'function_signature'), 'Required key "DepositCall[function_signature]" is missing from JSON.');
        assert(json[r'function_signature'] != null, 'Required key "DepositCall[function_signature]" has a null value in JSON.');
        assert(json.containsKey(r'selector'), 'Required key "DepositCall[selector]" is missing from JSON.');
        assert(json[r'selector'] != null, 'Required key "DepositCall[selector]" has a null value in JSON.');
        assert(json.containsKey(r'args'), 'Required key "DepositCall[args]" is missing from JSON.');
        assert(json[r'args'] != null, 'Required key "DepositCall[args]" has a null value in JSON.');
        return true;
      }());

      return DepositCall(
        to: mapValueOfType<String>(json, r'to')!,
        chainId: mapValueOfType<int>(json, r'chain_id')!,
        value: mapValueOfType<String>(json, r'value')!,
        functionSignature: mapValueOfType<String>(json, r'function_signature')!,
        selector: mapValueOfType<String>(json, r'selector')!,
        args: DepositArgs.fromJson(json[r'args'])!,
      );
    }
    return null;
  }

  static List<DepositCall> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DepositCall>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DepositCall.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DepositCall> mapFromJson(dynamic json) {
    final map = <String, DepositCall>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DepositCall.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DepositCall-objects as value to a dart map
  static Map<String, List<DepositCall>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DepositCall>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DepositCall.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
    'chain_id',
    'value',
    'function_signature',
    'selector',
    'args',
  };
}

