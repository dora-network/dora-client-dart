//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Lifecycle state of a web3 USDC withdrawal.  A withdrawal is created as `PENDING` with its quantity reserved against the account's available balance. Requesting a withdrawal is free, so no fee is reserved at that point and `fee` is 0. The reservation is consumed at `CONFIRMED` and released back to available at `REJECTED` or `FAILED`.  The usual path is `PENDING` -> `APPROVED_WITHOUT_FEE` -> `APPROVED` -> `BROADCAST` -> `SUBMITTED` -> `CONFIRMED`. `REJECTED` is reachable from `PENDING` and `APPROVED_WITHOUT_FEE`, the two states no fee has been locked against; `FAILED` only after a fee is locked. `CONFIRMED`, `REJECTED`, and `FAILED` are terminal.  - `PENDING`: awaiting admin review. The quantity is reserved but not yet spent, and no fee has been quoted. - `APPROVED_WITHOUT_FEE`: an admin approved the request, but its fee has not been quoted or locked yet, so it is not queued for on-chain submission. Every admin approval lands here. Locking the quoted fee reserves it on top of the quantity and moves the withdrawal to `APPROVED`; until then the approval is still reversible and the withdrawal may be rejected. - `APPROVED`: approved and fee-locked; it is queued for on-chain submission. - `BROADCAST`: the on-chain withdraw() transaction has been signed and sent, and `tx_hash` is set. The transaction is in the mempool and has not yet been seen in a block. - `SUBMITTED`: the transaction has been observed in a block and the funds have left the vault. Not yet final: if that block is reorganized out, the withdrawal returns to `BROADCAST` to be observed again. - `CONFIRMED`: the on-chain withdrawal finalized and the reservation was settled into an external debit (`settlement_transaction_id` is set). - `REJECTED`: an admin rejected the request while it was `PENDING` or `APPROVED_WITHOUT_FEE`. Nothing was sent on-chain and the reservation has been returned to the available balance. A withdrawal rejected after approval keeps its `approved_by`/`approved_at`. - `FAILED`: the withdrawal could not be executed after approval. The reservation has been returned to the available balance.
class Web3WithdrawalStatus {
  /// Instantiate a new enum with the provided [value].
  const Web3WithdrawalStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = Web3WithdrawalStatus._(r'PENDING');
  static const APPROVED_WITHOUT_FEE = Web3WithdrawalStatus._(r'APPROVED_WITHOUT_FEE');
  static const APPROVED = Web3WithdrawalStatus._(r'APPROVED');
  static const BROADCAST = Web3WithdrawalStatus._(r'BROADCAST');
  static const SUBMITTED = Web3WithdrawalStatus._(r'SUBMITTED');
  static const CONFIRMED = Web3WithdrawalStatus._(r'CONFIRMED');
  static const REJECTED = Web3WithdrawalStatus._(r'REJECTED');
  static const FAILED = Web3WithdrawalStatus._(r'FAILED');

  /// List of all possible values in this [enum][Web3WithdrawalStatus].
  static const values = <Web3WithdrawalStatus>[
    PENDING,
    APPROVED_WITHOUT_FEE,
    APPROVED,
    BROADCAST,
    SUBMITTED,
    CONFIRMED,
    REJECTED,
    FAILED,
  ];

  static Web3WithdrawalStatus? fromJson(dynamic value) => Web3WithdrawalStatusTypeTransformer().decode(value);

  static List<Web3WithdrawalStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Web3WithdrawalStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Web3WithdrawalStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Web3WithdrawalStatus] to String,
/// and [decode] dynamic data back to [Web3WithdrawalStatus].
class Web3WithdrawalStatusTypeTransformer {
  factory Web3WithdrawalStatusTypeTransformer() => _instance ??= const Web3WithdrawalStatusTypeTransformer._();

  const Web3WithdrawalStatusTypeTransformer._();

  String encode(Web3WithdrawalStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a Web3WithdrawalStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Web3WithdrawalStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return Web3WithdrawalStatus.PENDING;
        case r'APPROVED_WITHOUT_FEE': return Web3WithdrawalStatus.APPROVED_WITHOUT_FEE;
        case r'APPROVED': return Web3WithdrawalStatus.APPROVED;
        case r'BROADCAST': return Web3WithdrawalStatus.BROADCAST;
        case r'SUBMITTED': return Web3WithdrawalStatus.SUBMITTED;
        case r'CONFIRMED': return Web3WithdrawalStatus.CONFIRMED;
        case r'REJECTED': return Web3WithdrawalStatus.REJECTED;
        case r'FAILED': return Web3WithdrawalStatus.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Web3WithdrawalStatusTypeTransformer] instance.
  static Web3WithdrawalStatusTypeTransformer? _instance;
}

