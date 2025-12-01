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

// tests for Position
void main() {
  // final instance = Position();

  group('test Position', () {
    // The unique identifier for the position. Used, for example, when creating an order from a position, or deciding collateral should be transferred from position A to position B.
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

    // The available balance in the position for this asset that are not locked, supplied, or used as collateral
    // double available
    test('to test the property `available`', () async {
      // TODO
    });

    // The balance that has been reserved for a current order. If spent by the order, they are removed. If the order is cancelled, they are returned to the position's available balance.
    // double locked
    test('to test the property `locked`', () async {
      // TODO
    });

    // The balance that user has supplied to the leverage module. The user remains entitled to these assets and can withdraw them into their available balance.
    // double supplied
    test('to test the property `supplied`', () async {
      // TODO
    });

    // The balance that has been locked or supplied, but are marked as collateral to support borrow limits and can be consumed in case of liquidation. When unmarked as collateral, the balance returns to the available balance.
    // double collateral
    test('to test the property `collateral`', () async {
      // TODO
    });

    // The balance that have been supplied to the leverage module and marked as collateral. The user remains entitled to this balance and can withdraw it into the collateral balance, or unmark them as collateral and move them to the supplied balance.
    // double suppliedCollateral
    test('to test the property `suppliedCollateral`', () async {
      // TODO
    });

    // The total amount of debt outstanding for this position. The position's collateral + supplied_collateral must support a borrow limit sufficient to cover all borrowed assets. This position cannot be closed until all debt is fully repaid, i.e. borrowed = 0.
    // double borrowed
    test('to test the property `borrowed`', () async {
      // TODO
    });

    // The equivalent of locked balances, but for leveraged orders. If a user has an active order that would borrow assets as part of its input, then their borrow limit must be reduced until the order is executed or cancelled.
    // double impendingBorrows
    test('to test the property `impendingBorrows`', () async {
      // TODO
    });

    // average cost per unit quantity that was paid (long positions) or received (short positions) for this asset.
    // double avgEntryPrice
    test('to test the property `avgEntryPrice`', () async {
      // TODO
    });

    // The borrow limit
    // double borrowLimit
    test('to test the property `borrowLimit`', () async {
      // TODO
    });

    // The borrow limit
    // double liquidationThreshold
    test('to test the property `liquidationThreshold`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // String positionName
    test('to test the property `positionName`', () async {
      // TODO
    });


  });

}
