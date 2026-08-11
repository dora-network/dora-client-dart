# dora_client.model.CashReserveResponse

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enforced** | **bool** | Whether the minimum cash reserve guard is active in this environment. | 
**availableUsd** | **String** | The user's currently available USD balance in their Global Account. | 
**committedUsd** | **String** | USD still counted in available_usd but already claimed by the user's open market buy orders on the Global Account, which reserve no funds at submission time. The reserve is evaluated against available_usd minus committed_usd. | 
**requiredUsd** | **String** | The user's minimum USD cash reserve requirement. | 
**satisfied** | **bool** | Whether available_usd minus committed_usd is at least required_usd. | 
**breakdown** | [**CashReserveBreakdown**](CashReserveBreakdown.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


