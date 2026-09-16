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

// tests for CreateWithdrawalRequest
void main() {
  // final instance = CreateWithdrawalRequest();

  group('test CreateWithdrawalRequest', () {
    // Client-supplied idempotency key (also the on-chain correlation key). Repeating a request with the same withdrawal_id has no additional effect.
    // String withdrawalId
    test('to test the property `withdrawalId`', () async {
      // TODO
    });

    // Destination wallet address as a 0x-prefixed hex string. Must not be the zero address.
    // String toAddress
    test('to test the property `toAddress`', () async {
      // TODO
    });

    // Human-decimal USDC quantity to withdraw. Must be positive and no finer than USDC's 6 on-chain decimals.
    // String quantity
    test('to test the property `quantity`', () async {
      // TODO
    });


  });

}
