# dora_client.model.UpdateTradingChallengeRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**UpdateFieldString**](UpdateFieldString.md) | Trading challenge name. | [optional] 
**type** | [**UpdateFieldString**](UpdateFieldString.md) | CASH or TOURNAMENT. Only updatable while the challenge is PENDING. | [optional] 
**maxUsers** | [**UpdateFieldInteger**](UpdateFieldInteger.md) | Must be > 0 and cannot be lowered below the number of users already registered. | [optional] 
**start** | [**UpdateFieldDateTime**](UpdateFieldDateTime.md) | Only updatable while the challenge is PENDING. | [optional] 
**end** | [**UpdateFieldDateTime**](UpdateFieldDateTime.md) | Must be after start and in the future. | [optional] 
**initialUserBalance** | [**UpdateFieldDecimal**](UpdateFieldDecimal.md) | Must be > 0. Only updatable while the challenge is PENDING. | [optional] 
**goldPrizeQuantity** | [**UpdateFieldDecimal**](UpdateFieldDecimal.md) | Must be > 0 for a TOURNAMENT challenge. | [optional] 
**silverPrizeQuantity** | [**UpdateFieldDecimal**](UpdateFieldDecimal.md) | Must be >= 0. | [optional] 
**bronzePrizeQuantity** | [**UpdateFieldDecimal**](UpdateFieldDecimal.md) | Must be >= 0. | [optional] 
**pnlCondition** | [**UpdateFieldDecimal**](UpdateFieldDecimal.md) | Must be >= 0. Only updatable while the challenge is PENDING. | [optional] 
**totalVolumeCondition** | [**UpdateFieldDecimal**](UpdateFieldDecimal.md) | Must be >= 0. Only updatable while the challenge is PENDING. | [optional] 
**avgDailyVolumeCondition** | [**UpdateFieldDecimal**](UpdateFieldDecimal.md) | Must be >= 0. Only updatable while the challenge is PENDING. | [optional] 
**minimumEquityPercentageCondition** | [**UpdateFieldInteger**](UpdateFieldInteger.md) | In the range [0,100). Only updatable while the challenge is PENDING. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


