# dora_client.model.CreateAffiliateProgramRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tenantId** | **String** | Owning tenant for administration. This does not define a referral destination. | 
**name** | **String** | No surrounding whitespace or control characters. | 
**description** | **String** | Omitted or null defaults to an empty description. | [optional] [default to '']
**isActive** | **bool** | Inactive programs retain registrations, but cannot issue or resolve codes. Set true to create an active program. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


