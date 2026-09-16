# dora_client.model.AffiliateMembership

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**programId** | **String** |  | 
**tenantId** | **String** | Owning tenant for administration. This does not define a referral destination. | 
**userId** | **String** |  | 
**referralCode** | **String** | Reusable referral code, stored uppercase. Letters, digits, hyphens and underscores are accepted; the first character must be a letter or digit. Matching is case-insensitive. Separate from QR claim tokens. | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**programName** | **String** |  | 
**isActive** | **bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


