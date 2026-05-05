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

// tests for AccountV2
void main() {
  // final instance = AccountV2();

  group('test AccountV2', () {
    // The unique identifier for the account. Used, for example, when creating an order from an account, or deciding collateral should be transferred from account A to account B.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // String assetId
    test('to test the property `assetId`', () async {
      // TODO
    });

    // int seq
    test('to test the property `seq`', () async {
      // TODO
    });

    // bool isGlobal
    test('to test the property `isGlobal`', () async {
      // TODO
    });

    // The available balance in the account for this asset that are not locked, supplied, or used as collateral
    // String available
    test('to test the property `available`', () async {
      // TODO
    });

    // The balance that has been reserved for a current order. If spent by the order, they are removed. If the order is cancelled, they are returned to the account's available balance.
    // String locked
    test('to test the property `locked`', () async {
      // TODO
    });

    // The balance that user has supplied to the leverage module. The user remains entitled to these assets and can withdraw them into their available balance.
    // String supplied
    test('to test the property `supplied`', () async {
      // TODO
    });

    // The total amount of debt outstanding for this account. This account cannot be closed until all debt is fully repaid, i.e. borrowed = 0.
    // String borrowed
    test('to test the property `borrowed`', () async {
      // TODO
    });

    // The equivalent of locked balances, but for leveraged orders. If a user has an active order that would borrow assets as part of its input, then their borrow limit must be reduced until the order is executed or cancelled.
    // String impendingBorrows
    test('to test the property `impendingBorrows`', () async {
      // TODO
    });

    // average cost per unit quantity that was paid (long accounts) or received (short accounts) for this asset.
    // String avgEntryPrice
    test('to test the property `avgEntryPrice`', () async {
      // TODO
    });

    // The borrow limit
    // String borrowLimit
    test('to test the property `borrowLimit`', () async {
      // TODO
    });

    // The borrow limit
    // String liquidationThreshold
    test('to test the property `liquidationThreshold`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The amount of asset that is pending withdrawal from the account.
    // String pendingWithdrawal
    test('to test the property `pendingWithdrawal`', () async {
      // TODO
    });

    // String accountName
    test('to test the property `accountName`', () async {
      // TODO
    });


  });

}
