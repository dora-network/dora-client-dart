# dora_client.model.ValidateSubmitOrderRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **String** |  | 
**tick** | **String** | Minimum tradable increment for the selected order book | 
**kind** | [**OrderKind**](OrderKind.md) | Must be LIMIT or MARKET | 
**side** | [**Side**](Side.md) | Must be BUY or SELL | [optional] 
**price** | **String** | If kind is LIMIT, must be > 0; if MARKET it must be 0 or omitted | 
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] 
**inverseLeverage** | **String** |  | 
**userBalance** | **String** | User balance used to ensure they can afford the requested quantity | 
**baseAssetId** | **String** | base asset of orderbook | [optional] 
**quoteAssetId** | **String** | quote asset of orderbook | [optional] 
**clientOrderId** | **String** | An optional client-provided identifier for the order. | [optional] 
**positionAssets** | [**List<PositionAsset>**](PositionAsset.md) | Full list of assets in the position with their price and collateral weight, required when inverse_leverage < 1 for leverage health checks | [optional] [default to const []]
**assetsConfig** | [**List<AssetConfig>**](AssetConfig.md) | Configuration for the assets in the order | [optional] [default to const []]
**stopLossPrice** | **String** | Stop loss price | [optional] 
**takeProfitPrice** | **String** | Take profit price | [optional] 
**restrictions** | [**TenantRestrictions**](TenantRestrictions.md) |  | [optional] 
**initialCapital** | **String** | Initial capital value in USD only used to validate sells with leverage | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


