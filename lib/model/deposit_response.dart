//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DepositResponse {
  /// Returns a new [DepositResponse] instance.
  DepositResponse({
    required this.networkChainId,
    required this.networkName,
    required this.chainId,
    required this.txHash,
    required this.logIndex,
    required this.blockNumber,
    required this.blockTime,
    required this.contractAddress,
    required this.depositorAddress,
    required this.userId,
    required this.quantity,
    this.clientReferenceId,
    required this.status,
    this.transactionId,
    required this.observedAt,
  });

  /// Internal numeric identifier of the chain.
  int networkChainId;

  /// Human-readable network name.
  String networkName;

  /// EVM chain ID.
  String chainId;

  /// Transaction hash as a 0x-prefixed hex string.
  String txHash;

  /// Index of the log within the transaction.
  int logIndex;

  int blockNumber;

  DateTime blockTime;

  /// Vault contract address as a 0x-prefixed hex string.
  String contractAddress;

  /// Address that made the deposit, as a 0x-prefixed hex string.
  String depositorAddress;

  String userId;

  /// Human-decimal USDC value (base units divided by 10^6).
  String quantity;

  /// Optional client-supplied reference, as a 0x-prefixed hex string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientReferenceId;

  Web3EventStatus status;

  /// Internal transaction ID, present once the deposit has been credited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  DateTime observedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DepositResponse &&
    other.networkChainId == networkChainId &&
    other.networkName == networkName &&
    other.chainId == chainId &&
    other.txHash == txHash &&
    other.logIndex == logIndex &&
    other.blockNumber == blockNumber &&
    other.blockTime == blockTime &&
    other.contractAddress == contractAddress &&
    other.depositorAddress == depositorAddress &&
    other.userId == userId &&
    other.quantity == quantity &&
    other.clientReferenceId == clientReferenceId &&
    other.status == status &&
    other.transactionId == transactionId &&
    other.observedAt == observedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (networkChainId.hashCode) +
    (networkName.hashCode) +
    (chainId.hashCode) +
    (txHash.hashCode) +
    (logIndex.hashCode) +
    (blockNumber.hashCode) +
    (blockTime.hashCode) +
    (contractAddress.hashCode) +
    (depositorAddress.hashCode) +
    (userId.hashCode) +
    (quantity.hashCode) +
    (clientReferenceId == null ? 0 : clientReferenceId!.hashCode) +
    (status.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (observedAt.hashCode);

  @override
  String toString() => 'DepositResponse[networkChainId=$networkChainId, networkName=$networkName, chainId=$chainId, txHash=$txHash, logIndex=$logIndex, blockNumber=$blockNumber, blockTime=$blockTime, contractAddress=$contractAddress, depositorAddress=$depositorAddress, userId=$userId, quantity=$quantity, clientReferenceId=$clientReferenceId, status=$status, transactionId=$transactionId, observedAt=$observedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_chain_id'] = this.networkChainId;
      json[r'network_name'] = this.networkName;
      json[r'chain_id'] = this.chainId;
      json[r'tx_hash'] = this.txHash;
      json[r'log_index'] = this.logIndex;
      json[r'block_number'] = this.blockNumber;
      json[r'block_time'] = this.blockTime.toUtc().toIso8601String();
      json[r'contract_address'] = this.contractAddress;
      json[r'depositor_address'] = this.depositorAddress;
      json[r'user_id'] = this.userId;
      json[r'quantity'] = this.quantity;
    if (this.clientReferenceId != null) {
      json[r'client_reference_id'] = this.clientReferenceId;
    } else {
      json[r'client_reference_id'] = null;
    }
      json[r'status'] = this.status;
    if (this.transactionId != null) {
      json[r'transaction_id'] = this.transactionId;
    } else {
      json[r'transaction_id'] = null;
    }
      json[r'observed_at'] = this.observedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DepositResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DepositResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'network_chain_id'), 'Required key "DepositResponse[network_chain_id]" is missing from JSON.');
        assert(json[r'network_chain_id'] != null, 'Required key "DepositResponse[network_chain_id]" has a null value in JSON.');
        assert(json.containsKey(r'network_name'), 'Required key "DepositResponse[network_name]" is missing from JSON.');
        assert(json[r'network_name'] != null, 'Required key "DepositResponse[network_name]" has a null value in JSON.');
        assert(json.containsKey(r'chain_id'), 'Required key "DepositResponse[chain_id]" is missing from JSON.');
        assert(json[r'chain_id'] != null, 'Required key "DepositResponse[chain_id]" has a null value in JSON.');
        assert(json.containsKey(r'tx_hash'), 'Required key "DepositResponse[tx_hash]" is missing from JSON.');
        assert(json[r'tx_hash'] != null, 'Required key "DepositResponse[tx_hash]" has a null value in JSON.');
        assert(json.containsKey(r'log_index'), 'Required key "DepositResponse[log_index]" is missing from JSON.');
        assert(json[r'log_index'] != null, 'Required key "DepositResponse[log_index]" has a null value in JSON.');
        assert(json.containsKey(r'block_number'), 'Required key "DepositResponse[block_number]" is missing from JSON.');
        assert(json[r'block_number'] != null, 'Required key "DepositResponse[block_number]" has a null value in JSON.');
        assert(json.containsKey(r'block_time'), 'Required key "DepositResponse[block_time]" is missing from JSON.');
        assert(json[r'block_time'] != null, 'Required key "DepositResponse[block_time]" has a null value in JSON.');
        assert(json.containsKey(r'contract_address'), 'Required key "DepositResponse[contract_address]" is missing from JSON.');
        assert(json[r'contract_address'] != null, 'Required key "DepositResponse[contract_address]" has a null value in JSON.');
        assert(json.containsKey(r'depositor_address'), 'Required key "DepositResponse[depositor_address]" is missing from JSON.');
        assert(json[r'depositor_address'] != null, 'Required key "DepositResponse[depositor_address]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "DepositResponse[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "DepositResponse[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'quantity'), 'Required key "DepositResponse[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "DepositResponse[quantity]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "DepositResponse[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "DepositResponse[status]" has a null value in JSON.');
        assert(json.containsKey(r'observed_at'), 'Required key "DepositResponse[observed_at]" is missing from JSON.');
        assert(json[r'observed_at'] != null, 'Required key "DepositResponse[observed_at]" has a null value in JSON.');
        return true;
      }());

      return DepositResponse(
        networkChainId: mapValueOfType<int>(json, r'network_chain_id')!,
        networkName: mapValueOfType<String>(json, r'network_name')!,
        chainId: mapValueOfType<String>(json, r'chain_id')!,
        txHash: mapValueOfType<String>(json, r'tx_hash')!,
        logIndex: mapValueOfType<int>(json, r'log_index')!,
        blockNumber: mapValueOfType<int>(json, r'block_number')!,
        blockTime: mapDateTime(json, r'block_time', r'')!,
        contractAddress: mapValueOfType<String>(json, r'contract_address')!,
        depositorAddress: mapValueOfType<String>(json, r'depositor_address')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
        clientReferenceId: mapValueOfType<String>(json, r'client_reference_id'),
        status: Web3EventStatus.fromJson(json[r'status'])!,
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
        observedAt: mapDateTime(json, r'observed_at', r'')!,
      );
    }
    return null;
  }

  static List<DepositResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DepositResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DepositResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DepositResponse> mapFromJson(dynamic json) {
    final map = <String, DepositResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DepositResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DepositResponse-objects as value to a dart map
  static Map<String, List<DepositResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DepositResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DepositResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'network_chain_id',
    'network_name',
    'chain_id',
    'tx_hash',
    'log_index',
    'block_number',
    'block_time',
    'contract_address',
    'depositor_address',
    'user_id',
    'quantity',
    'status',
    'observed_at',
  };
}

