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

// tests for CashReserveResponse
void main() {
  // final instance = CashReserveResponse();

  group('test CashReserveResponse', () {
    // Whether the minimum cash reserve guard is active in this environment.
    // bool enforced
    test('to test the property `enforced`', () async {
      // TODO
    });

    // The user's currently available USD balance in their Global Account.
    // String availableUsd
    test('to test the property `availableUsd`', () async {
      // TODO
    });

    // USD still counted in available_usd but already claimed by the user's open market buy orders on the Global Account, which reserve no funds at submission time. The reserve is evaluated against available_usd minus committed_usd.
    // String committedUsd
    test('to test the property `committedUsd`', () async {
      // TODO
    });

    // The user's minimum USD cash reserve requirement.
    // String requiredUsd
    test('to test the property `requiredUsd`', () async {
      // TODO
    });

    // Whether available_usd minus committed_usd is at least required_usd.
    // bool satisfied
    test('to test the property `satisfied`', () async {
      // TODO
    });

    // How much more traded USD notional the user can add to the current settlement period before the reserve stops being covered, for an order that borrows nothing. Null means the fee leg does not constrain the user, because the guard is disabled or the trading fee volume cap is zero.
    // String maxVolumeUsd
    test('to test the property `maxVolumeUsd`', () async {
      // TODO
    });

    // How much more the user can borrow before the reserve stops being covered, for an order that adds no traded volume. Null means the borrow leg does not constrain the user, because the guard is disabled or the borrowed fraction is zero. The two caps are single axis: a leveraged order consumes both at once and is admissible when notional/max_volume_usd + borrowed/max_borrow_usd <= 1.
    // String maxBorrowUsd
    test('to test the property `maxBorrowUsd`', () async {
      // TODO
    });

    // CashReserveBreakdown breakdown
    test('to test the property `breakdown`', () async {
      // TODO
    });


  });

}
