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

// tests for UpdateTradingChallengeRequest
void main() {
  // final instance = UpdateTradingChallengeRequest();

  group('test UpdateTradingChallengeRequest', () {
    // Trading challenge name.
    // UpdateFieldString name
    test('to test the property `name`', () async {
      // TODO
    });

    // CASH or TOURNAMENT. Only updatable while the challenge is PENDING.
    // UpdateFieldString type
    test('to test the property `type`', () async {
      // TODO
    });

    // Must be > 0 and cannot be lowered below the number of users already registered.
    // UpdateFieldInteger maxUsers
    test('to test the property `maxUsers`', () async {
      // TODO
    });

    // Only updatable while the challenge is PENDING.
    // UpdateFieldDateTime start
    test('to test the property `start`', () async {
      // TODO
    });

    // Must be after start and in the future.
    // UpdateFieldDateTime end
    test('to test the property `end`', () async {
      // TODO
    });

    // Must be > 0. Only updatable while the challenge is PENDING.
    // UpdateFieldDecimal initialUserBalance
    test('to test the property `initialUserBalance`', () async {
      // TODO
    });

    // Must be > 0 for a TOURNAMENT challenge.
    // UpdateFieldDecimal goldPrizeQuantity
    test('to test the property `goldPrizeQuantity`', () async {
      // TODO
    });

    // Must be >= 0.
    // UpdateFieldDecimal silverPrizeQuantity
    test('to test the property `silverPrizeQuantity`', () async {
      // TODO
    });

    // Must be >= 0.
    // UpdateFieldDecimal bronzePrizeQuantity
    test('to test the property `bronzePrizeQuantity`', () async {
      // TODO
    });

    // Must be >= 0. Only updatable while the challenge is PENDING.
    // UpdateFieldDecimal pnlCondition
    test('to test the property `pnlCondition`', () async {
      // TODO
    });

    // Must be >= 0. Only updatable while the challenge is PENDING.
    // UpdateFieldDecimal totalVolumeCondition
    test('to test the property `totalVolumeCondition`', () async {
      // TODO
    });

    // Must be >= 0. Only updatable while the challenge is PENDING.
    // UpdateFieldDecimal avgDailyVolumeCondition
    test('to test the property `avgDailyVolumeCondition`', () async {
      // TODO
    });

    // In the range [0,100). Only updatable while the challenge is PENDING.
    // UpdateFieldInteger minimumEquityPercentageCondition
    test('to test the property `minimumEquityPercentageCondition`', () async {
      // TODO
    });


  });

}
