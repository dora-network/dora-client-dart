# dora_client.model.CreateTradingChallengeRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tenantId** | **String** |  | 
**name** | **String** | Trading challenge name | 
**type** | [**TradingChallengeType**](TradingChallengeType.md) |  | 
**maxUsers** | **int** |  | 
**start** | [**DateTime**](DateTime.md) |  | 
**end** | [**DateTime**](DateTime.md) |  | 
**initialUserBalance** | **String** |  | 
**goldPrizeQuantity** | **String** |  | [optional] 
**silverPrizeQuantity** | **String** |  | [optional] 
**bronzePrizeQuantity** | **String** |  | [optional] 
**pnlCondition** | **String** |  | [optional] 
**totalVolumeCondition** | **String** |  | [optional] 
**avgDailyVolumeCondition** | **String** |  | [optional] 
**minimumEquityPercentageCondition** | **int** |  | [optional] 
**users** | **List<String>** |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


