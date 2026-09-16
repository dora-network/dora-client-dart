//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:dora_client/api.dart';
import 'package:test/test.dart';

// tests for WithdrawalResponse
void main() {
  // final instance = WithdrawalResponse();

  group('test WithdrawalResponse', () {
    // String withdrawalId
    test('to test the property `withdrawalId`', () async {
      // TODO
    });

    // Internal numeric identifier of the chain.
    // int networkChainId
    test('to test the property `networkChainId`', () async {
      // TODO
    });

    // Human-readable network name.
    // String networkName
    test('to test the property `networkName`', () async {
      // TODO
    });

    // EVM chain ID.
    // String chainId
    test('to test the property `chainId`', () async {
      // TODO
    });

    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // String accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // Destination wallet address as a 0x-prefixed hex string.
    // String toAddress
    test('to test the property `toAddress`', () async {
      // TODO
    });

    // Human-decimal USDC quantity to withdraw (base units divided by 10^6).
    // String quantity
    test('to test the property `quantity`', () async {
      // TODO
    });

    // Human-decimal USDC network fee (base units divided by 10^6). 0 until the requester locks a quoted fee as part of approval.
    // String fee
    test('to test the property `fee`', () async {
      // TODO
    });

    // Web3WithdrawalStatus status
    test('to test the property `status`', () async {
      // TODO
    });

    // Broadcast withdraw() transaction hash as a 0x-prefixed hex string. Present from `BROADCAST` onward.
    // String txHash
    test('to test the property `txHash`', () async {
      // TODO
    });

    // Reason the withdrawal was rejected or failed. Present for REJECTED/FAILED.
    // String failureReason
    test('to test the property `failureReason`', () async {
      // TODO
    });

    // Admin who approved the withdrawal. Present once approved.
    // String approvedBy
    test('to test the property `approvedBy`', () async {
      // TODO
    });

    // When the withdrawal was approved. Present once approved.
    // DateTime approvedAt
    test('to test the property `approvedAt`', () async {
      // TODO
    });

    // Ledger settlement transaction. Present once confirmed.
    // String settlementTransactionId
    test('to test the property `settlementTransactionId`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });


  });

}
