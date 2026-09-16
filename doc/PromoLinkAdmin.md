# dora_client.model.PromoLinkAdmin

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tokenPrefix** | **String** |  | 
**url** | **String** | Only present when reveal=true. Private; do not log or cache. | [optional] 
**status** | [**PromoLinkStatus**](PromoLinkStatus.md) |  | 
**expiresAt** | [**DateTime**](DateTime.md) |  | 
**claimedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**claimedEmail** | **String** | Masked as the first character, three asterisks, and domain. | [optional] 
**userId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


