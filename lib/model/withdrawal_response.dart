//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WithdrawalResponse {
  /// Returns a new [WithdrawalResponse] instance.
  WithdrawalResponse({
    this.withdrawalId,
    this.networkChainId,
    this.networkName,
    this.chainId,
    this.userId,
    this.accountId,
    this.toAddress,
    this.quantity,
    this.fee,
    this.status,
    this.txHash,
    this.failureReason,
    this.approvedBy,
    this.approvedAt,
    this.settlementTransactionId,
    this.createdAt,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? withdrawalId;

  /// Internal numeric identifier of the chain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? networkChainId;

  /// Human-readable network name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? networkName;

  /// EVM chain ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// Destination wallet address as a 0x-prefixed hex string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? toAddress;

  /// Human-decimal USDC quantity to withdraw (base units divided by 10^6).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? quantity;

  /// Human-decimal USDC network fee (base units divided by 10^6). 0 until the requester locks a quoted fee as part of approval.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Web3WithdrawalStatus? status;

  /// Broadcast withdraw() transaction hash as a 0x-prefixed hex string. Present from `BROADCAST` onward.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? txHash;

  /// Reason the withdrawal was rejected or failed. Present for REJECTED/FAILED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureReason;

  /// Admin who approved the withdrawal. Present once approved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? approvedBy;

  /// When the withdrawal was approved. Present once approved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? approvedAt;

  /// Ledger settlement transaction. Present once confirmed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? settlementTransactionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WithdrawalResponse &&
    other.withdrawalId == withdrawalId &&
    other.networkChainId == networkChainId &&
    other.networkName == networkName &&
    other.chainId == chainId &&
    other.userId == userId &&
    other.accountId == accountId &&
    other.toAddress == toAddress &&
    other.quantity == quantity &&
    other.fee == fee &&
    other.status == status &&
    other.txHash == txHash &&
    other.failureReason == failureReason &&
    other.approvedBy == approvedBy &&
    other.approvedAt == approvedAt &&
    other.settlementTransactionId == settlementTransactionId &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (withdrawalId == null ? 0 : withdrawalId!.hashCode) +
    (networkChainId == null ? 0 : networkChainId!.hashCode) +
    (networkName == null ? 0 : networkName!.hashCode) +
    (chainId == null ? 0 : chainId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (toAddress == null ? 0 : toAddress!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (fee == null ? 0 : fee!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (failureReason == null ? 0 : failureReason!.hashCode) +
    (approvedBy == null ? 0 : approvedBy!.hashCode) +
    (approvedAt == null ? 0 : approvedAt!.hashCode) +
    (settlementTransactionId == null ? 0 : settlementTransactionId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'WithdrawalResponse[withdrawalId=$withdrawalId, networkChainId=$networkChainId, networkName=$networkName, chainId=$chainId, userId=$userId, accountId=$accountId, toAddress=$toAddress, quantity=$quantity, fee=$fee, status=$status, txHash=$txHash, failureReason=$failureReason, approvedBy=$approvedBy, approvedAt=$approvedAt, settlementTransactionId=$settlementTransactionId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.withdrawalId != null) {
      json[r'withdrawal_id'] = this.withdrawalId;
    } else {
      json[r'withdrawal_id'] = null;
    }
    if (this.networkChainId != null) {
      json[r'network_chain_id'] = this.networkChainId;
    } else {
      json[r'network_chain_id'] = null;
    }
    if (this.networkName != null) {
      json[r'network_name'] = this.networkName;
    } else {
      json[r'network_name'] = null;
    }
    if (this.chainId != null) {
      json[r'chain_id'] = this.chainId;
    } else {
      json[r'chain_id'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
    if (this.toAddress != null) {
      json[r'to_address'] = this.toAddress;
    } else {
      json[r'to_address'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.fee != null) {
      json[r'fee'] = this.fee;
    } else {
      json[r'fee'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.txHash != null) {
      json[r'tx_hash'] = this.txHash;
    } else {
      json[r'tx_hash'] = null;
    }
    if (this.failureReason != null) {
      json[r'failure_reason'] = this.failureReason;
    } else {
      json[r'failure_reason'] = null;
    }
    if (this.approvedBy != null) {
      json[r'approved_by'] = this.approvedBy;
    } else {
      json[r'approved_by'] = null;
    }
    if (this.approvedAt != null) {
      json[r'approved_at'] = this.approvedAt!.toUtc().toIso8601String();
    } else {
      json[r'approved_at'] = null;
    }
    if (this.settlementTransactionId != null) {
      json[r'settlement_transaction_id'] = this.settlementTransactionId;
    } else {
      json[r'settlement_transaction_id'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [WithdrawalResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WithdrawalResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return WithdrawalResponse(
        withdrawalId: mapValueOfType<String>(json, r'withdrawal_id'),
        networkChainId: mapValueOfType<int>(json, r'network_chain_id'),
        networkName: mapValueOfType<String>(json, r'network_name'),
        chainId: mapValueOfType<String>(json, r'chain_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        accountId: mapValueOfType<String>(json, r'account_id'),
        toAddress: mapValueOfType<String>(json, r'to_address'),
        quantity: mapValueOfType<String>(json, r'quantity'),
        fee: mapValueOfType<String>(json, r'fee'),
        status: Web3WithdrawalStatus.fromJson(json[r'status']),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        failureReason: mapValueOfType<String>(json, r'failure_reason'),
        approvedBy: mapValueOfType<String>(json, r'approved_by'),
        approvedAt: mapDateTime(json, r'approved_at', r''),
        settlementTransactionId: mapValueOfType<String>(json, r'settlement_transaction_id'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<WithdrawalResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WithdrawalResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WithdrawalResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WithdrawalResponse> mapFromJson(dynamic json) {
    final map = <String, WithdrawalResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WithdrawalResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WithdrawalResponse-objects as value to a dart map
  static Map<String, List<WithdrawalResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WithdrawalResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WithdrawalResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

