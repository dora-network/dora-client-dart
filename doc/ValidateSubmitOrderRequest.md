# dora_client.model.ValidateSubmitOrderRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **double** |  | 
**tick** | **double** | Minimum tradable increment for the selected order book | 
**kind** | [**OrderKind**](OrderKind.md) |  | 
**side** | [**Side**](Side.md) |  | [optional] 
**price** | **double** | If kind is LIMIT, must be > 0; if MARKET it must be 0 or omitted | 
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] 
**inverseLeverage** | **double** |  | 
**userBalance** | **double** | User balance used to ensure they can afford the requested quantity | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


