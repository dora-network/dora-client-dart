# dora_client.api.DefaultApi

## Load the API package
```dart
import 'package:dora_client/api.dart';
```

All URIs are relative to *https://staging.dora.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveLedgerWithdrawRequest**](DefaultApi.md#approveledgerwithdrawrequest) | **POST** /v1/ledger/withdraw/requests/{withdrawal_id}/approve | Approve a pending withdrawal request
[**cancelAllOpenOrders**](DefaultApi.md#cancelallopenorders) | **DELETE** /v1/orders | Cancel all open orders, if user passes orderbook or account_id on query params it will cancel all orders on specific orderbook or account, admin can cancel user's orders on specific orderbook
[**cancelLedgerWithdrawRequest**](DefaultApi.md#cancelledgerwithdrawrequest) | **POST** /v1/ledger/withdraw/requests/{withdrawal_id}/cancel | Cancel a pending withdrawal request
[**cancelOrderById**](DefaultApi.md#cancelorderbyid) | **DELETE** /v1/orders/{order_id} | Cancel an order by ID
[**claimLeverageGetAccruedInterest**](DefaultApi.md#claimleveragegetaccruedinterest) | **POST** /v1/leverage/accrued_interest/claim | Claim current accrued leverage interest for a specific user
[**closeIsolatedAccountV2**](DefaultApi.md#closeisolatedaccountv2) | **POST** /v2/accounts/close | Close an isolated account, repaying the borrowed
[**closeIsolatedPosition**](DefaultApi.md#closeisolatedposition) | **POST** /v1/positions/close | Close isolated positions, repaying the borrowed
[**createAPIKeyForUser**](DefaultApi.md#createapikeyforuser) | **POST** /v1/user/apikey | Create apikey for a user
[**createAPIKeyForUserID**](DefaultApi.md#createapikeyforuserid) | **POST** /v1/user/{user_id}/apikey | Create apikey for a user
[**createConditionalOrder**](DefaultApi.md#createconditionalorder) | **POST** /v1/orders/conditional | Create a new conditional orders
[**createNewIsolatedAccountV2**](DefaultApi.md#createnewisolatedaccountv2) | **POST** /v2/accounts/new_isolated | Create a new isolated account for a user transferring available assets into the account
[**createOrder**](DefaultApi.md#createorder) | **POST** /v1/orders | Create a new order
[**createUser**](DefaultApi.md#createuser) | **POST** /v1/integrators/user | Create a new user
[**deleteUser**](DefaultApi.md#deleteuser) | **DELETE** /v1/user/{user_id} | Delete user by ID
[**getAPIKeysForUserID**](DefaultApi.md#getapikeysforuserid) | **GET** /v1/user/{user_id}/apikey | Get user's api keys: admin or integrator only
[**getAllAssetPrices**](DefaultApi.md#getallassetprices) | **GET** /v1/price | Get the current price of all assets
[**getAllPositions**](DefaultApi.md#getallpositions) | **GET** /v1/ledger/positions | Get all users' positions
[**getAllWithdrawalRequests**](DefaultApi.md#getallwithdrawalrequests) | **GET** /v1/ledger/withdraw/requests | Get all withdrawal requests
[**getAssetById**](DefaultApi.md#getassetbyid) | **GET** /v1/assets/{asset_id} | Get asset by ID
[**getAssetPrice**](DefaultApi.md#getassetprice) | **GET** /v1/price/asset/{asset_id} | Get the current price of an asset
[**getAssetYTMById**](DefaultApi.md#getassetytmbyid) | **GET** /v1/assets/{asset_id}/ytm | Get annualized yield to maturity for a bond asset
[**getAssetYieldData**](DefaultApi.md#getassetyielddata) | **GET** /v1/charts/{asset_id}/yield | Get yield chart data for an asset
[**getAssetsStream**](DefaultApi.md#getassetsstream) | **GET** /v1/assets/stream | Get all inserts or updates for assets
[**getCandleData**](DefaultApi.md#getcandledata) | **GET** /v1/charts/{order_book_id}/candle | Get candlestick data for an orderbook
[**getCouponPaymentsByAssetId**](DefaultApi.md#getcouponpaymentsbyassetid) | **GET** /v1/assets/{asset_id}/coupon_payments | Get coupon payments for a bond asset
[**getL1Depth**](DefaultApi.md#getl1depth) | **GET** /v1/orderbooks/{order_book_id}/L1 | Get the top price levels for a specific orderbook (L1 market depth)
[**getL2Depth**](DefaultApi.md#getl2depth) | **GET** /v1/orderbooks/{order_book_id}/L2 | Get the aggregated price levels for a specific orderbook (L2 market depth)
[**getL3Depth**](DefaultApi.md#getl3depth) | **GET** /v1/orderbooks/{order_book_id}/L3 | Get all open orders for a specific orderbook (L3 market depth)
[**getLedgerAccountsSelfV2**](DefaultApi.md#getledgeraccountsselfv2) | **GET** /v2/ledger/accounts/self | Get your own accounts
[**getLedgerBalancesSelf**](DefaultApi.md#getledgerbalancesself) | **GET** /v1/ledger/balances/self | Get your own available, locked, and borrowed assets
[**getLedgerInterestSelf**](DefaultApi.md#getledgerinterestself) | **GET** /v1/ledger/interest/self | Get your own interest
[**getLedgerModule**](DefaultApi.md#getledgermodule) | **GET** /v1/ledger/module | Get the entire module object, including unborrowed leverage assets and total leverage trackers
[**getLedgerModuleByAsset**](DefaultApi.md#getledgermodulebyasset) | **GET** /v1/ledger/module/{asset_id} | Get the module object for a single asset ID
[**getLedgerPositionsSelf**](DefaultApi.md#getledgerpositionsself) | **GET** /v1/ledger/positions/self | Get your own positions
[**getLedgerValueSelf**](DefaultApi.md#getledgervalueself) | **GET** /v1/ledger/value/self | Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
[**getLedgerWithdrawRequestsBySelf**](DefaultApi.md#getledgerwithdrawrequestsbyself) | **GET** /v1/ledger/withdraw/requests/self | Get all pending withdrawal requests for the logged in user
[**getLedgerWithdrawRequestsByUserID**](DefaultApi.md#getledgerwithdrawrequestsbyuserid) | **GET** /v1/ledger/withdraw/requests/{user_id} | Get all pending withdrawal requests for this user
[**getOrderById**](DefaultApi.md#getorderbyid) | **GET** /v1/orders/{order_id} | Get order by ID
[**getOrderbookById**](DefaultApi.md#getorderbookbyid) | **GET** /v1/orderbooks/{order_book_id} | Get orderbook by ID
[**getOrderbookDepth**](DefaultApi.md#getorderbookdepth) | **GET** /v1/orderbooks/{order_book_id}/depth | Get the aggregated price levels for a specific orderbook (L2 market depth)
[**getOrderbookOrders**](DefaultApi.md#getorderbookorders) | **GET** /v1/orderbooks/{order_book_id}/orders | Get all open orders for a specific orderbook (L3 market depth)
[**getOrderbookStats**](DefaultApi.md#getorderbookstats) | **GET** /v1/orderbooks/{order_book_id}/stats | Get orderbook stats
[**getOrderbookStatsStream**](DefaultApi.md#getorderbookstatsstream) | **GET** /v1/orderbooks/{order_book_id}/stats/stream | Orderbook stats stream
[**getOrderbookSummary**](DefaultApi.md#getorderbooksummary) | **GET** /v1/orderbooks/{order_book_id}/summary | Get summary of an orderbook
[**getOrderbookTop**](DefaultApi.md#getorderbooktop) | **GET** /v1/orderbooks/{order_book_id}/top | Get the top price levels for a specific orderbook (L1 market depth)
[**getPLForSelfByAccount**](DefaultApi.md#getplforselfbyaccount) | **GET** /v1/pl/self | Get account-by-account PL breakdown for the logged in user
[**getPoolPrice**](DefaultApi.md#getpoolprice) | **GET** /v1/price/pool/{pool_id} | Get the current price of a pool
[**getRealizedPnlSettlements**](DefaultApi.md#getrealizedpnlsettlements) | **GET** /v1/realized_pnl_settlements | Get realized P&L settlements with filters
[**getTopTradersByPnL**](DefaultApi.md#gettoptradersbypnl) | **GET** /v1/user/ranking | Get top traders by PnL
[**getTradeById**](DefaultApi.md#gettradebyid) | **GET** /v1/trades/{trade_id} | Get a trade by ID
[**getTrades**](DefaultApi.md#gettrades) | **GET** /v1/trades | Get a filtered, paginated list of trades
[**getTransactionById**](DefaultApi.md#gettransactionbyid) | **GET** /v1/transactions/{transaction_id} | Get a transaction by ID
[**getTransactions**](DefaultApi.md#gettransactions) | **GET** /v1/transactions | Get a filtered, paginated list of transactions
[**getTransactionsSettlements**](DefaultApi.md#gettransactionssettlements) | **GET** /v1/transactions/settlements | Get transactions settlements with filters
[**getTransactionsStream**](DefaultApi.md#gettransactionsstream) | **GET** /v1/transactions/stream | Get transactions since a specific time, and open a stream for further updates
[**getUserById**](DefaultApi.md#getuserbyid) | **GET** /v1/user/{user_id} | Get user by ID (admin only)
[**getUserCouponPaymentsStream**](DefaultApi.md#getusercouponpaymentsstream) | **GET** /v1/user/{user_id}/coupon_payments/stream | Stream user's coupon payment accruals in real time
[**getUserLedgerStream**](DefaultApi.md#getuserledgerstream) | **GET** /v1/user/{user_id}/ledger/stream | Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates
[**getUserLeverageAccruedInterestStream**](DefaultApi.md#getuserleverageaccruedintereststream) | **GET** /v1/user/{user_id}/leverage/accrued_interest/stream | Stream user's current leverage accrued interest in real time
[**getUserOrderUpdatesStream**](DefaultApi.md#getuserorderupdatesstream) | **GET** /v1/user/{user_id}/orders/{order_book_id}/updates/stream | Get a snapshot of user's order updates for the given order book since a specific time, and opens a stream for further updates
[**getUserOrdersUpdatesStreamAll**](DefaultApi.md#getuserordersupdatesstreamall) | **GET** /v1/user/{user_id}/orders/all/updates/stream | Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates
[**getUserSelf**](DefaultApi.md#getuserself) | **GET** /v1/user/self | Get user details for the authenticated user
[**getUserTransactionsStream**](DefaultApi.md#getusertransactionsstream) | **GET** /v1/user/{user_id}/transactions/stream | Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates
[**getUsers**](DefaultApi.md#getusers) | **GET** /v1/user | Get all users (admin only)
[**getUsersAPIKeys**](DefaultApi.md#getusersapikeys) | **GET** /v1/user/apikey | Get user's api keys
[**ledgerDeposit**](DefaultApi.md#ledgerdeposit) | **POST** /v1/ledger/deposit/{user_id} | Deposit assets into this user's account from the outside world
[**ledgerWithdraw**](DefaultApi.md#ledgerwithdraw) | **POST** /v1/ledger/withdraw/{user_id} | Withdraw assets from this user to the outside world
[**ledgerWithdrawRequest**](DefaultApi.md#ledgerwithdrawrequest) | **POST** /v1/ledger/withdraw/requests/{user_id} | Initiate a withdrawal request for this user to the outside world
[**ledgerWithdrawRequestSelf**](DefaultApi.md#ledgerwithdrawrequestself) | **POST** /v1/ledger/withdraw/requests/self | Initiate a withdrawal request for the logged in user to the outside world
[**leverageGetAccruedInterestByUser**](DefaultApi.md#leveragegetaccruedinterestbyuser) | **GET** /v1/leverage/accrued_interest/self | Get current accrued leverage interest for the user
[**leverageGetHistoricalInterestRates**](DefaultApi.md#leveragegethistoricalinterestrates) | **GET** /v1/leverage/interest_rate/{asset_id}/historical | Get historical leverage borrowing and lending yields for a specific asset
[**leverageGetInterestRate**](DefaultApi.md#leveragegetinterestrate) | **GET** /v1/leverage/interest_rate/{asset_id} | Get leverage borrowing and lending yields for a specific asset
[**leverageIsolateCollateral**](DefaultApi.md#leverageisolatecollateral) | **POST** /v1/leverage/isolate_collateral | Create an isolated position by transferring collateral to the position from the user's global collateral
[**leverageSupply**](DefaultApi.md#leveragesupply) | **POST** /v1/leverage/supply | Supply leverage for a specific asset
[**leverageUnite**](DefaultApi.md#leverageunite) | **POST** /v1/leverage/unite | Combines all isolated positions into a single global position
[**leverageWithdraw**](DefaultApi.md#leveragewithdraw) | **POST** /v1/leverage/withdraw | Withdraw leverage for a specific asset
[**liquidityAdd**](DefaultApi.md#liquidityadd) | **POST** /v1/liquidity/pool/{pool_id}/add | Add liquidity to a pool
[**liquiditySubtract**](DefaultApi.md#liquiditysubtract) | **POST** /v1/liquidity/pool/{pool_id}/remove | Subtract liquidity from a pool
[**listAccountsSelfV2**](DefaultApi.md#listaccountsselfv2) | **GET** /v2/user/self/accounts | List all accounts for the authenticated user
[**listAssets**](DefaultApi.md#listassets) | **GET** /v1/assets | List assets
[**listOrderBooks**](DefaultApi.md#listorderbooks) | **GET** /v1/orderbooks | List order books
[**listOrders**](DefaultApi.md#listorders) | **GET** /v1/orders | List all orders
[**listPositionAccountsSelf**](DefaultApi.md#listpositionaccountsself) | **GET** /v1/user/self/position_accounts | List all position accounts for the authenticated user
[**payLeverageGetAccruedInterest**](DefaultApi.md#payleveragegetaccruedinterest) | **POST** /v1/leverage/accrued_interest/pay | Pay current accrued leverage interest for a specific user
[**rejectLedgerWithdrawRequest**](DefaultApi.md#rejectledgerwithdrawrequest) | **POST** /v1/ledger/withdraw/requests/{withdrawal_id}/reject | Reject a pending withdrawal request
[**revokeAPIKeyForUser**](DefaultApi.md#revokeapikeyforuser) | **PUT** /v1/user/apikey/{key_id}/revoke | Revoke apikey for a user
[**revokeAPIKeyForUserID**](DefaultApi.md#revokeapikeyforuserid) | **PUT** /v1/user/{user_id}/apikey/{key_id}/revoke | Revoke apikey for a user: admin or integrator only
[**settleLeverageAccruedInterest**](DefaultApi.md#settleleverageaccruedinterest) | **POST** /v1/leverage/accrued_interest/settle | Settle current accrued leverage interest for a specific user
[**settleRealizedPnlRecord**](DefaultApi.md#settlerealizedpnlrecord) | **PUT** /v1/realized_pnl_settlements/{settlement_id} | Mark a realized P&L settlement as settled
[**settleTransactionsSettlements**](DefaultApi.md#settletransactionssettlements) | **PUT** /v1/transactions/settlements | Settle multiple transactions settlements in batch
[**streamAssetPrices**](DefaultApi.md#streamassetprices) | **GET** /v1/prices/stream | Stream real-time asset prices as map objects
[**streamCandleData**](DefaultApi.md#streamcandledata) | **GET** /v1/charts/{order_book_id}/candle/stream | Get a snapshot of candlestick data from date provided, and open a stream for real-time updates
[**streamOrderBookBalances**](DefaultApi.md#streamorderbookbalances) | **GET** /v1/orderbooks/{order_book_id}/balances/stream | Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
[**streamOrderbookOpenOrders**](DefaultApi.md#streamorderbookopenorders) | **GET** /v1/orderbooks/{order_book_id}/open/stream | Get a snapshot of open orders in an order book and open a stream for real-time updates
[**streamTrades**](DefaultApi.md#streamtrades) | **GET** /v1/trades/{order_book_id}/stream | Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates
[**transferAccountBalancesV2**](DefaultApi.md#transferaccountbalancesv2) | **POST** /v2/accounts/transfer_balances | Transfer available balance between a user's accounts
[**transferAvailableBalances**](DefaultApi.md#transferavailablebalances) | **POST** /v1/positions/transfer_balances | Transfer available balance between a user's accounts (e.g. global to isolated position)
[**updateUserConfig**](DefaultApi.md#updateuserconfig) | **PUT** /v1/user/{user_id}/config | Update user configuration by ID
[**updateUserConfigSelf**](DefaultApi.md#updateuserconfigself) | **PUT** /v1/user/config/self | Update user configuration for the authenticated user
[**validateSubmitOrder**](DefaultApi.md#validatesubmitorder) | **POST** /v1/orders/validate | Validate submit order request data
[**verifyUser**](DefaultApi.md#verifyuser) | **PUT** /v1/user/{user_id}/verify | Verify a user by ID


# **approveLedgerWithdrawRequest**
> WithdrawalInitiationResponseEnvelope approveLedgerWithdrawRequest(withdrawalId, withdrawalRequestReason)

Approve a pending withdrawal request

Approve a pending withdrawal request, allowing the transfer of assets to the outside world to proceed. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final withdrawalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final withdrawalRequestReason = WithdrawalRequestReason(); // WithdrawalRequestReason | 

try {
    final result = api_instance.approveLedgerWithdrawRequest(withdrawalId, withdrawalRequestReason);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->approveLedgerWithdrawRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withdrawalId** | **String**|  | 
 **withdrawalRequestReason** | [**WithdrawalRequestReason**](WithdrawalRequestReason.md)|  | [optional] 

### Return type

[**WithdrawalInitiationResponseEnvelope**](WithdrawalInitiationResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelAllOpenOrders**
> ListOrdersResponseEnvelope cancelAllOpenOrders(orderBookId, userId, accountId, orderKind)

Cancel all open orders, if user passes orderbook or account_id on query params it will cancel all orders on specific orderbook or account, admin can cancel user's orders on specific orderbook

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final orderBookId = orderBookId_example; // String | 
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final accountId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final orderKind = ; // OrderKind | 

try {
    final result = api_instance.cancelAllOpenOrders(orderBookId, userId, accountId, orderKind);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->cancelAllOpenOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **accountId** | **String**|  | [optional] 
 **orderKind** | [**OrderKind**](.md)|  | [optional] 

### Return type

[**ListOrdersResponseEnvelope**](ListOrdersResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelLedgerWithdrawRequest**
> WithdrawalInitiationResponseEnvelope cancelLedgerWithdrawRequest(withdrawalId, withdrawalRequestReason)

Cancel a pending withdrawal request

Cancel a pending withdrawal request, providing an optional reason for the cancellation.

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final withdrawalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final withdrawalRequestReason = WithdrawalRequestReason(); // WithdrawalRequestReason | 

try {
    final result = api_instance.cancelLedgerWithdrawRequest(withdrawalId, withdrawalRequestReason);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->cancelLedgerWithdrawRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withdrawalId** | **String**|  | 
 **withdrawalRequestReason** | [**WithdrawalRequestReason**](WithdrawalRequestReason.md)|  | [optional] 

### Return type

[**WithdrawalInitiationResponseEnvelope**](WithdrawalInitiationResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelOrderById**
> CancelOrderResponseEnvelope cancelOrderById(orderId)

Cancel an order by ID

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.cancelOrderById(orderId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->cancelOrderById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**CancelOrderResponseEnvelope**](CancelOrderResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **claimLeverageGetAccruedInterest**
> ClaimLeverageAccruedInterestResponseEnvelope claimLeverageGetAccruedInterest(claimLeverageAccruedInterestRequest)

Claim current accrued leverage interest for a specific user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final claimLeverageAccruedInterestRequest = ClaimLeverageAccruedInterestRequest(); // ClaimLeverageAccruedInterestRequest | 

try {
    final result = api_instance.claimLeverageGetAccruedInterest(claimLeverageAccruedInterestRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->claimLeverageGetAccruedInterest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **claimLeverageAccruedInterestRequest** | [**ClaimLeverageAccruedInterestRequest**](ClaimLeverageAccruedInterestRequest.md)|  | 

### Return type

[**ClaimLeverageAccruedInterestResponseEnvelope**](ClaimLeverageAccruedInterestResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **closeIsolatedAccountV2**
> ClosePositionResponseEnvelope closeIsolatedAccountV2(closeAccountRequest)

Close an isolated account, repaying the borrowed

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final closeAccountRequest = CloseAccountRequest(); // CloseAccountRequest | 

try {
    final result = api_instance.closeIsolatedAccountV2(closeAccountRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->closeIsolatedAccountV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **closeAccountRequest** | [**CloseAccountRequest**](CloseAccountRequest.md)|  | 

### Return type

[**ClosePositionResponseEnvelope**](ClosePositionResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **closeIsolatedPosition**
> ClosePositionResponseEnvelope closeIsolatedPosition(closePositionRequest)

Close isolated positions, repaying the borrowed

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final closePositionRequest = ClosePositionRequest(); // ClosePositionRequest | 

try {
    final result = api_instance.closeIsolatedPosition(closePositionRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->closeIsolatedPosition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **closePositionRequest** | [**ClosePositionRequest**](ClosePositionRequest.md)|  | 

### Return type

[**ClosePositionResponseEnvelope**](ClosePositionResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAPIKeyForUser**
> CreateAPIKeyResponseEnvelope createAPIKeyForUser(createAPIKeyRequest)

Create apikey for a user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final createAPIKeyRequest = CreateAPIKeyRequest(); // CreateAPIKeyRequest | 

try {
    final result = api_instance.createAPIKeyForUser(createAPIKeyRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->createAPIKeyForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAPIKeyRequest** | [**CreateAPIKeyRequest**](CreateAPIKeyRequest.md)|  | 

### Return type

[**CreateAPIKeyResponseEnvelope**](CreateAPIKeyResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAPIKeyForUserID**
> CreateAPIKeyResponseEnvelope createAPIKeyForUserID(userId, createAPIKeyRequest)

Create apikey for a user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = userId_example; // String | 
final createAPIKeyRequest = CreateAPIKeyRequest(); // CreateAPIKeyRequest | 

try {
    final result = api_instance.createAPIKeyForUserID(userId, createAPIKeyRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->createAPIKeyForUserID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **createAPIKeyRequest** | [**CreateAPIKeyRequest**](CreateAPIKeyRequest.md)|  | 

### Return type

[**CreateAPIKeyResponseEnvelope**](CreateAPIKeyResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createConditionalOrder**
> CreateConditionalOrderResponseEnvelope createConditionalOrder(createConditionalOrderRequest)

Create a new conditional orders

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final createConditionalOrderRequest = CreateConditionalOrderRequest(); // CreateConditionalOrderRequest | 

try {
    final result = api_instance.createConditionalOrder(createConditionalOrderRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->createConditionalOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConditionalOrderRequest** | [**CreateConditionalOrderRequest**](CreateConditionalOrderRequest.md)|  | 

### Return type

[**CreateConditionalOrderResponseEnvelope**](CreateConditionalOrderResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNewIsolatedAccountV2**
> NewIsolatedAccountResponseV2Envelope createNewIsolatedAccountV2(newIsolatedAccountRequestV2)

Create a new isolated account for a user transferring available assets into the account

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final newIsolatedAccountRequestV2 = NewIsolatedAccountRequestV2(); // NewIsolatedAccountRequestV2 | 

try {
    final result = api_instance.createNewIsolatedAccountV2(newIsolatedAccountRequestV2);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->createNewIsolatedAccountV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newIsolatedAccountRequestV2** | [**NewIsolatedAccountRequestV2**](NewIsolatedAccountRequestV2.md)|  | 

### Return type

[**NewIsolatedAccountResponseV2Envelope**](NewIsolatedAccountResponseV2Envelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrder**
> CreateOrderResponseEnvelope createOrder(createOrderRequest)

Create a new order

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final createOrderRequest = CreateOrderRequest(); // CreateOrderRequest | 

try {
    final result = api_instance.createOrder(createOrderRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->createOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrderRequest** | [**CreateOrderRequest**](CreateOrderRequest.md)|  | 

### Return type

[**CreateOrderResponseEnvelope**](CreateOrderResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> UserCreatedResponseEnvelope createUser(createIntegratorUserRequest)

Create a new user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final createIntegratorUserRequest = CreateIntegratorUserRequest(); // CreateIntegratorUserRequest | 

try {
    final result = api_instance.createUser(createIntegratorUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createIntegratorUserRequest** | [**CreateIntegratorUserRequest**](CreateIntegratorUserRequest.md)|  | 

### Return type

[**UserCreatedResponseEnvelope**](UserCreatedResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> UserDeletedResponseEnvelope deleteUser(userId)

Delete user by ID

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserDeletedResponseEnvelope**](UserDeletedResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIKeysForUserID**
> APIKeyResponseEnvelope getAPIKeysForUserID(userId)

Get user's api keys: admin or integrator only

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getAPIKeysForUserID(userId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAPIKeysForUserID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**APIKeyResponseEnvelope**](APIKeyResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAssetPrices**
> ListAssetPriceResponseEnvelope getAllAssetPrices()

Get the current price of all assets

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getAllAssetPrices();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAllAssetPrices: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAssetPriceResponseEnvelope**](ListAssetPriceResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPositions**
> AllPositionsResponseEnvelope getAllPositions()

Get all users' positions

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getAllPositions();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAllPositions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AllPositionsResponseEnvelope**](AllPositionsResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithdrawalRequests**
> AllWithdrawalInitiationsResponseEnvelope getAllWithdrawalRequests(status)

Get all withdrawal requests

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final status = status_example; // String | 

try {
    final result = api_instance.getAllWithdrawalRequests(status);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAllWithdrawalRequests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 

### Return type

[**AllWithdrawalInitiationsResponseEnvelope**](AllWithdrawalInitiationsResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetById**
> GetAssetByIDResponseEnvelope getAssetById(assetId)

Get asset by ID

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getAssetById(assetId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAssetById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 

### Return type

[**GetAssetByIDResponseEnvelope**](GetAssetByIDResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetPrice**
> AssetPriceResponseEnvelope getAssetPrice(assetId)

Get the current price of an asset

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getAssetPrice(assetId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAssetPrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 

### Return type

[**AssetPriceResponseEnvelope**](AssetPriceResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetYTMById**
> GetAssetYTMByIDResponseEnvelope getAssetYTMById(assetId)

Get annualized yield to maturity for a bond asset

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getAssetYTMById(assetId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAssetYTMById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 

### Return type

[**GetAssetYTMByIDResponseEnvelope**](GetAssetYTMByIDResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetYieldData**
> ListAssetYieldResponseEnvelope getAssetYieldData(assetId, start, end, resolution)

Get yield chart data for an asset

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final start = 2013-10-20T19:20:30+01:00; // DateTime | 
final end = 2013-10-20T19:20:30+01:00; // DateTime | 
final resolution = ; // AssetYieldResolution | 

try {
    final result = api_instance.getAssetYieldData(assetId, start, end, resolution);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAssetYieldData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 
 **start** | **DateTime**|  | 
 **end** | **DateTime**|  | 
 **resolution** | [**AssetYieldResolution**](.md)|  | 

### Return type

[**ListAssetYieldResponseEnvelope**](ListAssetYieldResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetsStream**
> List<StreamAssetsEntry> getAssetsStream(since, until)

Get all inserts or updates for assets

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final until = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getAssetsStream(since, until);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAssetsStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **until** | **DateTime**|  | [optional] 

### Return type

[**List<StreamAssetsEntry>**](StreamAssetsEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCandleData**
> ListCandlesResponseEnvelope getCandleData(orderBookId, start, end, resolution)

Get candlestick data for an orderbook

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = orderBookId_example; // String | 
final start = 2013-10-20T19:20:30+01:00; // DateTime | 
final end = 2013-10-20T19:20:30+01:00; // DateTime | 
final resolution = ; // CandleResolution | 

try {
    final result = api_instance.getCandleData(orderBookId, start, end, resolution);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getCandleData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 
 **start** | **DateTime**|  | 
 **end** | **DateTime**|  | 
 **resolution** | [**CandleResolution**](.md)|  | [optional] 

### Return type

[**ListCandlesResponseEnvelope**](ListCandlesResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponPaymentsByAssetId**
> ListCouponPaymentsResponseEnvelope getCouponPaymentsByAssetId(assetId)

Get coupon payments for a bond asset

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getCouponPaymentsByAssetId(assetId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getCouponPaymentsByAssetId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 

### Return type

[**ListCouponPaymentsResponseEnvelope**](ListCouponPaymentsResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getL1Depth**
> GetTopOfBookResponseEnvelope getL1Depth(orderBookId)

Get the top price levels for a specific orderbook (L1 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getL1Depth(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getL1Depth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**GetTopOfBookResponseEnvelope**](GetTopOfBookResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getL2Depth**
> ListOrderBookDepthResponseEnvelope getL2Depth(orderBookId)

Get the aggregated price levels for a specific orderbook (L2 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getL2Depth(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getL2Depth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**ListOrderBookDepthResponseEnvelope**](ListOrderBookDepthResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getL3Depth**
> ListOrdersResponseEnvelope getL3Depth(orderBookId)

Get all open orders for a specific orderbook (L3 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getL3Depth(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getL3Depth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**ListOrdersResponseEnvelope**](ListOrdersResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerAccountsSelfV2**
> LedgerAccountsResponseV2Envelope getLedgerAccountsSelfV2()

Get your own accounts

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getLedgerAccountsSelfV2();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerAccountsSelfV2: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LedgerAccountsResponseV2Envelope**](LedgerAccountsResponseV2Envelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerBalancesSelf**
> UserBalanceResponseEnvelope getLedgerBalancesSelf()

Get your own available, locked, and borrowed assets

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getLedgerBalancesSelf();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerBalancesSelf: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserBalanceResponseEnvelope**](UserBalanceResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerInterestSelf**
> UserInterestResponseEnvelope getLedgerInterestSelf()

Get your own interest

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getLedgerInterestSelf();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerInterestSelf: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInterestResponseEnvelope**](UserInterestResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerModule**
> LedgerModuleResponseEnvelope getLedgerModule()

Get the entire module object, including unborrowed leverage assets and total leverage trackers

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getLedgerModule();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerModule: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LedgerModuleResponseEnvelope**](LedgerModuleResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerModuleByAsset**
> LedgerModuleByAssetResponseEnvelope getLedgerModuleByAsset(assetId)

Get the module object for a single asset ID

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getLedgerModuleByAsset(assetId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerModuleByAsset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 

### Return type

[**LedgerModuleByAssetResponseEnvelope**](LedgerModuleByAssetResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerPositionsSelf**
> UserPositionResponseEnvelope getLedgerPositionsSelf()

Get your own positions

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getLedgerPositionsSelf();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerPositionsSelf: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserPositionResponseEnvelope**](UserPositionResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerValueSelf**
> UserValueResponseEnvelope getLedgerValueSelf()

Get your own available, locked, and borrowed USD value; and realized and unrealized PnL

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getLedgerValueSelf();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerValueSelf: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserValueResponseEnvelope**](UserValueResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerWithdrawRequestsBySelf**
> AllWithdrawalInitiationsResponseEnvelope getLedgerWithdrawRequestsBySelf(status)

Get all pending withdrawal requests for the logged in user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final status = status_example; // String | 

try {
    final result = api_instance.getLedgerWithdrawRequestsBySelf(status);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerWithdrawRequestsBySelf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 

### Return type

[**AllWithdrawalInitiationsResponseEnvelope**](AllWithdrawalInitiationsResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerWithdrawRequestsByUserID**
> AllWithdrawalInitiationsResponseEnvelope getLedgerWithdrawRequestsByUserID(userId, status)

Get all pending withdrawal requests for this user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final status = status_example; // String | 

try {
    final result = api_instance.getLedgerWithdrawRequestsByUserID(userId, status);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLedgerWithdrawRequestsByUserID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **status** | **String**|  | [optional] 

### Return type

[**AllWithdrawalInitiationsResponseEnvelope**](AllWithdrawalInitiationsResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
> OrderResponseEnvelope getOrderById(orderId)

Get order by ID

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderById(orderId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**OrderResponseEnvelope**](OrderResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookById**
> OrderBookResponseEnvelope getOrderbookById(orderBookId)

Get orderbook by ID

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderbookById(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderbookById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**OrderBookResponseEnvelope**](OrderBookResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookDepth**
> ListOrderBookDepthResponseEnvelope getOrderbookDepth(orderBookId)

Get the aggregated price levels for a specific orderbook (L2 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderbookDepth(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderbookDepth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**ListOrderBookDepthResponseEnvelope**](ListOrderBookDepthResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookOrders**
> ListOrdersResponseEnvelope getOrderbookOrders(orderBookId)

Get all open orders for a specific orderbook (L3 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderbookOrders(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderbookOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**ListOrdersResponseEnvelope**](ListOrdersResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookStats**
> OrderbookStatsResponseEnvelope getOrderbookStats(orderBookId)

Get orderbook stats

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderbookStats(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderbookStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**OrderbookStatsResponseEnvelope**](OrderbookStatsResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookStatsStream**
> OrderbookStats getOrderbookStatsStream(orderBookId)

Orderbook stats stream

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderbookStatsStream(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderbookStatsStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**OrderbookStats**](OrderbookStats.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookSummary**
> OrderBookSummaryResponseEnvelope getOrderbookSummary(orderBookId)

Get summary of an orderbook

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderbookSummary(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderbookSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**OrderBookSummaryResponseEnvelope**](OrderBookSummaryResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookTop**
> GetTopOfBookResponseEnvelope getOrderbookTop(orderBookId)

Get the top price levels for a specific orderbook (L1 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getOrderbookTop(orderBookId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrderbookTop: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 

### Return type

[**GetTopOfBookResponseEnvelope**](GetTopOfBookResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPLForSelfByAccount**
> PLResponseEnvelope getPLForSelfByAccount()

Get account-by-account PL breakdown for the logged in user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getPLForSelfByAccount();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getPLForSelfByAccount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PLResponseEnvelope**](PLResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoolPrice**
> PoolPriceResponseEnvelope getPoolPrice(poolId)

Get the current price of a pool

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getPoolPrice(poolId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getPoolPrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 

### Return type

[**PoolPriceResponseEnvelope**](PoolPriceResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRealizedPnlSettlements**
> GetRealizedPnlSettlementsResponseEnvelope getRealizedPnlSettlements(userId, tenantId, positionId, createdAfter, createdBefore, settledAfter, settledBefore, isSettled)

Get realized P&L settlements with filters

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final tenantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final positionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createdAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
final createdBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
final settledAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
final settledBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
final isSettled = true; // bool | 

try {
    final result = api_instance.getRealizedPnlSettlements(userId, tenantId, positionId, createdAfter, createdBefore, settledAfter, settledBefore, isSettled);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getRealizedPnlSettlements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **tenantId** | **String**|  | [optional] 
 **positionId** | **String**|  | [optional] 
 **createdAfter** | **DateTime**|  | [optional] 
 **createdBefore** | **DateTime**|  | [optional] 
 **settledAfter** | **DateTime**|  | [optional] 
 **settledBefore** | **DateTime**|  | [optional] 
 **isSettled** | **bool**|  | [optional] 

### Return type

[**GetRealizedPnlSettlementsResponseEnvelope**](GetRealizedPnlSettlementsResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopTradersByPnL**
> GetPnLRankingResponse getTopTradersByPnL(start, end, limit)

Get top traders by PnL

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final start = 2013-10-20T19:20:30+01:00; // DateTime | 
final end = 2013-10-20T19:20:30+01:00; // DateTime | 
final limit = 56; // int | 

try {
    final result = api_instance.getTopTradersByPnL(start, end, limit);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getTopTradersByPnL: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **DateTime**|  | 
 **end** | **DateTime**|  | 
 **limit** | **int**|  | [optional] 

### Return type

[**GetPnLRankingResponse**](GetPnLRankingResponse.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTradeById**
> TradeResponseEnvelope getTradeById(tradeId)

Get a trade by ID

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final tradeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getTradeById(tradeId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getTradeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tradeId** | **String**|  | 

### Return type

[**TradeResponseEnvelope**](TradeResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrades**
> ListTradeResponseEnvelope getTrades(orderBookIds, userIds, start, end, page, limit)

Get a filtered, paginated list of trades

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final orderBookIds = []; // List<String> | 
final userIds = []; // List<String> | 
final start = 2013-10-20T19:20:30+01:00; // DateTime | 
final end = 2013-10-20T19:20:30+01:00; // DateTime | 
final page = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.getTrades(orderBookIds, userIds, start, end, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getTrades: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookIds** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **userIds** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListTradeResponseEnvelope**](ListTradeResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionById**
> TransactionResponseEnvelope getTransactionById(transactionId)

Get a transaction by ID

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final transactionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getTransactionById(transactionId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getTransactionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | **String**|  | 

### Return type

[**TransactionResponseEnvelope**](TransactionResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactions**
> ListTransactionsResponseEnvelope getTransactions(pools, userIds, txKinds, start, end, tenantId, page, limit)

Get a filtered, paginated list of transactions

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final pools = []; // List<String> | 
final userIds = []; // List<String> | 
final txKinds = []; // List<TransactionKind> | 
final start = 2013-10-20T19:20:30+01:00; // DateTime | 
final end = 2013-10-20T19:20:30+01:00; // DateTime | 
final tenantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.getTransactions(pools, userIds, txKinds, start, end, tenantId, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pools** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **userIds** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **txKinds** | [**List<TransactionKind>**](TransactionKind.md)|  | [optional] [default to const []]
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 
 **tenantId** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListTransactionsResponseEnvelope**](ListTransactionsResponseEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionsSettlements**
> TransactionsSettlementsResponseEnvelope getTransactionsSettlements(tenantId, userId, positionId, txKind, createdAfter, createdBefore, settledAfter, settledBefore, isSettled)

Get transactions settlements with filters

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final tenantId = tenantId_example; // String | Tenant ID to filter settlements
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | User ID to filter settlements
final positionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Position ID to filter settlements
final txKind = txKind_example; // String | Transaction kind to filter settlements
final createdAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter settlements created after this time
final createdBefore = 2013-10-20T19:20:30+01:00; // DateTime | Filter settlements created before this time
final settledAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter settlements settled after this time
final settledBefore = 2013-10-20T19:20:30+01:00; // DateTime | Filter settlements settled before this time
final isSettled = true; // bool | Filter settlements by settlement status

try {
    final result = api_instance.getTransactionsSettlements(tenantId, userId, positionId, txKind, createdAfter, createdBefore, settledAfter, settledBefore, isSettled);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getTransactionsSettlements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **String**| Tenant ID to filter settlements | [optional] 
 **userId** | **String**| User ID to filter settlements | [optional] 
 **positionId** | **String**| Position ID to filter settlements | [optional] 
 **txKind** | **String**| Transaction kind to filter settlements | [optional] 
 **createdAfter** | **DateTime**| Filter settlements created after this time | [optional] 
 **createdBefore** | **DateTime**| Filter settlements created before this time | [optional] 
 **settledAfter** | **DateTime**| Filter settlements settled after this time | [optional] 
 **settledBefore** | **DateTime**| Filter settlements settled before this time | [optional] 
 **isSettled** | **bool**| Filter settlements by settlement status | [optional] 

### Return type

[**TransactionsSettlementsResponseEnvelope**](TransactionsSettlementsResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionsStream**
> List<StreamTransactionsEntry> getTransactionsStream(since)

Get transactions since a specific time, and open a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getTransactionsStream(since);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getTransactionsStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 

### Return type

[**List<StreamTransactionsEntry>**](StreamTransactionsEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> UserEnvelope getUserById(userId)

Get user by ID (admin only)

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getUserById(userId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserCouponPaymentsStream**
> StreamUserCouponPaymentsResponse getUserCouponPaymentsStream(userId)

Stream user's coupon payment accruals in real time

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthQuery
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getUserCouponPaymentsStream(userId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserCouponPaymentsStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**StreamUserCouponPaymentsResponse**](StreamUserCouponPaymentsResponse.md)

### Authorization

[apiKeyAuthQuery](../README.md#apiKeyAuthQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLedgerStream**
> List<StreamPositionsEntry> getUserLedgerStream(userId)

Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthQuery
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getUserLedgerStream(userId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserLedgerStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<StreamPositionsEntry>**](StreamPositionsEntry.md)

### Authorization

[apiKeyAuthQuery](../README.md#apiKeyAuthQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLeverageAccruedInterestStream**
> StreamCurrentLeverageAccruedInterestResponse getUserLeverageAccruedInterestStream(userId)

Stream user's current leverage accrued interest in real time

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthQuery
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getUserLeverageAccruedInterestStream(userId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserLeverageAccruedInterestStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**StreamCurrentLeverageAccruedInterestResponse**](StreamCurrentLeverageAccruedInterestResponse.md)

### Authorization

[apiKeyAuthQuery](../README.md#apiKeyAuthQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserOrderUpdatesStream**
> List<StreamOrderUpdatesEntry> getUserOrderUpdatesStream(userId, orderBookId, since)

Get a snapshot of user's order updates for the given order book since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthQuery
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getUserOrderUpdatesStream(userId, orderBookId, since);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserOrderUpdatesStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **orderBookId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**List<StreamOrderUpdatesEntry>**](StreamOrderUpdatesEntry.md)

### Authorization

[apiKeyAuthQuery](../README.md#apiKeyAuthQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserOrdersUpdatesStreamAll**
> List<StreamOrderUpdatesEntry> getUserOrdersUpdatesStreamAll(userId, since)

Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthQuery
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getUserOrdersUpdatesStreamAll(userId, since);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserOrdersUpdatesStreamAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**List<StreamOrderUpdatesEntry>**](StreamOrderUpdatesEntry.md)

### Authorization

[apiKeyAuthQuery](../README.md#apiKeyAuthQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSelf**
> UserEnvelope getUserSelf()

Get user details for the authenticated user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getUserSelf();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserSelf: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTransactionsStream**
> List<StreamTransactionsEntry> getUserTransactionsStream(userId, since)

Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthQuery
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthQuery').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getUserTransactionsStream(userId, since);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserTransactionsStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**List<StreamTransactionsEntry>**](StreamTransactionsEntry.md)

### Authorization

[apiKeyAuthQuery](../README.md#apiKeyAuthQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> ListUsersResponseEnvelope getUsers(id, limit, offset, email, firstName, lastName, countryOfDomicile)

Get all users (admin only)

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final limit = 56; // int | 
final offset = 56; // int | 
final email = email_example; // String | 
final firstName = firstName_example; // String | 
final lastName = lastName_example; // String | 
final countryOfDomicile = ; // CountryCode | 

try {
    final result = api_instance.getUsers(id, limit, offset, email, firstName, lastName, countryOfDomicile);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 100]
 **offset** | **int**|  | [optional] [default to 0]
 **email** | **String**|  | [optional] 
 **firstName** | **String**|  | [optional] 
 **lastName** | **String**|  | [optional] 
 **countryOfDomicile** | [**CountryCode**](.md)|  | [optional] 

### Return type

[**ListUsersResponseEnvelope**](ListUsersResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersAPIKeys**
> APIKeyResponseEnvelope getUsersAPIKeys()

Get user's api keys

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.getUsersAPIKeys();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUsersAPIKeys: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIKeyResponseEnvelope**](APIKeyResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ledgerDeposit**
> FundUserResponseEnvelope ledgerDeposit(userId, fundUserRequest)

Deposit assets into this user's account from the outside world

Deposit assets into this user's account from the outside world. Note that this does not interact with any external systems; it simply adds the amount to the user's available balance in the ledger. Actual transfer of assets must be handled separately.

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final fundUserRequest = FundUserRequest(); // FundUserRequest | 

try {
    final result = api_instance.ledgerDeposit(userId, fundUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->ledgerDeposit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **fundUserRequest** | [**FundUserRequest**](FundUserRequest.md)|  | 

### Return type

[**FundUserResponseEnvelope**](FundUserResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ledgerWithdraw**
> FundUserResponseEnvelope ledgerWithdraw(userId, defundUserRequest, status)

Withdraw assets from this user to the outside world

Withdraw assets from this user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final defundUserRequest = DefundUserRequest(); // DefundUserRequest | 
final status = status_example; // String | 

try {
    final result = api_instance.ledgerWithdraw(userId, defundUserRequest, status);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->ledgerWithdraw: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **defundUserRequest** | [**DefundUserRequest**](DefundUserRequest.md)|  | 
 **status** | **String**|  | [optional] 

### Return type

[**FundUserResponseEnvelope**](FundUserResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ledgerWithdrawRequest**
> WithdrawalInitiationResponseEnvelope ledgerWithdrawRequest(userId, defundUserRequest)

Initiate a withdrawal request for this user to the outside world

Withdraw assets from this user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final defundUserRequest = DefundUserRequest(); // DefundUserRequest | 

try {
    final result = api_instance.ledgerWithdrawRequest(userId, defundUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->ledgerWithdrawRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **defundUserRequest** | [**DefundUserRequest**](DefundUserRequest.md)|  | 

### Return type

[**WithdrawalInitiationResponseEnvelope**](WithdrawalInitiationResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ledgerWithdrawRequestSelf**
> WithdrawalInitiationResponseEnvelope ledgerWithdrawRequestSelf(userId, defundUserRequest)

Initiate a withdrawal request for the logged in user to the outside world

Withdraw assets from the logged in user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final defundUserRequest = DefundUserRequest(); // DefundUserRequest | 

try {
    final result = api_instance.ledgerWithdrawRequestSelf(userId, defundUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->ledgerWithdrawRequestSelf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **defundUserRequest** | [**DefundUserRequest**](DefundUserRequest.md)|  | 

### Return type

[**WithdrawalInitiationResponseEnvelope**](WithdrawalInitiationResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageGetAccruedInterestByUser**
> CurrentLeverageAccruedInterestResponseEnvelope leverageGetAccruedInterestByUser(positionId, assetId)

Get current accrued leverage interest for the user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final positionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.leverageGetAccruedInterestByUser(positionId, assetId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->leverageGetAccruedInterestByUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **positionId** | **String**|  | [optional] 
 **assetId** | **String**|  | [optional] 

### Return type

[**CurrentLeverageAccruedInterestResponseEnvelope**](CurrentLeverageAccruedInterestResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageGetHistoricalInterestRates**
> HistoricalLeverageInterestRatesResponseEnvelope leverageGetHistoricalInterestRates(assetId, start, end)

Get historical leverage borrowing and lending yields for a specific asset

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final start = 2013-10-20T19:20:30+01:00; // DateTime | 
final end = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.leverageGetHistoricalInterestRates(assetId, start, end);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->leverageGetHistoricalInterestRates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 

### Return type

[**HistoricalLeverageInterestRatesResponseEnvelope**](HistoricalLeverageInterestRatesResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageGetInterestRate**
> LeverageInterestRateResponseEnvelope leverageGetInterestRate(assetId, start, end)

Get leverage borrowing and lending yields for a specific asset

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final start = 2013-10-20T19:20:30+01:00; // DateTime | 
final end = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.leverageGetInterestRate(assetId, start, end);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->leverageGetInterestRate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | 
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 

### Return type

[**LeverageInterestRateResponseEnvelope**](LeverageInterestRateResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageIsolateCollateral**
> IsolateCollateralResponse leverageIsolateCollateral(isolateCollateralRequest)

Create an isolated position by transferring collateral to the position from the user's global collateral

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final isolateCollateralRequest = IsolateCollateralRequest(); // IsolateCollateralRequest | 

try {
    final result = api_instance.leverageIsolateCollateral(isolateCollateralRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->leverageIsolateCollateral: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isolateCollateralRequest** | [**IsolateCollateralRequest**](IsolateCollateralRequest.md)|  | 

### Return type

[**IsolateCollateralResponse**](IsolateCollateralResponse.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageSupply**
> SupplyResponseEnvelope leverageSupply(supplyRequest)

Supply leverage for a specific asset

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final supplyRequest = SupplyRequest(); // SupplyRequest | 

try {
    final result = api_instance.leverageSupply(supplyRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->leverageSupply: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplyRequest** | [**SupplyRequest**](SupplyRequest.md)|  | 

### Return type

[**SupplyResponseEnvelope**](SupplyResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageUnite**
> UnitePositionResponseEnvelope leverageUnite(unitePositionRequest)

Combines all isolated positions into a single global position

Combines all isolated positions into a single global position

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final unitePositionRequest = UnitePositionRequest(); // UnitePositionRequest | 

try {
    final result = api_instance.leverageUnite(unitePositionRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->leverageUnite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unitePositionRequest** | [**UnitePositionRequest**](UnitePositionRequest.md)|  | 

### Return type

[**UnitePositionResponseEnvelope**](UnitePositionResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageWithdraw**
> WithdrawResponseEnvelope leverageWithdraw(withdrawRequest)

Withdraw leverage for a specific asset

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final withdrawRequest = WithdrawRequest(); // WithdrawRequest | 

try {
    final result = api_instance.leverageWithdraw(withdrawRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->leverageWithdraw: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withdrawRequest** | [**WithdrawRequest**](WithdrawRequest.md)|  | 

### Return type

[**WithdrawResponseEnvelope**](WithdrawResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **liquidityAdd**
> LiquidityResponseEnvelope liquidityAdd(poolId, liquidityRequest)

Add liquidity to a pool

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final liquidityRequest = LiquidityRequest(); // LiquidityRequest | 

try {
    final result = api_instance.liquidityAdd(poolId, liquidityRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->liquidityAdd: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 
 **liquidityRequest** | [**LiquidityRequest**](LiquidityRequest.md)|  | 

### Return type

[**LiquidityResponseEnvelope**](LiquidityResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **liquiditySubtract**
> LiquidityResponseEnvelope liquiditySubtract(poolId, liquidityRequest)

Subtract liquidity from a pool

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final liquidityRequest = LiquidityRequest(); // LiquidityRequest | 

try {
    final result = api_instance.liquiditySubtract(poolId, liquidityRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->liquiditySubtract: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 
 **liquidityRequest** | [**LiquidityRequest**](LiquidityRequest.md)|  | 

### Return type

[**LiquidityResponseEnvelope**](LiquidityResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountsSelfV2**
> ListAccountsResponseV2Envelope listAccountsSelfV2()

List all accounts for the authenticated user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.listAccountsSelfV2();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listAccountsSelfV2: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAccountsResponseV2Envelope**](ListAccountsResponseV2Envelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAssets**
> ResponseEnvelopeOfListAssets listAssets(createdAfter, createdBefore, assetKind, canAddLiquidity, canDirectBorrow, canOnboard, canTrade, canVirtualBorrow, page, limit)

List assets

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final createdAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
final createdBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
final assetKind = ; // AssetKind | Asset kind (BOND, CURRENCY, INTEREST, POOL_SHARE)
final canAddLiquidity = true; // bool | 
final canDirectBorrow = true; // bool | 
final canOnboard = true; // bool | 
final canTrade = true; // bool | 
final canVirtualBorrow = true; // bool | 
final page = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.listAssets(createdAfter, createdBefore, assetKind, canAddLiquidity, canDirectBorrow, canOnboard, canTrade, canVirtualBorrow, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listAssets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createdAfter** | **DateTime**|  | [optional] 
 **createdBefore** | **DateTime**|  | [optional] 
 **assetKind** | [**AssetKind**](.md)| Asset kind (BOND, CURRENCY, INTEREST, POOL_SHARE) | [optional] 
 **canAddLiquidity** | **bool**|  | [optional] 
 **canDirectBorrow** | **bool**|  | [optional] 
 **canOnboard** | **bool**|  | [optional] 
 **canTrade** | **bool**|  | [optional] 
 **canVirtualBorrow** | **bool**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ResponseEnvelopeOfListAssets**](ResponseEnvelopeOfListAssets.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrderBooks**
> ListOrderbookResponseEnvelope listOrderBooks(status, baseAssetId, quoteAssetId, page, limit)

List order books

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final status = []; // List<OrderBookStatus> | 
final baseAssetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final quoteAssetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.listOrderBooks(status, baseAssetId, quoteAssetId, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listOrderBooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**List<OrderBookStatus>**](OrderBookStatus.md)|  | [optional] [default to const []]
 **baseAssetId** | **String**|  | [optional] 
 **quoteAssetId** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListOrderbookResponseEnvelope**](ListOrderbookResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrders**
> ListOrdersResponseEnvelope listOrders(userId, orderBookId, kind, status, side, from, to, page, limit)

List all orders

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by user ID (only allowed if the user has copy trading enabled)
final orderBookId = []; // List<String> | 
final kind = []; // List<OrderKind> | 
final status = []; // List<OrderStatus> | 
final side = ; // Side | 
final from = 2013-10-20T19:20:30+01:00; // DateTime | 
final to = 2013-10-20T19:20:30+01:00; // DateTime | 
final page = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.listOrders(userId, orderBookId, kind, status, side, from, to, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| Filter by user ID (only allowed if the user has copy trading enabled) | [optional] 
 **orderBookId** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **kind** | [**List<OrderKind>**](OrderKind.md)|  | [optional] [default to const []]
 **status** | [**List<OrderStatus>**](OrderStatus.md)|  | [optional] [default to const []]
 **side** | [**Side**](.md)|  | [optional] 
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListOrdersResponseEnvelope**](ListOrdersResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPositionAccountsSelf**
> ListPositionAccountsResponseEnvelope listPositionAccountsSelf()

List all position accounts for the authenticated user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.listPositionAccountsSelf();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listPositionAccountsSelf: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPositionAccountsResponseEnvelope**](ListPositionAccountsResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payLeverageGetAccruedInterest**
> PayLeverageAccruedInterestResponseEnvelope payLeverageGetAccruedInterest(payLeverageAccruedInterestRequest)

Pay current accrued leverage interest for a specific user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final payLeverageAccruedInterestRequest = PayLeverageAccruedInterestRequest(); // PayLeverageAccruedInterestRequest | 

try {
    final result = api_instance.payLeverageGetAccruedInterest(payLeverageAccruedInterestRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->payLeverageGetAccruedInterest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payLeverageAccruedInterestRequest** | [**PayLeverageAccruedInterestRequest**](PayLeverageAccruedInterestRequest.md)|  | 

### Return type

[**PayLeverageAccruedInterestResponseEnvelope**](PayLeverageAccruedInterestResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectLedgerWithdrawRequest**
> WithdrawalInitiationResponseEnvelope rejectLedgerWithdrawRequest(withdrawalId, withdrawalRequestReason)

Reject a pending withdrawal request

Reject a pending withdrawal request, providing a reason for the rejection. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final withdrawalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final withdrawalRequestReason = WithdrawalRequestReason(); // WithdrawalRequestReason | 

try {
    final result = api_instance.rejectLedgerWithdrawRequest(withdrawalId, withdrawalRequestReason);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->rejectLedgerWithdrawRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withdrawalId** | **String**|  | 
 **withdrawalRequestReason** | [**WithdrawalRequestReason**](WithdrawalRequestReason.md)|  | 

### Return type

[**WithdrawalInitiationResponseEnvelope**](WithdrawalInitiationResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeAPIKeyForUser**
> RevokeAPIKeyResponseEnvelope revokeAPIKeyForUser(keyId)

Revoke apikey for a user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final keyId = keyId_example; // String | 

try {
    final result = api_instance.revokeAPIKeyForUser(keyId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->revokeAPIKeyForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **String**|  | 

### Return type

[**RevokeAPIKeyResponseEnvelope**](RevokeAPIKeyResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeAPIKeyForUserID**
> RevokeAPIKeyResponseEnvelope revokeAPIKeyForUserID(userId, keyId)

Revoke apikey for a user: admin or integrator only

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = userId_example; // String | 
final keyId = keyId_example; // String | 

try {
    final result = api_instance.revokeAPIKeyForUserID(userId, keyId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->revokeAPIKeyForUserID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **keyId** | **String**|  | 

### Return type

[**RevokeAPIKeyResponseEnvelope**](RevokeAPIKeyResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **settleLeverageAccruedInterest**
> SettleLeverageAccruedInterestResponseEnvelope settleLeverageAccruedInterest(settleLeverageAccruedInterestRequest)

Settle current accrued leverage interest for a specific user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final settleLeverageAccruedInterestRequest = SettleLeverageAccruedInterestRequest(); // SettleLeverageAccruedInterestRequest | 

try {
    final result = api_instance.settleLeverageAccruedInterest(settleLeverageAccruedInterestRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->settleLeverageAccruedInterest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settleLeverageAccruedInterestRequest** | [**SettleLeverageAccruedInterestRequest**](SettleLeverageAccruedInterestRequest.md)|  | 

### Return type

[**SettleLeverageAccruedInterestResponseEnvelope**](SettleLeverageAccruedInterestResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **settleRealizedPnlRecord**
> SettleRealizedPnlRecordResponseEnvelope settleRealizedPnlRecord(settlementId)

Mark a realized P&L settlement as settled

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final settlementId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.settleRealizedPnlRecord(settlementId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->settleRealizedPnlRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settlementId** | **String**|  | 

### Return type

[**SettleRealizedPnlRecordResponseEnvelope**](SettleRealizedPnlRecordResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **settleTransactionsSettlements**
> TransactionsSettlementsResponse settleTransactionsSettlements(transactionsSettlementRequest)

Settle multiple transactions settlements in batch

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final transactionsSettlementRequest = TransactionsSettlementRequest(); // TransactionsSettlementRequest | 

try {
    final result = api_instance.settleTransactionsSettlements(transactionsSettlementRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->settleTransactionsSettlements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionsSettlementRequest** | [**TransactionsSettlementRequest**](TransactionsSettlementRequest.md)|  | 

### Return type

[**TransactionsSettlementsResponse**](TransactionsSettlementsResponse.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamAssetPrices**
> Map<String, AssetPrice> streamAssetPrices(assetId)

Stream real-time asset prices as map objects

Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.streamAssetPrices(assetId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->streamAssetPrices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**|  | [optional] 

### Return type

[**Map<String, AssetPrice>**](AssetPrice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamCandleData**
> List<StreamCandlesEntry> streamCandleData(orderBookId, since, resolution)

Get a snapshot of candlestick data from date provided, and open a stream for real-time updates

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = orderBookId_example; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final resolution = ; // CandleResolution | 

try {
    final result = api_instance.streamCandleData(orderBookId, since, resolution);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->streamCandleData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **resolution** | [**CandleResolution**](.md)|  | [optional] 

### Return type

[**List<StreamCandlesEntry>**](StreamCandlesEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamOrderBookBalances**
> List<StreamOrderBookBalanceEntry> streamOrderBookBalances(orderBookId, since)

Get a snapshot of base and quote balances for an order book and open a stream for real-time updates

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.streamOrderBookBalances(orderBookId, since);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->streamOrderBookBalances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**List<StreamOrderBookBalanceEntry>**](StreamOrderBookBalanceEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamOrderbookOpenOrders**
> LiveOrderbook streamOrderbookOpenOrders(orderBookId, since)

Get a snapshot of open orders in an order book and open a stream for real-time updates

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.streamOrderbookOpenOrders(orderBookId, since);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->streamOrderbookOpenOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**LiveOrderbook**](LiveOrderbook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamTrades**
> List<StreamTradesEntry> streamTrades(orderBookId, since)

Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates

### Example
```dart
import 'package:dora_client/api.dart';

final api_instance = DefaultApi();
final orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.streamTrades(orderBookId, since);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->streamTrades: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**List<StreamTradesEntry>**](StreamTradesEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferAccountBalancesV2**
> TransferAccountBalancesResponseEnvelope transferAccountBalancesV2(transferAccountBalancesRequest)

Transfer available balance between a user's accounts

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final transferAccountBalancesRequest = TransferAccountBalancesRequest(); // TransferAccountBalancesRequest | 

try {
    final result = api_instance.transferAccountBalancesV2(transferAccountBalancesRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->transferAccountBalancesV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transferAccountBalancesRequest** | [**TransferAccountBalancesRequest**](TransferAccountBalancesRequest.md)|  | 

### Return type

[**TransferAccountBalancesResponseEnvelope**](TransferAccountBalancesResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferAvailableBalances**
> TransferBalancesResponseEnvelope transferAvailableBalances(transferBalancesRequest)

Transfer available balance between a user's accounts (e.g. global to isolated position)

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final transferBalancesRequest = TransferBalancesRequest(); // TransferBalancesRequest | 

try {
    final result = api_instance.transferAvailableBalances(transferBalancesRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->transferAvailableBalances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transferBalancesRequest** | [**TransferBalancesRequest**](TransferBalancesRequest.md)|  | 

### Return type

[**TransferBalancesResponseEnvelope**](TransferBalancesResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserConfig**
> UserUpdatedResponseEnvelope updateUserConfig(userId, updateUserConfigRequest)

Update user configuration by ID

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateUserConfigRequest = UpdateUserConfigRequest(); // UpdateUserConfigRequest | 

try {
    final result = api_instance.updateUserConfig(userId, updateUserConfigRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->updateUserConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **updateUserConfigRequest** | [**UpdateUserConfigRequest**](UpdateUserConfigRequest.md)|  | 

### Return type

[**UserUpdatedResponseEnvelope**](UserUpdatedResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserConfigSelf**
> UserUpdatedResponseEnvelope updateUserConfigSelf(updateUserConfigRequest)

Update user configuration for the authenticated user

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final updateUserConfigRequest = UpdateUserConfigRequest(); // UpdateUserConfigRequest | 

try {
    final result = api_instance.updateUserConfigSelf(updateUserConfigRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->updateUserConfigSelf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUserConfigRequest** | [**UpdateUserConfigRequest**](UpdateUserConfigRequest.md)|  | 

### Return type

[**UserUpdatedResponseEnvelope**](UserUpdatedResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateSubmitOrder**
> ValidateSubmitOrderResponse validateSubmitOrder(validateSubmitOrderRequest)

Validate submit order request data

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final validateSubmitOrderRequest = ValidateSubmitOrderRequest(); // ValidateSubmitOrderRequest | 

try {
    final result = api_instance.validateSubmitOrder(validateSubmitOrderRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->validateSubmitOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateSubmitOrderRequest** | [**ValidateSubmitOrderRequest**](ValidateSubmitOrderRequest.md)|  | 

### Return type

[**ValidateSubmitOrderResponse**](ValidateSubmitOrderResponse.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUser**
> UserUpdatedResponseEnvelope verifyUser(userId)

Verify a user by ID

### Example
```dart
import 'package:dora_client/api.dart';
// TODO Configure API key authorization: apiKeyAuthHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuthHeader').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.verifyUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->verifyUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserUpdatedResponseEnvelope**](UserUpdatedResponseEnvelope.md)

### Authorization

[apiKeyAuthHeader](../README.md#apiKeyAuthHeader), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

