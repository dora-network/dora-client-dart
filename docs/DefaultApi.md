# dora_client.api.DefaultApi

## Load the API package
```dart
import 'package:dora_client/api.dart';
```

All URIs are relative to *https://localhost:8084*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelAllOpenOrders**](DefaultApi.md#cancelAllOpenOrders) | **DELETE** /v1/orders | Cancel all open orders
[**cancelOrderById**](DefaultApi.md#cancelOrderById) | **DELETE** /v1/orders/{order_id} | Cancel an order by ID
[**createOrder**](DefaultApi.md#createOrder) | **POST** /v1/orders | Create a new order
[**deleteUser**](DefaultApi.md#deleteUser) | **DELETE** /v1/user/{user_id} | Delete user by ID
[**getAllAssetPrices**](DefaultApi.md#getAllAssetPrices) | **GET** /v1/price | Get the current price of all assets
[**getAssetById**](DefaultApi.md#getAssetById) | **GET** /v1/assets/{asset_id} | Get asset by ID
[**getAssetPrice**](DefaultApi.md#getAssetPrice) | **GET** /v1/price/asset/{asset_id} | Get the current price of an asset
[**getAssetsStream**](DefaultApi.md#getAssetsStream) | **GET** /v1/assets/stream | Get all inserts or updates for assets
[**getCandleData**](DefaultApi.md#getCandleData) | **GET** /v1/charts/{order_book_id}/candle | Get candlestick data for an orderbook
[**getCouponPaymentsByAssetId**](DefaultApi.md#getCouponPaymentsByAssetId) | **GET** /v1/assets/{asset_id}/coupon_payments | Get coupon payments for a bond asset
[**getL1Depth**](DefaultApi.md#getL1Depth) | **GET** /v1/orderbooks/{order_book_id}/L1 | Get the top price levels for a specific orderbook (L1 market depth)
[**getL2Depth**](DefaultApi.md#getL2Depth) | **GET** /v1/orderbooks/{order_book_id}/L2 | Get the aggregated price levels for a specific orderbook (L2 market depth)
[**getL3Depth**](DefaultApi.md#getL3Depth) | **GET** /v1/orderbooks/{order_book_id}/L3 | Get all open orders for a specific orderbook (L3 market depth)
[**getLedgerBalancesSelf**](DefaultApi.md#getLedgerBalancesSelf) | **GET** /v1/ledger/balances/self | Get your own available, locked, and borrowed assets
[**getLedgerInterestSelf**](DefaultApi.md#getLedgerInterestSelf) | **GET** /v1/ledger/interest/self | Get your own interest
[**getLedgerModule**](DefaultApi.md#getLedgerModule) | **GET** /v1/ledger/module | Get the entire module object, including unborrowed leverage assets and total leverage trackers
[**getLedgerModuleByAsset**](DefaultApi.md#getLedgerModuleByAsset) | **GET** /v1/ledger/module/{asset_id} | Get the module object for a single asset ID
[**getLedgerPositionsSelf**](DefaultApi.md#getLedgerPositionsSelf) | **GET** /v1/ledger/positions/self | Get your own positions
[**getLedgerValueSelf**](DefaultApi.md#getLedgerValueSelf) | **GET** /v1/ledger/value/self | Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
[**getOrderById**](DefaultApi.md#getOrderById) | **GET** /v1/orders/{order_id} | Get order by ID
[**getOrderbookById**](DefaultApi.md#getOrderbookById) | **GET** /v1/orderbooks/{order_book_id} | Get orderbook by ID
[**getOrderbookDepth**](DefaultApi.md#getOrderbookDepth) | **GET** /v1/orderbooks/{order_book_id}/depth | Get the aggregated price levels for a specific orderbook (L2 market depth)
[**getOrderbookOrders**](DefaultApi.md#getOrderbookOrders) | **GET** /v1/orderbooks/{order_book_id}/orders | Get all open orders for a specific orderbook (L3 market depth)
[**getOrderbookSummary**](DefaultApi.md#getOrderbookSummary) | **GET** /v1/orderbooks/{order_book_id}/summary | Get summary of an orderbook
[**getOrderbookTop**](DefaultApi.md#getOrderbookTop) | **GET** /v1/orderbooks/{order_book_id}/top | Get the top price levels for a specific orderbook (L1 market depth)
[**getPoolPrice**](DefaultApi.md#getPoolPrice) | **GET** /v1/price/pool/{pool_id} | Get the current price of a pool
[**getTradeById**](DefaultApi.md#getTradeById) | **GET** /v1/trades/{trade_id} | Get a trade by ID
[**getTrades**](DefaultApi.md#getTrades) | **GET** /v1/trades | Get a filtered, paginated list of trades
[**getTransactionById**](DefaultApi.md#getTransactionById) | **GET** /v1/transactions/{transaction_id} | Get a transaction by ID
[**getTransactions**](DefaultApi.md#getTransactions) | **GET** /v1/transactions | Get a filtered, paginated list of transactions
[**getUserById**](DefaultApi.md#getUserById) | **GET** /v1/user/{user_id} | Get user by ID (admin only)
[**getUserLedgerStream**](DefaultApi.md#getUserLedgerStream) | **GET** /v1/user/{user_id}/ledger/stream | Get a snapshot of user&#x27;s ledger updates since a specific time, and opens a stream for further updates
[**getUserOrderUpdatesStream**](DefaultApi.md#getUserOrderUpdatesStream) | **GET** /v1/user/{user_id}/orders/{order_book_id}/updates/stream | Get a snapshot of user&#x27;s order updates for the given order book since a specific time, and opens a stream for further updates
[**getUserOrdersUpdatesStreamAll**](DefaultApi.md#getUserOrdersUpdatesStreamAll) | **GET** /v1/user/{user_id}/orders/all/updates/stream | Get a snapshot of user&#x27;s order updates across all order books since a specific time, and opens a stream for further updates
[**getUserSelf**](DefaultApi.md#getUserSelf) | **GET** /v1/user/self | Get user details for the authenticated user
[**getUserTransactionsStream**](DefaultApi.md#getUserTransactionsStream) | **GET** /v1/user/{user_id}/transactions/stream | Get a snapshot of user&#x27;s executed transactions since a specific time, and opens a stream for further updates
[**ledgerDeposit**](DefaultApi.md#ledgerDeposit) | **POST** /v1/ledger/deposit | Deposit assets into your account from the outside world
[**ledgerWithdraw**](DefaultApi.md#ledgerWithdraw) | **POST** /v1/ledger/withdraw | Withdraw assets from your account to the outside world
[**leverageCollateralize**](DefaultApi.md#leverageCollateralize) | **POST** /v1/leverage/collateralize | Move supplied and available to supplied_collateral and collateral, for a specified position
[**leverageDeCollateralize**](DefaultApi.md#leverageDeCollateralize) | **POST** /v1/leverage/de-collateralize | Move collateral and supplied_collateral to available and supplied, for a specified position.
[**leverageIsolateCollateral**](DefaultApi.md#leverageIsolateCollateral) | **POST** /v1/leverage/isolate_collateral | Create an isolated position by transferring collateral to the position from the user&#x27;s global collateral
[**leverageIsolatePosition**](DefaultApi.md#leverageIsolatePosition) | **POST** /v1/leverage/isolate_position | Create an isolated position using all collateral, supplied_collateral, and borrows from the user&#x27;s global position
[**leverageSupply**](DefaultApi.md#leverageSupply) | **POST** /v1/leverage/supply | Supply leverage for a specific asset
[**leverageUnite**](DefaultApi.md#leverageUnite) | **POST** /v1/leverage/unite | Combines all isolated positions into a single global position
[**leverageWithdraw**](DefaultApi.md#leverageWithdraw) | **POST** /v1/leverage/withdraw | Withdraw leverage for a specific asset
[**liquidityAdd**](DefaultApi.md#liquidityAdd) | **POST** /v1/liquidity/pool/{pool_id}/add | Add liquidity to a pool
[**liquiditySubtract**](DefaultApi.md#liquiditySubtract) | **POST** /v1/liquidity/pool/{pool_id}/remove | Subtract liquidity from a pool
[**listAssets**](DefaultApi.md#listAssets) | **GET** /v1/assets | List assets
[**listOrderBooks**](DefaultApi.md#listOrderBooks) | **GET** /v1/orderbooks | List order books
[**listOrders**](DefaultApi.md#listOrders) | **GET** /v1/orders | List all orders
[**streamAssetPrices**](DefaultApi.md#streamAssetPrices) | **GET** /v1/prices/stream | Stream real-time asset prices as map objects
[**streamCandleData**](DefaultApi.md#streamCandleData) | **GET** /v1/charts/{order_book_id}/candle/stream | Get a snapshot of candlestick data from date provided, and open a stream for real-time updates
[**streamOrderBookBalances**](DefaultApi.md#streamOrderBookBalances) | **GET** /v1/orderbooks/{order_book_id}/balances/stream | Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
[**streamOrderbookOpenOrders**](DefaultApi.md#streamOrderbookOpenOrders) | **GET** /v1/orderbooks/{order_book_id}/open/stream | Get a snapshot of open orders in an order book and open a stream for real-time updates
[**streamTrades**](DefaultApi.md#streamTrades) | **GET** /v1/trades/{order_book_id}/stream | Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates
[**updateUserConfig**](DefaultApi.md#updateUserConfig) | **PUT** /v1/user/{user_id}/config | Update user configuration by ID
[**updateUserConfigSelf**](DefaultApi.md#updateUserConfigSelf) | **PUT** /v1/user/config/self | Update user configuration for the authenticated user
[**verifyUser**](DefaultApi.md#verifyUser) | **PUT** /v1/user/{user_id}/verify | Verify a user by ID

# **cancelAllOpenOrders**
> ListOrdersResponse cancelAllOpenOrders()

Cancel all open orders

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.cancelAllOpenOrders();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->cancelAllOpenOrders: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListOrdersResponse**](ListOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelOrderById**
> CancelOrderResponse cancelOrderById(orderId)

Cancel an order by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.cancelOrderById(orderId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->cancelOrderById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | [**String**](.md)|  | 

### Return type

[**CancelOrderResponse**](CancelOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrder**
> CreateOrderResponse createOrder(body)

Create a new order

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new CreateOrderRequest(); // CreateOrderRequest | 

try {
    var result = api_instance.createOrder(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->createOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrderRequest**](CreateOrderRequest.md)|  | 

### Return type

[**CreateOrderResponse**](CreateOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> UserDeletedResponse deleteUser(userId)

Delete user by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.deleteUser(userId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->deleteUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)|  | 

### Return type

[**UserDeletedResponse**](UserDeletedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAssetPrices**
> ListAssetPriceResponse getAllAssetPrices()

Get the current price of all assets

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.getAllAssetPrices();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getAllAssetPrices: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAssetPriceResponse**](ListAssetPriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetById**
> GetAssetByIDResponse getAssetById(assetId)

Get asset by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getAssetById(assetId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getAssetById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | [**String**](.md)|  | 

### Return type

[**GetAssetByIDResponse**](GetAssetByIDResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetPrice**
> GetAssetPriceResponse getAssetPrice(assetId)

Get the current price of an asset

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getAssetPrice(assetId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getAssetPrice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | [**String**](.md)|  | 

### Return type

[**GetAssetPriceResponse**](GetAssetPriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetsStream**
> StreamAssetsResponse getAssetsStream(since, until)

Get all inserts or updates for assets

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var since = 2013-10-20T19:20:30+01:00; // DateTime | 
var until = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.getAssetsStream(since, until);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getAssetsStream: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **until** | **DateTime**|  | [optional] 

### Return type

[**StreamAssetsResponse**](StreamAssetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCandleData**
> ListCandlesResponse getCandleData(orderBookId, start, end, resolution)

Get candlestick data for an orderbook

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = orderBookId_example; // String | 
var start = 2013-10-20T19:20:30+01:00; // DateTime | 
var end = 2013-10-20T19:20:30+01:00; // DateTime | 
var resolution = ; // CandleResolution | 

try {
    var result = api_instance.getCandleData(orderBookId, start, end, resolution);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getCandleData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 
 **resolution** | [**CandleResolution**](.md)|  | [optional] 

### Return type

[**ListCandlesResponse**](ListCandlesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponPaymentsByAssetId**
> ListCouponPaymentsResponse getCouponPaymentsByAssetId(assetId)

Get coupon payments for a bond asset

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getCouponPaymentsByAssetId(assetId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getCouponPaymentsByAssetId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | [**String**](.md)|  | 

### Return type

[**ListCouponPaymentsResponse**](ListCouponPaymentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getL1Depth**
> GetTopOfBookResponse getL1Depth(orderBookId)

Get the top price levels for a specific orderbook (L1 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getL1Depth(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getL1Depth: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**GetTopOfBookResponse**](GetTopOfBookResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getL2Depth**
> ListOrderBookDepthResponse getL2Depth(orderBookId)

Get the aggregated price levels for a specific orderbook (L2 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getL2Depth(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getL2Depth: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**ListOrderBookDepthResponse**](ListOrderBookDepthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getL3Depth**
> ListOrdersResponse getL3Depth(orderBookId)

Get all open orders for a specific orderbook (L3 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getL3Depth(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getL3Depth: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**ListOrdersResponse**](ListOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerBalancesSelf**
> UserBalanceResponse getLedgerBalancesSelf()

Get your own available, locked, and borrowed assets

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.getLedgerBalancesSelf();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getLedgerBalancesSelf: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserBalanceResponse**](UserBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerInterestSelf**
> UserInterestResponse getLedgerInterestSelf()

Get your own interest

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.getLedgerInterestSelf();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getLedgerInterestSelf: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInterestResponse**](UserInterestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerModule**
> LedgerModuleResponse getLedgerModule()

Get the entire module object, including unborrowed leverage assets and total leverage trackers

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.getLedgerModule();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getLedgerModule: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LedgerModuleResponse**](LedgerModuleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerModuleByAsset**
> LedgerModuleByAssetResponse getLedgerModuleByAsset(assetId)

Get the module object for a single asset ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var assetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getLedgerModuleByAsset(assetId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getLedgerModuleByAsset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | [**String**](.md)|  | 

### Return type

[**LedgerModuleByAssetResponse**](LedgerModuleByAssetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerPositionsSelf**
> UserPositionResponse getLedgerPositionsSelf()

Get your own positions

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.getLedgerPositionsSelf();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getLedgerPositionsSelf: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserPositionResponse**](UserPositionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLedgerValueSelf**
> UserValueResponse getLedgerValueSelf()

Get your own available, locked, and borrowed USD value; and realized and unrealized PnL

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.getLedgerValueSelf();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getLedgerValueSelf: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserValueResponse**](UserValueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
> GetOrderResponse getOrderById(orderId)

Get order by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getOrderById(orderId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getOrderById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | [**String**](.md)|  | 

### Return type

[**GetOrderResponse**](GetOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookById**
> GetOrderBookResponse getOrderbookById(orderBookId)

Get orderbook by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getOrderbookById(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getOrderbookById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**GetOrderBookResponse**](GetOrderBookResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookDepth**
> ListOrderBookDepthResponse getOrderbookDepth(orderBookId)

Get the aggregated price levels for a specific orderbook (L2 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getOrderbookDepth(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getOrderbookDepth: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**ListOrderBookDepthResponse**](ListOrderBookDepthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookOrders**
> ListOrdersResponse getOrderbookOrders(orderBookId)

Get all open orders for a specific orderbook (L3 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getOrderbookOrders(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getOrderbookOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**ListOrdersResponse**](ListOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookSummary**
> GetOrderBookSummaryResponse getOrderbookSummary(orderBookId)

Get summary of an orderbook

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getOrderbookSummary(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getOrderbookSummary: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**GetOrderBookSummaryResponse**](GetOrderBookSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderbookTop**
> GetTopOfBookResponse getOrderbookTop(orderBookId)

Get the top price levels for a specific orderbook (L1 market depth)

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getOrderbookTop(orderBookId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getOrderbookTop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 

### Return type

[**GetTopOfBookResponse**](GetTopOfBookResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoolPrice**
> GetPoolPriceResponse getPoolPrice(poolId)

Get the current price of a pool

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getPoolPrice(poolId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getPoolPrice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**String**](.md)|  | 

### Return type

[**GetPoolPriceResponse**](GetPoolPriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTradeById**
> TradeResponse getTradeById(tradeId)

Get a trade by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var tradeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getTradeById(tradeId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getTradeById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tradeId** | [**String**](.md)|  | 

### Return type

[**TradeResponse**](TradeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrades**
> ListTradeResponse getTrades(pools, userIds, start, end, page, limit)

Get a filtered, paginated list of trades

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var pools = []; // List<String> | 
var userIds = []; // List<String> | 
var start = 2013-10-20T19:20:30+01:00; // DateTime | 
var end = 2013-10-20T19:20:30+01:00; // DateTime | 
var page = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.getTrades(pools, userIds, start, end, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getTrades: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pools** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **userIds** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListTradeResponse**](ListTradeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionById**
> GetTransactionResponse getTransactionById(transactionId)

Get a transaction by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var transactionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getTransactionById(transactionId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getTransactionById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | [**String**](.md)|  | 

### Return type

[**GetTransactionResponse**](GetTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactions**
> ListTransactionsResponse getTransactions(pools, userIds, txKinds, start, end, page, limit)

Get a filtered, paginated list of transactions

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var pools = []; // List<String> | 
var userIds = []; // List<String> | 
var txKinds = []; // List<TransactionKind> | 
var start = 2013-10-20T19:20:30+01:00; // DateTime | 
var end = 2013-10-20T19:20:30+01:00; // DateTime | 
var page = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.getTransactions(pools, userIds, txKinds, start, end, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getTransactions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pools** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **userIds** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **txKinds** | [**List&lt;TransactionKind&gt;**](TransactionKind.md)|  | [optional] 
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListTransactionsResponse**](ListTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> GetUserResponse getUserById(userId)

Get user by ID (admin only)

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getUserById(userId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUserById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)|  | 

### Return type

[**GetUserResponse**](GetUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLedgerStream**
> StreamPositionsResponse getUserLedgerStream(userId)

Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.getUserLedgerStream(userId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUserLedgerStream: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)|  | 

### Return type

[**StreamPositionsResponse**](StreamPositionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserOrderUpdatesStream**
> StreamOrderUpdatesResponse getUserOrderUpdatesStream(userId, orderBookId, since)

Get a snapshot of user's order updates for the given order book since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.getUserOrderUpdatesStream(userId, orderBookId, since);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUserOrderUpdatesStream: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)|  | 
 **orderBookId** | [**String**](.md)|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**StreamOrderUpdatesResponse**](StreamOrderUpdatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserOrdersUpdatesStreamAll**
> StreamOrderUpdatesResponse getUserOrdersUpdatesStreamAll(userId, since)

Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.getUserOrdersUpdatesStreamAll(userId, since);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUserOrdersUpdatesStreamAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**StreamOrderUpdatesResponse**](StreamOrderUpdatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSelf**
> GetUserResponse getUserSelf()

Get user details for the authenticated user

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.getUserSelf();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUserSelf: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUserResponse**](GetUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTransactionsStream**
> StreamTransactionsResponse getUserTransactionsStream(userId, since)

Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.getUserTransactionsStream(userId, since);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUserTransactionsStream: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**StreamTransactionsResponse**](StreamTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ledgerDeposit**
> FundUserResponse ledgerDeposit(body)

Deposit assets into your account from the outside world

TODO: finish this when implementation has been completed

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new FundUserRequest(); // FundUserRequest | 

try {
    var result = api_instance.ledgerDeposit(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->ledgerDeposit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FundUserRequest**](FundUserRequest.md)|  | 

### Return type

[**FundUserResponse**](FundUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ledgerWithdraw**
> FundUserResponse ledgerWithdraw(body)

Withdraw assets from your account to the outside world

TODO: Finish this when implementation has been completed

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new FundUserRequest(); // FundUserRequest | 

try {
    var result = api_instance.ledgerWithdraw(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->ledgerWithdraw: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FundUserRequest**](FundUserRequest.md)|  | 

### Return type

[**FundUserResponse**](FundUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageCollateralize**
> CollateralizeResponse leverageCollateralize(body)

Move supplied and available to supplied_collateral and collateral, for a specified position

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new CollateralizeRequest(); // CollateralizeRequest | 

try {
    var result = api_instance.leverageCollateralize(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->leverageCollateralize: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CollateralizeRequest**](CollateralizeRequest.md)|  | 

### Return type

[**CollateralizeResponse**](CollateralizeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageDeCollateralize**
> DeCollateralizeResponse leverageDeCollateralize(body)

Move collateral and supplied_collateral to available and supplied, for a specified position.

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new DeCollateralizeRequest(); // DeCollateralizeRequest | 

try {
    var result = api_instance.leverageDeCollateralize(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->leverageDeCollateralize: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeCollateralizeRequest**](DeCollateralizeRequest.md)|  | 

### Return type

[**DeCollateralizeResponse**](DeCollateralizeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageIsolateCollateral**
> IsolateCollateralResponse leverageIsolateCollateral(body)

Create an isolated position by transferring collateral to the position from the user's global collateral

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new IsolateCollateralRequest(); // IsolateCollateralRequest | 

try {
    var result = api_instance.leverageIsolateCollateral(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->leverageIsolateCollateral: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IsolateCollateralRequest**](IsolateCollateralRequest.md)|  | 

### Return type

[**IsolateCollateralResponse**](IsolateCollateralResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageIsolatePosition**
> IsolatePositionResponse leverageIsolatePosition(body)

Create an isolated position using all collateral, supplied_collateral, and borrows from the user's global position

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new IsolatePositionRequest(); // IsolatePositionRequest | 

try {
    var result = api_instance.leverageIsolatePosition(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->leverageIsolatePosition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IsolatePositionRequest**](IsolatePositionRequest.md)|  | 

### Return type

[**IsolatePositionResponse**](IsolatePositionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageSupply**
> SupplyResponse leverageSupply(body)

Supply leverage for a specific asset

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new SupplyRequest(); // SupplyRequest | 

try {
    var result = api_instance.leverageSupply(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->leverageSupply: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SupplyRequest**](SupplyRequest.md)|  | 

### Return type

[**SupplyResponse**](SupplyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageUnite**
> UnitePositionResponse leverageUnite(body)

Combines all isolated positions into a single global position

Combines all isolated positions into a single global position

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new UnitePositionRequest(); // UnitePositionRequest | 

try {
    var result = api_instance.leverageUnite(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->leverageUnite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnitePositionRequest**](UnitePositionRequest.md)|  | 

### Return type

[**UnitePositionResponse**](UnitePositionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leverageWithdraw**
> WithdrawResponse leverageWithdraw(body)

Withdraw leverage for a specific asset

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new WithdrawRequest(); // WithdrawRequest | 

try {
    var result = api_instance.leverageWithdraw(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->leverageWithdraw: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WithdrawRequest**](WithdrawRequest.md)|  | 

### Return type

[**WithdrawResponse**](WithdrawResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **liquidityAdd**
> LiquidityResponse liquidityAdd(body, poolId)

Add liquidity to a pool

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new LiquidityRequest(); // LiquidityRequest | 
var poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.liquidityAdd(body, poolId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->liquidityAdd: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LiquidityRequest**](LiquidityRequest.md)|  | 
 **poolId** | [**String**](.md)|  | 

### Return type

[**LiquidityResponse**](LiquidityResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **liquiditySubtract**
> LiquidityResponse liquiditySubtract(body, poolId)

Subtract liquidity from a pool

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new LiquidityRequest(); // LiquidityRequest | 
var poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.liquiditySubtract(body, poolId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->liquiditySubtract: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LiquidityRequest**](LiquidityRequest.md)|  | 
 **poolId** | [**String**](.md)|  | 

### Return type

[**LiquidityResponse**](LiquidityResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAssets**
> ListAssetsResponse listAssets(createdAfter, createdBefore, assetKind, canAddLiquidity, canDirectBorrow, canOnboard, canTrade, canVirtualBorrow, page, limit)

List assets

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var createdAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
var createdBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
var assetKind = ; // AssetKind | Asset kind (BOND, CURRENCY, INTEREST, POOL_SHARE)
var canAddLiquidity = true; // bool | 
var canDirectBorrow = true; // bool | 
var canOnboard = true; // bool | 
var canTrade = true; // bool | 
var canVirtualBorrow = true; // bool | 
var page = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.listAssets(createdAfter, createdBefore, assetKind, canAddLiquidity, canDirectBorrow, canOnboard, canTrade, canVirtualBorrow, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->listAssets: $e\n");
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

[**ListAssetsResponse**](ListAssetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrderBooks**
> ListOrderBooksResponse listOrderBooks(status, baseAssetId, quoteAssetId, page, limit)

List order books

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var status = ; // OrderBookStatus | 
var baseAssetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var quoteAssetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var page = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.listOrderBooks(status, baseAssetId, quoteAssetId, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->listOrderBooks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**OrderBookStatus**](.md)|  | [optional] 
 **baseAssetId** | [**String**](.md)|  | [optional] 
 **quoteAssetId** | [**String**](.md)|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListOrderBooksResponse**](ListOrderBooksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrders**
> ListOrdersResponse listOrders(orderBookId, kind, status, side, from, to, page, limit)

List all orders

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = []; // List<String> | 
var kind = []; // List<OrderKind> | 
var status = []; // List<OrderStatus> | 
var side = ; // Side | 
var from = 2013-10-20T19:20:30+01:00; // DateTime | 
var to = 2013-10-20T19:20:30+01:00; // DateTime | 
var page = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.listOrders(orderBookId, kind, status, side, from, to, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->listOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **kind** | [**List&lt;OrderKind&gt;**](OrderKind.md)|  | [optional] 
 **status** | [**List&lt;OrderStatus&gt;**](OrderStatus.md)|  | [optional] 
 **side** | [**Side**](.md)|  | [optional] 
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListOrdersResponse**](ListOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamAssetPrices**
> StreamAssetPricesResponse streamAssetPrices(since)

Stream real-time asset prices as map objects

Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.streamAssetPrices(since);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->streamAssetPrices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 

### Return type

[**StreamAssetPricesResponse**](StreamAssetPricesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamCandleData**
> StreamCandlesResponse streamCandleData(orderBookId, since, resolution)

Get a snapshot of candlestick data from date provided, and open a stream for real-time updates

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = orderBookId_example; // String | 
var since = 2013-10-20T19:20:30+01:00; // DateTime | 
var resolution = ; // CandleResolution | 

try {
    var result = api_instance.streamCandleData(orderBookId, since, resolution);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->streamCandleData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **resolution** | [**CandleResolution**](.md)|  | [optional] 

### Return type

[**StreamCandlesResponse**](StreamCandlesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **streamOrderBookBalances**
> StreamOrderBookBalancesResponse streamOrderBookBalances(orderBookId, since)

Get a snapshot of base and quote balances for an order book and open a stream for real-time updates

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.streamOrderBookBalances(orderBookId, since);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->streamOrderBookBalances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**StreamOrderBookBalancesResponse**](StreamOrderBookBalancesResponse.md)

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

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.streamOrderbookOpenOrders(orderBookId, since);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->streamOrderbookOpenOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 
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
> StreamTradesResponse streamTrades(orderBookId, since)

Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var orderBookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var since = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    var result = api_instance.streamTrades(orderBookId, since);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->streamTrades: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBookId** | [**String**](.md)|  | 
 **since** | **DateTime**|  | [optional] 

### Return type

[**StreamTradesResponse**](StreamTradesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserConfig**
> UserUpdatedResponse updateUserConfig(body, userId)

Update user configuration by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new UpdateUserConfigRequest(); // UpdateUserConfigRequest | 
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.updateUserConfig(body, userId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->updateUserConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateUserConfigRequest**](UpdateUserConfigRequest.md)|  | 
 **userId** | [**String**](.md)|  | 

### Return type

[**UserUpdatedResponse**](UserUpdatedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserConfigSelf**
> UserUpdatedResponse updateUserConfigSelf(body)

Update user configuration for the authenticated user

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var body = new UpdateUserConfigRequest(); // UpdateUserConfigRequest | 

try {
    var result = api_instance.updateUserConfigSelf(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->updateUserConfigSelf: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateUserConfigRequest**](UpdateUserConfigRequest.md)|  | 

### Return type

[**UserUpdatedResponse**](UserUpdatedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUser**
> UserUpdatedResponse verifyUser(userId)

Verify a user by ID

### Example
```dart
import 'package:dora_client/api.dart';

var api_instance = new DefaultApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    var result = api_instance.verifyUser(userId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->verifyUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)|  | 

### Return type

[**UserUpdatedResponse**](UserUpdatedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

