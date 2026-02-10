# dora_client.model.Asset

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**collateralWeight** | **num** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**decimals** | **int** |  | 
**fractionalizedUnits** | **int** |  | 
**description** | **String** |  | 
**liquidationWeight** | **num** |  | 
**maxSupply** | **int** |  | 
**maxUtilization** | **int** |  | 
**name** | **String** |  | 
**symbol** | **String** |  | 
**kind** | [**AssetKind**](AssetKind.md) |  | 
**yield_** | **num** |  | [optional] 
**canAddLiquidity** | **bool** |  | 
**canDirectBorrow** | **bool** |  | 
**canOnboard** | **bool** |  | 
**canTrade** | **bool** |  | 
**canVirtualBorrow** | **bool** |  | 
**maxLeverage** | **num** |  | 
**leverageInterestRate** | **num** |  | [optional] [default to 0]
**bond** | [**Bond**](Bond.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


