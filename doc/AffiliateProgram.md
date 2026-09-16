# dora_client.model.AffiliateProgram

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tenantId** | **String** | Owning tenant for administration. This does not define a referral destination. | 
**name** | **String** | No surrounding whitespace or control characters. | 
**description** | **String** | Must not contain NUL characters. | 
**isActive** | **bool** | Inactive programs retain registrations, but cannot issue or resolve codes. | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


