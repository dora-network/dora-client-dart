# dora_client.model.PLAsset

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The symbol of the asset | 
**side** | **String** | The side of the position (LONG or SHORT) | 
**avgEntryPrice** | **String** | The average entry price of the position | 
**markPrice** | **String** | The current mark price for the asset to calculate daily PL. This is usually the close price of the previous day | 
**liquidationPrice** | **String** | The liquidation price of the position | 
**available** | **String** | The available quantity in units of the asset | 
**borrowed** | **String** | The borrowed quantity in units of the asset | 
**margin** | [**Margin**](Margin.md) |  | 
**unrealizedPl** | **String** | The unrealized profit or loss of the position | 
**leverageLimit** | **String** | The leverage limit for the position | 
**tp** | **String** | The take profit price set for the position, if any | [optional] 
**sl** | **String** | The stop loss price set for the position, if any | [optional] 
**initialCapital** | **String** | The initial capital of the position | 
**impendingBorrows** | **String** | The impending borrows of the position | [optional] 
**locked** | **String** | The locked amount of the position | 
**unusedCollateral** | **String** | The unused collateral of the position | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


