# dora_client.model.TradingChallenge

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** | Trading challenge name | [optional] 
**tenantId** | **String** |  | 
**type** | [**TradingChallengeType**](TradingChallengeType.md) |  | 
**status** | [**TradingChallengeStatus**](TradingChallengeStatus.md) |  | 
**maxUsers** | **int** |  | 
**startAt** | [**DateTime**](DateTime.md) |  | 
**endAt** | [**DateTime**](DateTime.md) |  | 
**initialUserBalance** | **String** |  | 
**goldPrizeQuantity** | **String** |  | 
**silverPrizeQuantity** | **String** |  | 
**bronzePrizeQuantity** | **String** |  | 
**pnlCondition** | **String** |  | 
**totalVolumeCondition** | **String** |  | 
**avgDailyVolumeCondition** | **String** |  | 
**minimumEquityPercentageCondition** | **int** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**lastProcessedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**users** | **List<String>** |  | [optional] [default to const []]
**usersCount** | **int** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


