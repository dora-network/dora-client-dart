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
    // Add users to a trading challenge
    //
    // Add existing users to a trading challenge. For COMPETITION_MANAGER, the challenge must be assigned in managed_competition_ids. A user must have an empty ledger to join: deposits and withdrawals are barred from enrolment until the challenge is over, so that challenge credits are the only thing a participant holds and the teardown sweep cannot destroy funds of their own.
    //
    //Future<TradingChallengeResponseEnvelope> addTradingChallengeUsers(AddTradingChallengeUsersRequest addTradingChallengeUsersRequest) async
    test('test addTradingChallengeUsers', () async {
      // TODO
    });

    // Approve a pending withdrawal request
    //
    // Approve a pending withdrawal request, allowing the transfer of assets to the outside world to proceed. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.
    //
    //Future<WithdrawalInitiationResponseEnvelope> approveLedgerWithdrawRequest(String withdrawalId, { WithdrawalRequestReason withdrawalRequestReason }) async
    test('test approveLedgerWithdrawRequest', () async {
      // TODO
    });

    // Approve a trading challenge registration request
    //
    // Accessible to admins (any challenge), integrators (their own tenant only) and competition managers (their assigned challenges only). Enrolment runs the same checks as add_users, so a challenge that filled up, now overlaps another of the user's challenges, or whose applicant no longer has an empty ledger is rejected with a 409 and the request stays open.
    //
    //Future<TradingChallengeRegistrationRequestResponseEnvelope> approveTradingChallengeRegistrationRequest(String requestId, { ReviewTradingChallengeRegistrationRequest reviewTradingChallengeRegistrationRequest }) async
    test('test approveTradingChallengeRegistrationRequest', () async {
      // TODO
    });

    // Cancel all open orders, if user passes orderbook or account_id on query params it will cancel all orders on specific orderbook or account, admin can cancel user's orders on specific orderbook
    //
    //Future<ListOrdersResponseEnvelope> cancelAllOpenOrders({ String orderBookId, String userId, String accountId, OrderKind orderKind }) async
    test('test cancelAllOpenOrders', () async {
      // TODO
    });

    // Cancel a pending withdrawal request
    //
    // Cancel a pending withdrawal request, providing an optional reason for the cancellation.
    //
    //Future<WithdrawalInitiationResponseEnvelope> cancelLedgerWithdrawRequest(String withdrawalId, { WithdrawalRequestReason withdrawalRequestReason }) async
    test('test cancelLedgerWithdrawRequest', () async {
      // TODO
    });

    // Cancel an order by ID
    //
    //Future<CancelOrderResponseEnvelope> cancelOrderById(String orderId) async
    test('test cancelOrderById', () async {
      // TODO
    });

    // Claim current accrued leverage interest for a specific user
    //
    //Future<ClaimLeverageAccruedInterestResponseEnvelope> claimLeverageGetAccruedInterest(ClaimLeverageAccruedInterestRequest claimLeverageAccruedInterestRequest) async
    test('test claimLeverageGetAccruedInterest', () async {
      // TODO
    });

    // Claim challenge prize
    //
    // Claim the prize of a challenge the caller is eligible for. A TOURNAMENT claim credits the prize matching the crown and reactivates the account. A CASH claim winds the account down, sweeps every remaining challenge credit and awards the CASH_CROWN: the account is left deactivated with a zero balance, and the reward is redeemed out of band. Both mark the participation PRIZE_CLAIMED.
    //
    //Future<ClaimTradingChallengeResponseEnvelope> claimTradingChallengePrize(String tradingChallengeId) async
    test('test claimTradingChallengePrize', () async {
      // TODO
    });

    // Close an isolated account, repaying the borrowed
    //
    //Future<ClosePositionResponseEnvelope> closeIsolatedAccountV2(CloseAccountRequest closeAccountRequest) async
    test('test closeIsolatedAccountV2', () async {
      // TODO
    });

    // Close isolated positions, repaying the borrowed
    //
    //Future<ClosePositionResponseEnvelope> closeIsolatedPosition(ClosePositionRequest closePositionRequest) async
    test('test closeIsolatedPosition', () async {
      // TODO
    });

    // Create apikey for a user
    //
    //Future<CreateAPIKeyResponseEnvelope> createAPIKeyForUser(CreateAPIKeyRequest createAPIKeyRequest) async
    test('test createAPIKeyForUser', () async {
      // TODO
    });

    // Create apikey for a user
    //
    //Future<CreateAPIKeyResponseEnvelope> createAPIKeyForUserID(String userId, CreateAPIKeyRequest createAPIKeyRequest) async
    test('test createAPIKeyForUserID', () async {
      // TODO
    });

    // Create a new conditional orders
    //
    //Future<CreateConditionalOrderResponseEnvelope> createConditionalOrder(CreateConditionalOrderRequest createConditionalOrderRequest) async
    test('test createConditionalOrder', () async {
      // TODO
    });

    // Create a new order
    //
    //Future<CreateOrderResponseEnvelope> createOrder(CreateOrderRequest createOrderRequest) async
    test('test createOrder', () async {
      // TODO
    });

    // Create a trading challenge
    //
    // Create a new trading challenge. Allowed for ADMIN and INTEGRATOR only.
    //
    //Future<TradingChallengeResponseEnvelope> createTradingChallenge(CreateTradingChallengeRequest createTradingChallengeRequest) async
    test('test createTradingChallenge', () async {
      // TODO
    });

    // Create a new user
    //
    //Future<UserCreatedResponseEnvelope> createUser(CreateIntegratorUserRequest createIntegratorUserRequest) async
    test('test createUser', () async {
      // TODO
    });

    // Delete user by ID
    //
    //Future<UserDeletedResponseEnvelope> deleteUser(String userId) async
    test('test deleteUser', () async {
      // TODO
    });

    // Get user's api keys: admin or integrator only
    //
    //Future<APIKeyResponseEnvelope> getAPIKeysForUserID(String userId) async
    test('test getAPIKeysForUserID', () async {
      // TODO
    });

    // Get the current price of all assets
    //
    //Future<ListAssetPriceResponseEnvelope> getAllAssetPrices() async
    test('test getAllAssetPrices', () async {
      // TODO
    });

    // Get all users' positions
    //
    //Future<AllPositionsResponseEnvelope> getAllPositions() async
    test('test getAllPositions', () async {
      // TODO
    });

    // Get all withdrawal requests
    //
    //Future<AllWithdrawalInitiationsResponseEnvelope> getAllWithdrawalRequests({ String status }) async
    test('test getAllWithdrawalRequests', () async {
      // TODO
    });

    // Get asset by ID
    //
    //Future<GetAssetByIDResponseEnvelope> getAssetById(String assetId) async
    test('test getAssetById', () async {
      // TODO
    });

    // Get the current price of an asset
    //
    //Future<AssetPriceResponseEnvelope> getAssetPrice(String assetId) async
    test('test getAssetPrice', () async {
      // TODO
    });

    // Get annualized yield to maturity for a bond asset
    //
    //Future<GetAssetYTMByIDResponseEnvelope> getAssetYTMById(String assetId) async
    test('test getAssetYTMById', () async {
      // TODO
    });

    // Get yield chart data for an asset
    //
    // Returns complete yield buckets starting at `start`; `end` is exclusive and a trailing partial bucket is omitted. Requests are limited to 10,000 complete buckets.
    //
    //Future<ListAssetYieldResponseEnvelope> getAssetYieldData(String assetId, DateTime start, DateTime end, AssetYieldResolution resolution) async
    test('test getAssetYieldData', () async {
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
    //Future<ListCandlesResponseEnvelope> getCandleData(String orderBookId, DateTime start, DateTime end, { CandleResolution resolution }) async
    test('test getCandleData', () async {
      // TODO
    });

    // Get the minimum USD cash reserve requirement for the given user
    //
    // Returns the user's available Global Account USD balance alongside their minimum cash reserve requirement and its breakdown. While available_usd is below required_usd the user may not open new leveraged positions, submit buy orders, transfer assets out of their Global Account or withdraw.
    //
    //Future<CashReserveResponseEnvelope> getCashReserveByUserID(String userId) async
    test('test getCashReserveByUserID', () async {
      // TODO
    });

    // Get the minimum USD cash reserve requirement for the logged in user
    //
    // Returns the user's available Global Account USD balance alongside their minimum cash reserve requirement and its breakdown. While available_usd is below required_usd the user may not open new leveraged positions, submit buy orders, transfer assets out of their Global Account or withdraw.
    //
    //Future<CashReserveResponseEnvelope> getCashReserveSelf() async
    test('test getCashReserveSelf', () async {
      // TODO
    });

    // Get list of users with copy trading enabled
    //
    //Future<GetCopyTradersResponse> getCopyTraders({ int page, int limit }) async
    test('test getCopyTraders', () async {
      // TODO
    });

    // Get coupon payments for a bond asset
    //
    //Future<ListCouponPaymentsResponseEnvelope> getCouponPaymentsByAssetId(String assetId) async
    test('test getCouponPaymentsByAssetId', () async {
      // TODO
    });

    // Get per-chain instructions for depositing USDC into the Dora vault
    //
    // Returns everything the caller needs to deposit USDC into the Dora vault with a single signature and a single transaction: an EIP-712 (EIP-2612 permit) typed-data payload to sign with eth_signTypedData_v4, and the descriptor of the vault deposit() call. The client splits the permit signature into v/r/s and ABI-encodes the deposit function with the returned args plus (v, r, s); no separate approve transaction is needed. Only a single chain is currently supported: the provided nonce belongs to it, and the chains array holds at most one entry. Restricted to DORA tenant users whose native asset is USDC.
    //
    //Future<DepositInstructionsResponseEnvelope> getDepositInstructions(String quantity, String ownerAddress, String nonce, { String clientReferenceId }) async
    test('test getDepositInstructions', () async {
      // TODO
    });

    // Get the top price levels for a specific orderbook (L1 market depth)
    //
    //Future<GetTopOfBookResponseEnvelope> getL1Depth(String orderBookId) async
    test('test getL1Depth', () async {
      // TODO
    });

    // Get the aggregated price levels for a specific orderbook (L2 market depth)
    //
    //Future<ListOrderBookDepthResponseEnvelope> getL2Depth(String orderBookId) async
    test('test getL2Depth', () async {
      // TODO
    });

    // Get all open orders for a specific orderbook (L3 market depth)
    //
    //Future<ListOrdersResponseEnvelope> getL3Depth(String orderBookId) async
    test('test getL3Depth', () async {
      // TODO
    });

    // Get your own accounts
    //
    //Future<LedgerAccountsResponseV2Envelope> getLedgerAccountsSelfV2() async
    test('test getLedgerAccountsSelfV2', () async {
      // TODO
    });

    // Get your own available, locked, and borrowed assets
    //
    //Future<UserBalanceResponseEnvelope> getLedgerBalancesSelf() async
    test('test getLedgerBalancesSelf', () async {
      // TODO
    });

    // Get your own interest
    //
    //Future<UserInterestResponseEnvelope> getLedgerInterestSelf() async
    test('test getLedgerInterestSelf', () async {
      // TODO
    });

    // Get the entire module object, including unborrowed leverage assets and total leverage trackers
    //
    //Future<LedgerModuleResponseEnvelope> getLedgerModule() async
    test('test getLedgerModule', () async {
      // TODO
    });

    // Get the module object for a single asset ID
    //
    //Future<LedgerModuleByAssetResponseEnvelope> getLedgerModuleByAsset(String assetId) async
    test('test getLedgerModuleByAsset', () async {
      // TODO
    });

    // Get your own positions
    //
    //Future<UserPositionResponseEnvelope> getLedgerPositionsSelf() async
    test('test getLedgerPositionsSelf', () async {
      // TODO
    });

    // Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
    //
    //Future<UserValueResponseEnvelope> getLedgerValueSelf() async
    test('test getLedgerValueSelf', () async {
      // TODO
    });

    // Get all pending withdrawal requests for the logged in user
    //
    //Future<AllWithdrawalInitiationsResponseEnvelope> getLedgerWithdrawRequestsBySelf({ String status }) async
    test('test getLedgerWithdrawRequestsBySelf', () async {
      // TODO
    });

    // Get all pending withdrawal requests for this user
    //
    //Future<AllWithdrawalInitiationsResponseEnvelope> getLedgerWithdrawRequestsByUserID(String userId, { String status }) async
    test('test getLedgerWithdrawRequestsByUserID', () async {
      // TODO
    });

    // Get order by ID
    //
    // Get details of a specific order. Traders can only view their own orders. Admins can view any order. Integrators can view orders for users within their tenant.
    //
    //Future<OrderResponseEnvelope> getOrderById(String orderId) async
    test('test getOrderById', () async {
      // TODO
    });

    // Get orderbook by ID
    //
    //Future<OrderBookResponseEnvelope> getOrderbookById(String orderBookId) async
    test('test getOrderbookById', () async {
      // TODO
    });

    // Get the aggregated price levels for a specific orderbook (L2 market depth)
    //
    //Future<ListOrderBookDepthResponseEnvelope> getOrderbookDepth(String orderBookId) async
    test('test getOrderbookDepth', () async {
      // TODO
    });

    // Get all open orders for a specific orderbook (L3 market depth)
    //
    //Future<ListOrdersResponseEnvelope> getOrderbookOrders(String orderBookId) async
    test('test getOrderbookOrders', () async {
      // TODO
    });

    // Get orderbook stats
    //
    //Future<OrderbookStatsResponseEnvelope> getOrderbookStats(String orderBookId) async
    test('test getOrderbookStats', () async {
      // TODO
    });

    // Orderbook stats stream
    //
    //Future<OrderbookStats> getOrderbookStatsStream(String orderBookId) async
    test('test getOrderbookStatsStream', () async {
      // TODO
    });

    // Get summary of an orderbook
    //
    //Future<OrderBookSummaryResponseEnvelope> getOrderbookSummary(String orderBookId) async
    test('test getOrderbookSummary', () async {
      // TODO
    });

    // Get the top price levels for a specific orderbook (L1 market depth)
    //
    //Future<GetTopOfBookResponseEnvelope> getOrderbookTop(String orderBookId) async
    test('test getOrderbookTop', () async {
      // TODO
    });

    // Get account-by-account PL breakdown for the logged in user
    //
    //Future<PLResponseEnvelope> getPLForSelfByAccount() async
    test('test getPLForSelfByAccount', () async {
      // TODO
    });

    // Get the current price of a pool
    //
    //Future<PoolPriceResponseEnvelope> getPoolPrice(String poolId) async
    test('test getPoolPrice', () async {
      // TODO
    });

    // Get realized P&L settlements with filters
    //
    //Future<GetRealizedPnlSettlementsResponseEnvelope> getRealizedPnlSettlements({ String userId, String tenantId, String positionId, DateTime createdAfter, DateTime createdBefore, DateTime settledAfter, DateTime settledBefore, bool isSettled }) async
    test('test getRealizedPnlSettlements', () async {
      // TODO
    });

    // Get top traders by PnL
    //
    // Returns user PnL ranking for the provided time range. By default only users with allow_copy_trading=true are included. Set all=true to include all users; this requires an admin role.
    //
    //Future<GetPnLRankingResponse> getTopTradersByPnL(DateTime start, DateTime end, { int page, int limit, bool all }) async
    test('test getTopTradersByPnL', () async {
      // TODO
    });

    // Get a trade by ID
    //
    //Future<TradeResponseEnvelope> getTradeById(String tradeId) async
    test('test getTradeById', () async {
      // TODO
    });

    // Get a filtered, paginated list of trades
    //
    //Future<ListTradeResponseEnvelope> getTrades({ List<String> orderBookIds, List<String> userIds, DateTime start, DateTime end, int page, int limit }) async
    test('test getTrades', () async {
      // TODO
    });

    // Get trading challenge by ID
    //
    // Fetch one trading challenge. COMPETITION_MANAGER can access only assigned challenge IDs.
    //
    //Future<TradingChallengeResponseEnvelope> getTradingChallengeByID(String tradingChallengeId) async
    test('test getTradingChallengeByID', () async {
      // TODO
    });

    // Get trading challenge daily snapshots
    //
    // List participant daily snapshots for a challenge. COMPETITION_MANAGER can access only assigned challenge IDs.
    //
    //Future<TradingChallengeDailySnapshotsResponseEnvelope> getTradingChallengeDailySnapshots(String tradingChallengeId) async
    test('test getTradingChallengeDailySnapshots', () async {
      // TODO
    });

    // Get trading challenge results
    //
    // List challenge leaderboard/results. COMPETITION_MANAGER can access only assigned challenge IDs.
    //
    //Future<TradingChallengeResultsResponseEnvelope> getTradingChallengeResults(String tradingChallengeId, { String board }) async
    test('test getTradingChallengeResults', () async {
      // TODO
    });

    // Get a transaction by ID
    //
    //Future<TransactionResponseEnvelope> getTransactionById(String transactionId) async
    test('test getTransactionById', () async {
      // TODO
    });

    // Get a filtered, paginated list of transactions
    //
    //Future<ListTransactionsResponseEnvelope> getTransactions({ List<String> pools, List<String> userIds, List<TransactionKind> txKinds, DateTime start, DateTime end, String tenantId, int page, int limit }) async
    test('test getTransactions', () async {
      // TODO
    });

    // Get transactions settlements with filters
    //
    //Future<TransactionsSettlementsResponseEnvelope> getTransactionsSettlements({ String tenantId, String userId, String positionId, String txKind, DateTime createdAfter, DateTime createdBefore, DateTime settledAfter, DateTime settledBefore, bool isSettled }) async
    test('test getTransactionsSettlements', () async {
      // TODO
    });

    // Get transactions since a specific time, and open a stream for further updates
    //
    //Future<List<StreamTransactionsEntry>> getTransactionsStream({ DateTime since }) async
    test('test getTransactionsStream', () async {
      // TODO
    });

    // Get user by ID (admin only)
    //
    //Future<UserEnvelope> getUserById(String userId) async
    test('test getUserById', () async {
      // TODO
    });

    // Stream user's coupon payment accruals in real time
    //
    //Future<StreamUserCouponPaymentsResponse> getUserCouponPaymentsStream(String userId) async
    test('test getUserCouponPaymentsStream', () async {
      // TODO
    });

    // Get the latest account deactivation request for a user
    //
    // Returns the user's latest deactivation request, i.e. their current deactivation status. Integrators may only request users belonging to their own tenant.
    //
    //Future<UserDeactivationResponseEnvelope> getUserDeactivation(String userId) async
    test('test getUserDeactivation', () async {
      // TODO
    });

    // Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates
    //
    //Future<List<StreamPositionsEntry>> getUserLedgerStream(String userId) async
    test('test getUserLedgerStream', () async {
      // TODO
    });

    // Stream user's current leverage accrued interest in real time
    //
    //Future<StreamCurrentLeverageAccruedInterestResponse> getUserLeverageAccruedInterestStream(String userId) async
    test('test getUserLeverageAccruedInterestStream', () async {
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
    //Future<UserEnvelope> getUserSelf() async
    test('test getUserSelf', () async {
      // TODO
    });

    // Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates
    //
    //Future<List<StreamTransactionsEntry>> getUserTransactionsStream(String userId, { DateTime since }) async
    test('test getUserTransactionsStream', () async {
      // TODO
    });

    // Get all users (admin only)
    //
    //Future<ListUsersResponseEnvelope> getUsers({ String id, int limit, int offset, String email, String firstName, String lastName, CountryCode countryOfDomicile }) async
    test('test getUsers', () async {
      // TODO
    });

    // Get user's api keys
    //
    //Future<APIKeyResponseEnvelope> getUsersAPIKeys() async
    test('test getUsersAPIKeys', () async {
      // TODO
    });

    // Estimate the network fee to withdraw USDC via web3
    //
    // Examines on-chain conditions and simulates a withdrawal transaction to estimate the fee a user needs to pay when they make their withdrawal request. Restricted to DORA tenant users whose native asset is USDC.
    //
    //Future<FeeQuoteResponseEnvelope> getWithdrawalFeeQuote(String to, String quantity) async
    test('test getWithdrawalFeeQuote', () async {
      // TODO
    });

    // Deposit assets into this user's account from the outside world
    //
    // Deposit assets into this user's account from the outside world. Note that this does not interact with any external systems; it simply adds the amount to the user's available balance in the ledger. Actual transfer of assets must be handled separately.
    //
    //Future<FundUserResponseEnvelope> ledgerDeposit(String userId, FundUserRequest fundUserRequest) async
    test('test ledgerDeposit', () async {
      // TODO
    });

    // Withdraw assets from this user to the outside world
    //
    // Withdraw assets from this user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
    //
    //Future<FundUserResponseEnvelope> ledgerWithdraw(String userId, DefundUserRequest defundUserRequest, { String status }) async
    test('test ledgerWithdraw', () async {
      // TODO
    });

    // Initiate a withdrawal request for this user to the outside world
    //
    // Withdraw assets from this user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
    //
    //Future<WithdrawalInitiationResponseEnvelope> ledgerWithdrawRequest(String userId, DefundUserRequest defundUserRequest) async
    test('test ledgerWithdrawRequest', () async {
      // TODO
    });

    // Initiate a withdrawal request for the logged in user to the outside world
    //
    // Withdraw assets from the logged in user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
    //
    //Future<WithdrawalInitiationResponseEnvelope> ledgerWithdrawRequestSelf(String userId, DefundUserRequest defundUserRequest) async
    test('test ledgerWithdrawRequestSelf', () async {
      // TODO
    });

    // Get current accrued leverage interest for the user
    //
    //Future<CurrentLeverageAccruedInterestResponseEnvelope> leverageGetAccruedInterestByUser({ String positionId, String assetId }) async
    test('test leverageGetAccruedInterestByUser', () async {
      // TODO
    });

    // Get historical leverage borrowing and lending yields for a specific asset
    //
    //Future<HistoricalLeverageInterestRatesResponseEnvelope> leverageGetHistoricalInterestRates(String assetId, { DateTime start, DateTime end }) async
    test('test leverageGetHistoricalInterestRates', () async {
      // TODO
    });

    // Get leverage borrowing and lending yields for a specific asset
    //
    //Future<LeverageInterestRateResponseEnvelope> leverageGetInterestRate(String assetId, { DateTime start, DateTime end }) async
    test('test leverageGetInterestRate', () async {
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
    //Future<SupplyResponseEnvelope> leverageSupply(SupplyRequest supplyRequest) async
    test('test leverageSupply', () async {
      // TODO
    });

    // Combines all isolated positions into a single global position
    //
    // Combines all isolated positions into a single global position
    //
    //Future<UnitePositionResponseEnvelope> leverageUnite(UnitePositionRequest unitePositionRequest) async
    test('test leverageUnite', () async {
      // TODO
    });

    // Withdraw leverage for a specific asset
    //
    //Future<WithdrawResponseEnvelope> leverageWithdraw(WithdrawRequest withdrawRequest) async
    test('test leverageWithdraw', () async {
      // TODO
    });

    // Add liquidity to a pool
    //
    //Future<LiquidityResponseEnvelope> liquidityAdd(String poolId, LiquidityRequest liquidityRequest) async
    test('test liquidityAdd', () async {
      // TODO
    });

    // Subtract liquidity from a pool
    //
    //Future<LiquidityResponseEnvelope> liquiditySubtract(String poolId, LiquidityRequest liquidityRequest) async
    test('test liquiditySubtract', () async {
      // TODO
    });

    // List all accounts for the authenticated user
    //
    //Future<ListAccountsResponseV2Envelope> listAccountsSelfV2() async
    test('test listAccountsSelfV2', () async {
      // TODO
    });

    // List assets
    //
    //Future<ResponseEnvelopeOfListAssets> listAssets({ DateTime createdAfter, DateTime createdBefore, AssetKind assetKind, bool canAddLiquidity, bool canDirectBorrow, bool canOnboard, bool canTrade, bool canVirtualBorrow, int page, int limit }) async
    test('test listAssets', () async {
      // TODO
    });

    // List USDC deposits
    //
    // Lists USDC deposits ordered by observed_at descending. Admin users may list deposits for any user (or all users); non-admin users may only list their own deposits.
    //
    //Future<ListDepositsResponseEnvelope> listDeposits({ String userId, int page, int limit }) async
    test('test listDeposits', () async {
      // TODO
    });

    // List order books
    //
    //Future<ListOrderbookResponseEnvelope> listOrderBooks({ List<OrderBookStatus> status, String baseAssetId, String quoteAssetId, int page, int limit }) async
    test('test listOrderBooks', () async {
      // TODO
    });

    // List all orders
    //
    //Future<ListOrdersResponseEnvelope> listOrders({ String userId, List<String> orderBookId, List<OrderKind> kind, List<OrderStatus> status, Side side, DateTime from, DateTime to, int page, int limit, String clientOrderId }) async
    test('test listOrders', () async {
      // TODO
    });

    // List all position accounts for the authenticated user
    //
    //Future<ListPositionAccountsResponseEnvelope> listPositionAccountsSelf() async
    test('test listPositionAccountsSelf', () async {
      // TODO
    });

    // List trading challenge registration requests
    //
    // The review queue. Admins see every tenant and may filter to one, an integrator is pinned to their own tenant, and a competition manager only sees the requests of the challenges assigned to them.
    //
    //Future<TradingChallengeRegistrationRequestListResponseEnvelope> listTradingChallengeRegistrationRequests({ String tradingChallengeId, String userId, String status, String tenantId, int limit, int offset }) async
    test('test listTradingChallengeRegistrationRequests', () async {
      // TODO
    });

    // List trading challenges
    //
    // List trading challenges. COMPETITION_MANAGER callers only receive challenges present in their managed_competition_ids.
    //
    //Future<TradingChallengeListResponseEnvelope> listTradingChallenges({ String tenantId, TradingChallengeType type, TradingChallengeStatus status, DateTime start, DateTime end }) async
    test('test listTradingChallenges', () async {
      // TODO
    });

    // Get the current deactivation status across all users
    //
    // Returns each user's latest deactivation request, i.e. their current status. Users with no deactivation history are absent. Ordered by request creation time, newest first. Integrators only see users of their own tenant, unless that tenant is global.
    //
    //Future<UserDeactivationListResponseEnvelope> listUserDeactivations({ String status, String tenantId, String tradingChallengeId, String userIds }) async
    test('test listUserDeactivations', () async {
      // TODO
    });

    // Pay current accrued leverage interest for a specific user
    //
    //Future<PayLeverageAccruedInterestResponseEnvelope> payLeverageGetAccruedInterest(PayLeverageAccruedInterestRequest payLeverageAccruedInterestRequest) async
    test('test payLeverageGetAccruedInterest', () async {
      // TODO
    });

    // Reject a pending withdrawal request
    //
    // Reject a pending withdrawal request, providing a reason for the rejection. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.
    //
    //Future<WithdrawalInitiationResponseEnvelope> rejectLedgerWithdrawRequest(String withdrawalId, WithdrawalRequestReason withdrawalRequestReason) async
    test('test rejectLedgerWithdrawRequest', () async {
      // TODO
    });

    // Reject a trading challenge registration request
    //
    // Accessible to admins (any challenge), integrators (their own tenant only) and competition managers (their assigned challenges only).
    //
    //Future<TradingChallengeRegistrationRequestResponseEnvelope> rejectTradingChallengeRegistrationRequest(String requestId, { ReviewTradingChallengeRegistrationRequest reviewTradingChallengeRegistrationRequest }) async
    test('test rejectTradingChallengeRegistrationRequest', () async {
      // TODO
    });

    // Remove users from a trading challenge
    //
    // Remove users from a trading challenge. For COMPETITION_MANAGER, the challenge must be assigned in managed_competition_ids.
    //
    //Future<TradingChallengeResponseEnvelope> removeTradingChallengeUsers(RemoveTradingChallengeUsersRequest removeTradingChallengeUsersRequest) async
    test('test removeTradingChallengeUsers', () async {
      // TODO
    });

    // Repay borrowed USD, then accrue and pay leverage interest
    //
    //Future<RepayUSDResponseEnvelope> repayUSD(RepayUSDRequest repayUSDRequest) async
    test('test repayUSD', () async {
      // TODO
    });

    // Revoke apikey for a user
    //
    //Future<RevokeAPIKeyResponseEnvelope> revokeAPIKeyForUser(String keyId) async
    test('test revokeAPIKeyForUser', () async {
      // TODO
    });

    // Revoke apikey for a user: admin or integrator only
    //
    //Future<RevokeAPIKeyResponseEnvelope> revokeAPIKeyForUserID(String userId, String keyId) async
    test('test revokeAPIKeyForUserID', () async {
      // TODO
    });

    // Settle current accrued leverage interest for a specific user
    //
    //Future<SettleLeverageAccruedInterestResponseEnvelope> settleLeverageAccruedInterest(SettleLeverageAccruedInterestRequest settleLeverageAccruedInterestRequest) async
    test('test settleLeverageAccruedInterest', () async {
      // TODO
    });

    // Mark a realized P&L settlement as settled
    //
    //Future<SettleRealizedPnlRecordResponseEnvelope> settleRealizedPnlRecord(String settlementId) async
    test('test settleRealizedPnlRecord', () async {
      // TODO
    });

    // Settle multiple transactions settlements in batch
    //
    //Future<TransactionsSettlementsResponse> settleTransactionsSettlements(TransactionsSettlementRequest transactionsSettlementRequest) async
    test('test settleTransactionsSettlements', () async {
      // TODO
    });

    // Stream real-time asset prices as map objects
    //
    // Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.
    //
    //Future<Map<String, AssetPrice>> streamAssetPrices({ String assetId }) async
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

    // Leave a trading challenge
    //
    // Convenience alias that terminates the caller's own participation; redirects to /v1/trading_challenges/{trading_challenge_id}/participants/{user_id}/terminate. End a participant's run in a challenge before its own rules would: the participant leaves, or an operator removes them. No prize is paid, even to a participant who could have claimed one -- claim the prize first if that is what you want. The account is wound down, every remaining challenge credit is swept, and the participation is marked TERMINATED and frozen: from then on it takes no further daily snapshots and never appears in the results ranking again. The user is left deactivated with no challenge balance, and is free to register for another challenge. Participants may only terminate their own run; terminating someone else's requires admin, integrator (same tenant) or challenge manager (assigned challenge) rights.
    //
    //Future<TerminateTradingChallengeResponseEnvelope> terminateOwnTradingChallengeParticipation(String tradingChallengeId) async
    test('test terminateOwnTradingChallengeParticipation', () async {
      // TODO
    });

    // Terminate a participation in a trading challenge
    //
    // End a participant's run in a challenge before its own rules would: the participant leaves, or an operator removes them. No prize is paid, even to a participant who could have claimed one -- claim the prize first if that is what you want. The account is wound down, every remaining challenge credit is swept, and the participation is marked TERMINATED and frozen: from then on it takes no further daily snapshots and never appears in the results ranking again. The user is left deactivated with no challenge balance, and is free to register for another challenge. Participants may only terminate their own run; terminating someone else's requires admin, integrator (same tenant) or challenge manager (assigned challenge) rights.
    //
    //Future<TerminateTradingChallengeResponseEnvelope> terminateTradingChallengeParticipation(String tradingChallengeId, String userId) async
    test('test terminateTradingChallengeParticipation', () async {
      // TODO
    });

    // Transfer available balance between a user's accounts
    //
    //Future<TransferAccountBalancesResponseEnvelope> transferAccountBalancesV2(TransferAccountBalancesRequest transferAccountBalancesRequest) async
    test('test transferAccountBalancesV2', () async {
      // TODO
    });

    // Transfer available balance between a user's accounts (e.g. global to isolated position)
    //
    //Future<TransferBalancesResponseEnvelope> transferAvailableBalances(TransferBalancesRequest transferBalancesRequest) async
    test('test transferAvailableBalances', () async {
      // TODO
    });

    // Update a trading challenge
    //
    // Partially update a trading challenge: a field that is absent from the body is left unchanged. Which fields may be updated depends on the challenge status. PENDING accepts every field. ACTIVE accepts only name, max_users, end and the three prize quantities, because participants are already funded and being measured. COMPLETED accepts none. A request that touches a field the current status does not allow is rejected as a whole with 409. ADMIN may update any challenge, INTEGRATOR only challenges of its own tenant, and COMPETITION_MANAGER only assigned challenge IDs.
    //
    //Future<TradingChallengeResponseEnvelope> updateTradingChallenge(String tradingChallengeId, UpdateTradingChallengeRequest updateTradingChallengeRequest) async
    test('test updateTradingChallenge', () async {
      // TODO
    });

    // Update user configuration by ID
    //
    //Future<UserUpdatedResponseEnvelope> updateUserConfig(String userId, UpdateUserConfigRequest updateUserConfigRequest) async
    test('test updateUserConfig', () async {
      // TODO
    });

    // Update user configuration for the authenticated user
    //
    //Future<UserUpdatedResponseEnvelope> updateUserConfigSelf(UpdateUserConfigRequest updateUserConfigRequest) async
    test('test updateUserConfigSelf', () async {
      // TODO
    });

    // Set or clear a user's KYC completion timestamp
    //
    //Future<UpdateUserKYCResponseEnvelope> updateUserKYC(String userId, UpdateUserKYCRequest updateUserKYCRequest) async
    test('test updateUserKYC', () async {
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
    //Future<UserUpdatedResponseEnvelope> verifyUser(String userId) async
    test('test verifyUser', () async {
      // TODO
    });

  });
}
