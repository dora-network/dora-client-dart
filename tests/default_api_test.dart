import 'package:dora_client/api.dart';
import 'package:test/test.dart';


/// tests for DefaultApi
void main() {
  var instance = new DefaultApi();

  group('tests for DefaultApi', () {
    // Cancel all open orders
    //
    //Future<ListOrdersResponse> cancelAllOpenOrders() async
    test('test cancelAllOpenOrders', () async {
      // TODO
    });

    // Cancel an order by ID
    //
    //Future<CancelOrderResponse> cancelOrderById(String orderId) async
    test('test cancelOrderById', () async {
      // TODO
    });

    // Create a new order
    //
    //Future<CreateOrderResponse> createOrder(CreateOrderRequest body) async
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
    //Future<StreamAssetsResponse> getAssetsStream({ DateTime since, DateTime until }) async
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
    //Future<ListTradeResponse> getTrades({ List<String> pools, List<String> userIds, DateTime start, DateTime end, int page, int limit }) async
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
    //Future<StreamPositionsResponse> getUserLedgerStream(String userId) async
    test('test getUserLedgerStream', () async {
      // TODO
    });

    // Get a snapshot of user's order updates for the given order book since a specific time, and opens a stream for further updates
    //
    //Future<StreamOrderUpdatesResponse> getUserOrderUpdatesStream(String userId, String orderBookId, { DateTime since }) async
    test('test getUserOrderUpdatesStream', () async {
      // TODO
    });

    // Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates
    //
    //Future<StreamOrderUpdatesResponse> getUserOrdersUpdatesStreamAll(String userId, { DateTime since }) async
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
    //Future<StreamTransactionsResponse> getUserTransactionsStream(String userId, { DateTime since }) async
    test('test getUserTransactionsStream', () async {
      // TODO
    });

    // Deposit assets into your account from the outside world
    //
    // TODO: finish this when implementation has been completed
    //
    //Future<FundUserResponse> ledgerDeposit(FundUserRequest body) async
    test('test ledgerDeposit', () async {
      // TODO
    });

    // Withdraw assets from your account to the outside world
    //
    // TODO: Finish this when implementation has been completed
    //
    //Future<FundUserResponse> ledgerWithdraw(FundUserRequest body) async
    test('test ledgerWithdraw', () async {
      // TODO
    });

    // Move supplied and available to supplied_collateral and collateral, for a specified position
    //
    //Future<CollateralizeResponse> leverageCollateralize(CollateralizeRequest body) async
    test('test leverageCollateralize', () async {
      // TODO
    });

    // Move collateral and supplied_collateral to available and supplied, for a specified position.
    //
    //Future<DeCollateralizeResponse> leverageDeCollateralize(DeCollateralizeRequest body) async
    test('test leverageDeCollateralize', () async {
      // TODO
    });

    // Create an isolated position by transferring collateral to the position from the user's global collateral
    //
    //Future<IsolateCollateralResponse> leverageIsolateCollateral(IsolateCollateralRequest body) async
    test('test leverageIsolateCollateral', () async {
      // TODO
    });

    // Create an isolated position using all collateral, supplied_collateral, and borrows from the user's global position
    //
    //Future<IsolatePositionResponse> leverageIsolatePosition(IsolatePositionRequest body) async
    test('test leverageIsolatePosition', () async {
      // TODO
    });

    // Supply leverage for a specific asset
    //
    //Future<SupplyResponse> leverageSupply(SupplyRequest body) async
    test('test leverageSupply', () async {
      // TODO
    });

    // Combines all isolated positions into a single global position
    //
    // Combines all isolated positions into a single global position
    //
    //Future<UnitePositionResponse> leverageUnite(UnitePositionRequest body) async
    test('test leverageUnite', () async {
      // TODO
    });

    // Withdraw leverage for a specific asset
    //
    //Future<WithdrawResponse> leverageWithdraw(WithdrawRequest body) async
    test('test leverageWithdraw', () async {
      // TODO
    });

    // Add liquidity to a pool
    //
    //Future<LiquidityResponse> liquidityAdd(LiquidityRequest body, String poolId) async
    test('test liquidityAdd', () async {
      // TODO
    });

    // Subtract liquidity from a pool
    //
    //Future<LiquidityResponse> liquiditySubtract(LiquidityRequest body, String poolId) async
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
    //Future<StreamAssetPricesResponse> streamAssetPrices({ DateTime since }) async
    test('test streamAssetPrices', () async {
      // TODO
    });

    // Get a snapshot of candlestick data from date provided, and open a stream for real-time updates
    //
    //Future<StreamCandlesResponse> streamCandleData(String orderBookId, { DateTime since, CandleResolution resolution }) async
    test('test streamCandleData', () async {
      // TODO
    });

    // Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
    //
    //Future<StreamOrderBookBalancesResponse> streamOrderBookBalances(String orderBookId, { DateTime since }) async
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
    //Future<StreamTradesResponse> streamTrades(String orderBookId, { DateTime since }) async
    test('test streamTrades', () async {
      // TODO
    });

    // Update user configuration by ID
    //
    //Future<UserUpdatedResponse> updateUserConfig(UpdateUserConfigRequest body, String userId) async
    test('test updateUserConfig', () async {
      // TODO
    });

    // Update user configuration for the authenticated user
    //
    //Future<UserUpdatedResponse> updateUserConfigSelf(UpdateUserConfigRequest body) async
    test('test updateUserConfigSelf', () async {
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
