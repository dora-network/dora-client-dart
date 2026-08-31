# dora_client.model.TradingChallengeRegistrationRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tradingChallengeId** | **String** |  | 
**tradingChallengeName** | **String** |  | [optional] 
**tradingChallengeType** | **String** |  | [optional] 
**tradingChallengeStatus** | **String** |  | [optional] 
**userId** | **String** |  | 
**userEmail** | **String** |  | [optional] 
**userName** | **String** |  | [optional] 
**tenantId** | **String** |  | 
**status** | **String** |  | 
**reviewedBy** | **String** | Who settled the request. Absent while it is PENDING. | [optional] 
**reviewedAt** | [**DateTime**](DateTime.md) | When it was settled. Absent while it is PENDING. | [optional] 
**reviewReason** | **String** | Free-text note kept for the audit trail. Optional on both decisions. | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


