//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DepositInstructionForChain {
  /// Returns a new [DepositInstructionForChain] instance.
  DepositInstructionForChain({
    required this.networkName,
    required this.chainId,
    required this.contractAddress,
    required this.usdcAddress,
    required this.approval,
    required this.deposit,
  });

  /// Human-readable network name, e.g. 'Ethereum Mainnet'.
  String networkName;

  /// EVM chain ID.
  String chainId;

  /// The DoraUSDCVault contract address for this chain, as a 0x-prefixed hex string.
  String contractAddress;

  /// The ERC-20 USDC token contract on this chain, as a 0x-prefixed hex string. It is the verifying contract of the permit; the spender granted by the permit is contract_address (the vault).
  String usdcAddress;

  PermitTypedData approval;

  DepositCall deposit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DepositInstructionForChain &&
    other.networkName == networkName &&
    other.chainId == chainId &&
    other.contractAddress == contractAddress &&
    other.usdcAddress == usdcAddress &&
    other.approval == approval &&
    other.deposit == deposit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (networkName.hashCode) +
    (chainId.hashCode) +
    (contractAddress.hashCode) +
    (usdcAddress.hashCode) +
    (approval.hashCode) +
    (deposit.hashCode);

  @override
  String toString() => 'DepositInstructionForChain[networkName=$networkName, chainId=$chainId, contractAddress=$contractAddress, usdcAddress=$usdcAddress, approval=$approval, deposit=$deposit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_name'] = this.networkName;
      json[r'chain_id'] = this.chainId;
      json[r'contract_address'] = this.contractAddress;
      json[r'usdc_address'] = this.usdcAddress;
      json[r'approval'] = this.approval;
      json[r'deposit'] = this.deposit;
    return json;
  }

  /// Returns a new [DepositInstructionForChain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DepositInstructionForChain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'network_name'), 'Required key "DepositInstructionForChain[network_name]" is missing from JSON.');
        assert(json[r'network_name'] != null, 'Required key "DepositInstructionForChain[network_name]" has a null value in JSON.');
        assert(json.containsKey(r'chain_id'), 'Required key "DepositInstructionForChain[chain_id]" is missing from JSON.');
        assert(json[r'chain_id'] != null, 'Required key "DepositInstructionForChain[chain_id]" has a null value in JSON.');
        assert(json.containsKey(r'contract_address'), 'Required key "DepositInstructionForChain[contract_address]" is missing from JSON.');
        assert(json[r'contract_address'] != null, 'Required key "DepositInstructionForChain[contract_address]" has a null value in JSON.');
        assert(json.containsKey(r'usdc_address'), 'Required key "DepositInstructionForChain[usdc_address]" is missing from JSON.');
        assert(json[r'usdc_address'] != null, 'Required key "DepositInstructionForChain[usdc_address]" has a null value in JSON.');
        assert(json.containsKey(r'approval'), 'Required key "DepositInstructionForChain[approval]" is missing from JSON.');
        assert(json[r'approval'] != null, 'Required key "DepositInstructionForChain[approval]" has a null value in JSON.');
        assert(json.containsKey(r'deposit'), 'Required key "DepositInstructionForChain[deposit]" is missing from JSON.');
        assert(json[r'deposit'] != null, 'Required key "DepositInstructionForChain[deposit]" has a null value in JSON.');
        return true;
      }());

      return DepositInstructionForChain(
        networkName: mapValueOfType<String>(json, r'network_name')!,
        chainId: mapValueOfType<String>(json, r'chain_id')!,
        contractAddress: mapValueOfType<String>(json, r'contract_address')!,
        usdcAddress: mapValueOfType<String>(json, r'usdc_address')!,
        approval: PermitTypedData.fromJson(json[r'approval'])!,
        deposit: DepositCall.fromJson(json[r'deposit'])!,
      );
    }
    return null;
  }

  static List<DepositInstructionForChain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DepositInstructionForChain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DepositInstructionForChain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DepositInstructionForChain> mapFromJson(dynamic json) {
    final map = <String, DepositInstructionForChain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DepositInstructionForChain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DepositInstructionForChain-objects as value to a dart map
  static Map<String, List<DepositInstructionForChain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DepositInstructionForChain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DepositInstructionForChain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'network_name',
    'chain_id',
    'contract_address',
    'usdc_address',
    'approval',
    'deposit',
  };
}

