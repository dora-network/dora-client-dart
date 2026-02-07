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

// tests for ValidateSubmitOrderRequest
void main() {
  // final instance = ValidateSubmitOrderRequest();

  group('test ValidateSubmitOrderRequest', () {
    // String quantity
    test('to test the property `quantity`', () async {
      // TODO
    });

    // Minimum tradable increment for the selected order book
    // String tick
    test('to test the property `tick`', () async {
      // TODO
    });

    // Must be LIMIT or MARKET
    // OrderKind kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Must be BUY or SELL
    // Side side
    test('to test the property `side`', () async {
      // TODO
    });

    // If kind is LIMIT, must be > 0; if MARKET it must be 0 or omitted
    // String price
    test('to test the property `price`', () async {
      // TODO
    });

    // DateTime goodTillDate
    test('to test the property `goodTillDate`', () async {
      // TODO
    });

    // String inverseLeverage
    test('to test the property `inverseLeverage`', () async {
      // TODO
    });

    // User balance used to ensure they can afford the requested quantity
    // String userBalance
    test('to test the property `userBalance`', () async {
      // TODO
    });

    // base asset of orderbook
    // String baseAssetId
    test('to test the property `baseAssetId`', () async {
      // TODO
    });

    // quote asset of orderbook
    // String quoteAssetId
    test('to test the property `quoteAssetId`', () async {
      // TODO
    });

    // An optional client-provided identifier for the order.
    // String clientOrderId
    test('to test the property `clientOrderId`', () async {
      // TODO
    });

    // Full list of assets in the position with their price and collateral weight, required when inverse_leverage < 1 for leverage health checks
    // List<PositionAsset> positionAssets (default value: const [])
    test('to test the property `positionAssets`', () async {
      // TODO
    });

    // Configuration for the assets in the order
    // List<AssetConfig> assetsConfig (default value: const [])
    test('to test the property `assetsConfig`', () async {
      // TODO
    });


  });

}
