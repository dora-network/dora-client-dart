# dora_client.model.IssuePromoLinkBatchRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceType** | [**PromoSourceType**](PromoSourceType.md) |  | 
**sourceId** | **String** |  | 
**sourceName** | **String** |  | [optional] 
**allocation** | **int** | Cannot exceed the configured max_links_per_batch or remaining campaign capacity. | 
**note** | **String** |  | [optional] 
**expiresAt** | [**DateTime**](DateTime.md) | Defaults to challenge end and must fall between challenge start and end in the future. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


