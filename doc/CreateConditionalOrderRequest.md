# dora_client.model.CreateConditionalOrderRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**price** | **double** |  | 
**orderBookId** | **String** | Required: the order book to submit the order to | 
**positionId** | **String** | Required: the position to submit the order to | 
**assetId** | **String** | Required: the asset to submit the order to | 
**stopLossPrice** | **double** | Stop loss price | [optional] 
**takeProfitPrice** | **double** | Take profit price | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


