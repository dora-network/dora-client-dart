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


/// tests for DefaultApi
void main() {
  // final instance = DefaultApi();

  group('tests for DefaultApi', () {
    // Cancel all open orders, if user passes orderbook on query param it will cancel all orders on specific orderbook, admin can cancel user's orders on specific orderbook
    //
    //Future<ListOrdersResponse> cancelAllOpenOrders({ String orderBookId, String userId, OrderKind orderKind }) async
    test('test cancelAllOpenOrders', () async {
      // TODO
    });

    // Cancel an order by ID
    //
    //Future<CancelOrderResponse> cancelOrderById(String orderId) async
    test('test cancelOrderById', () async {
      // TODO
    });

    // Check whether a user email exists
    //
    //Future<bool> checkUserEmailExists(String email) async
    test('test checkUserEmailExists', () async {
      // TODO
    });

    // Create a new isolated position for a user transferring available assets into the position
    //
    //Future<NewIsolatedPositionResponse> createNewIsolatedPosition(NewIsolatedPositionRequest newIsolatedPositionRequest) async
    test('test createNewIsolatedPosition', () async {
      // TODO
    });

    // Create a new order
    //
    //Future<CreateOrderResponse> createOrder(CreateOrderRequest createOrderRequest) async
    test('test createOrder', () async {
      // TODO
    });

    // Delete user by ID
    //
    //Future<UserDeletedResponse> deleteUser(String userId) async
    test('test deleteUser', () async {
      // TODO
    });

    // Get the current price of all assets
    //
    //Future<ListAssetPriceResponse> getAllAssetPrices() async
    test('test getAllAssetPrices', () async {
      // TODO
    });

    // Get asset by ID
    //
    //Future<GetAssetByIDResponse> getAssetById(String assetId) async
    test('test getAssetById', () async {
      // TODO
    });

    // Get the current price of an asset
    //
    //Future<GetAssetPriceResponse> getAssetPrice(String assetId) async
    test('test getAssetPrice', () async {
      // TODO
    });

    // Get all inserts or updates for assets
    //
    //Future<List<StreamAssetsEntry>> getAssetsStream({ DateTime since, DateTime until }) async
    test('test getAssetsStream', () async {
      // TODO
    });

    // Get candlestick data for an orderbook
    //
    //Future<ListCandlesResponse> getCandleData(String orderBookId, { DateTime start, DateTime end, CandleResolution resolution }) async
    test('test getCandleData', () async {
      // TODO
    });

    // Get coupon payments for a bond asset
    //
    //Future<ListCouponPaymentsResponse> getCouponPaymentsByAssetId(String assetId) async
    test('test getCouponPaymentsByAssetId', () async {
      // TODO
    });

    // Get the top price levels for a specific orderbook (L1 market depth)
    //
    //Future<GetTopOfBookResponse> getL1Depth(String orderBookId) async
    test('test getL1Depth', () async {
      // TODO
    });

    // Get the aggregated price levels for a specific orderbook (L2 market depth)
    //
    //Future<ListOrderBookDepthResponse> getL2Depth(String orderBookId) async
    test('test getL2Depth', () async {
      // TODO
    });

    // Get all open orders for a specific orderbook (L3 market depth)
    //
    //Future<ListOrdersResponse> getL3Depth(String orderBookId) async
    test('test getL3Depth', () async {
      // TODO
    });

    // Get your own available, locked, and borrowed assets
    //
    //Future<UserBalanceResponse> getLedgerBalancesSelf() async
    test('test getLedgerBalancesSelf', () async {
      // TODO
    });

    // Get your own interest
    //
    //Future<UserInterestResponse> getLedgerInterestSelf() async
    test('test getLedgerInterestSelf', () async {
      // TODO
    });

    // Get the entire module object, including unborrowed leverage assets and total leverage trackers
    //
    //Future<LedgerModuleResponse> getLedgerModule() async
    test('test getLedgerModule', () async {
      // TODO
    });

    // Get the module object for a single asset ID
    //
    //Future<LedgerModuleByAssetResponse> getLedgerModuleByAsset(String assetId) async
    test('test getLedgerModuleByAsset', () async {
      // TODO
    });

    // Get your own positions
    //
    //Future<UserPositionResponse> getLedgerPositionsSelf() async
    test('test getLedgerPositionsSelf', () async {
      // TODO
    });

    // Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
    //
    //Future<UserValueResponse> getLedgerValueSelf() async
    test('test getLedgerValueSelf', () async {
      // TODO
    });

    // Get order by ID
    //
    //Future<GetOrderResponse> getOrderById(String orderId) async
    test('test getOrderById', () async {
      // TODO
    });

    // Get orderbook by ID
    //
    //Future<GetOrderBookResponse> getOrderbookById(String orderBookId) async
    test('test getOrderbookById', () async {
      // TODO
    });

    // Get the aggregated price levels for a specific orderbook (L2 market depth)
    //
    //Future<ListOrderBookDepthResponse> getOrderbookDepth(String orderBookId) async
    test('test getOrderbookDepth', () async {
      // TODO
    });

    // Get all open orders for a specific orderbook (L3 market depth)
    //
    //Future<ListOrdersResponse> getOrderbookOrders(String orderBookId) async
    test('test getOrderbookOrders', () async {
      // TODO
    });

    // Get summary of an orderbook
    //
    //Future<GetOrderBookSummaryResponse> getOrderbookSummary(String orderBookId) async
    test('test getOrderbookSummary', () async {
      // TODO
    });

    // Get the top price levels for a specific orderbook (L1 market depth)
    //
    //Future<GetTopOfBookResponse> getOrderbookTop(String orderBookId) async
    test('test getOrderbookTop', () async {
      // TODO
    });

    // Get the current price of a pool
    //
    //Future<GetPoolPriceResponse> getPoolPrice(String poolId) async
    test('test getPoolPrice', () async {
      // TODO
    });

    // Get a trade by ID
    //
    //Future<TradeResponse> getTradeById(String tradeId) async
    test('test getTradeById', () async {
      // TODO
    });

    // Get a filtered, paginated list of trades
    //
    //Future<ListTradeResponse> getTrades({ List<String> orderBookIds, List<String> userIds, DateTime start, DateTime end, int page, int limit }) async
    test('test getTrades', () async {
      // TODO
    });

    // Get a transaction by ID
    //
    //Future<GetTransactionResponse> getTransactionById(String transactionId) async
    test('test getTransactionById', () async {
      // TODO
    });

    // Get a filtered, paginated list of transactions
    //
    //Future<ListTransactionsResponse> getTransactions({ List<String> pools, List<String> userIds, List<TransactionKind> txKinds, DateTime start, DateTime end, int page, int limit }) async
    test('test getTransactions', () async {
      // TODO
    });

    // Get user by ID (admin only)
    //
    //Future<GetUserResponse> getUserById(String userId) async
    test('test getUserById', () async {
      // TODO
    });

    // Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates
    //
    //Future<List<StreamPositionsEntry>> getUserLedgerStream(String userId) async
    test('test getUserLedgerStream', () async {
      // TODO
    });

    // Get a snapshot of user's order updates for the given order book since a specific time, and opens a stream for further updates
    //
    //Future<List<StreamOrderUpdatesEntry>> getUserOrderUpdatesStream(String userId, String orderBookId, { DateTime since }) async
    test('test getUserOrderUpdatesStream', () async {
      // TODO
    });

    // Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates
    //
    //Future<List<StreamOrderUpdatesEntry>> getUserOrdersUpdatesStreamAll(String userId, { DateTime since }) async
    test('test getUserOrdersUpdatesStreamAll', () async {
      // TODO
    });

    // Get user details for the authenticated user
    //
    //Future<GetUserResponse> getUserSelf() async
    test('test getUserSelf', () async {
      // TODO
    });

    // Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates
    //
    //Future<List<StreamTransactionsEntry>> getUserTransactionsStream(String userId, { DateTime since }) async
    test('test getUserTransactionsStream', () async {
      // TODO
    });

    // Create an isolated position by transferring collateral to the position from the user's global collateral
    //
    //Future<IsolateCollateralResponse> leverageIsolateCollateral(IsolateCollateralRequest isolateCollateralRequest) async
    test('test leverageIsolateCollateral', () async {
      // TODO
    });

    // Supply leverage for a specific asset
    //
    //Future<SupplyResponse> leverageSupply(SupplyRequest supplyRequest) async
    test('test leverageSupply', () async {
      // TODO
    });

    // Combines all isolated positions into a single global position
    //
    // Combines all isolated positions into a single global position
    //
    //Future<UnitePositionResponse> leverageUnite(UnitePositionRequest unitePositionRequest) async
    test('test leverageUnite', () async {
      // TODO
    });

    // Withdraw leverage for a specific asset
    //
    //Future<WithdrawResponse> leverageWithdraw(WithdrawRequest withdrawRequest) async
    test('test leverageWithdraw', () async {
      // TODO
    });

    // Add liquidity to a pool
    //
    //Future<LiquidityResponse> liquidityAdd(String poolId, LiquidityRequest liquidityRequest) async
    test('test liquidityAdd', () async {
      // TODO
    });

    // Subtract liquidity from a pool
    //
    //Future<LiquidityResponse> liquiditySubtract(String poolId, LiquidityRequest liquidityRequest) async
    test('test liquiditySubtract', () async {
      // TODO
    });

    // List assets
    //
    //Future<ListAssetsResponse> listAssets({ DateTime createdAfter, DateTime createdBefore, AssetKind assetKind, bool canAddLiquidity, bool canDirectBorrow, bool canOnboard, bool canTrade, bool canVirtualBorrow, int page, int limit }) async
    test('test listAssets', () async {
      // TODO
    });

    // List order books
    //
    //Future<ListOrderBooksResponse> listOrderBooks({ OrderBookStatus status, String baseAssetId, String quoteAssetId, int page, int limit }) async
    test('test listOrderBooks', () async {
      // TODO
    });

    // List all orders
    //
    //Future<ListOrdersResponse> listOrders({ List<String> orderBookId, List<OrderKind> kind, List<OrderStatus> status, Side side, DateTime from, DateTime to, int page, int limit }) async
    test('test listOrders', () async {
      // TODO
    });

    // Stream real-time asset prices as map objects
    //
    // Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.
    //
    //Future<Map<String, StreamAssetPricesResponseValue>> streamAssetPrices({ DateTime since }) async
    test('test streamAssetPrices', () async {
      // TODO
    });

    // Get a snapshot of candlestick data from date provided, and open a stream for real-time updates
    //
    //Future<List<StreamCandlesEntry>> streamCandleData(String orderBookId, { DateTime since, CandleResolution resolution }) async
    test('test streamCandleData', () async {
      // TODO
    });

    // Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
    //
    //Future<List<StreamOrderBookBalanceEntry>> streamOrderBookBalances(String orderBookId, { DateTime since }) async
    test('test streamOrderBookBalances', () async {
      // TODO
    });

    // Get a snapshot of open orders in an order book and open a stream for real-time updates
    //
    //Future<LiveOrderbook> streamOrderbookOpenOrders(String orderBookId, { DateTime since }) async
    test('test streamOrderbookOpenOrders', () async {
      // TODO
    });

    // Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates
    //
    //Future<List<StreamTradesEntry>> streamTrades(String orderBookId, { DateTime since }) async
    test('test streamTrades', () async {
      // TODO
    });

    // Transfer available balance between a user's accounts (e.g. global to isolated position)
    //
    //Future<TransferBalancesResponse> transferAvailableBalances(TransferBalancesRequest transferBalancesRequest) async
    test('test transferAvailableBalances', () async {
      // TODO
    });

    // Update user configuration by ID
    //
    //Future<UserUpdatedResponse> updateUserConfig(String userId, UpdateUserConfigRequest updateUserConfigRequest) async
    test('test updateUserConfig', () async {
      // TODO
    });

    // Update user configuration for the authenticated user
    //
    //Future<UserUpdatedResponse> updateUserConfigSelf(UpdateUserConfigRequest updateUserConfigRequest) async
    test('test updateUserConfigSelf', () async {
      // TODO
    });

    // Validate submit order request data
    //
    //Future<ValidateSubmitOrderResponse> validateSubmitOrder(ValidateSubmitOrderRequest validateSubmitOrderRequest) async
    test('test validateSubmitOrder', () async {
      // TODO
    });

    // Verify a user by ID
    //
    //Future<UserUpdatedResponse> verifyUser(String userId) async
    test('test verifyUser', () async {
      // TODO
    });

  });
}
