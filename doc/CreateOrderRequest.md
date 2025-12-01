# dora_client.model.CreateOrderRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **double** |  | 
**inverseLeverage** | **double** |  | 
**price** | **double** |  | [optional] 
**kind** | [**OrderKind**](OrderKind.md) |  | 
**side** | [**Side**](Side.md) |  | 
**positionId** | **String** | position ID to use for the order. required. | 
**orderBookId** | **String** | Required: the order book to submit the order to | 
**orderModifiers** | [**List<OrderModifierKind>**](OrderModifierKind.md) |  | [optional] [default to const []]
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] 
**triggerPrice** | **double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


