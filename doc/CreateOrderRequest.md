# dora_client.model.CreateOrderRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **String** |  | 
**inverseLeverage** | **String** |  | 
**price** | **String** |  | [optional] 
**kind** | [**OrderKind**](OrderKind.md) |  | 
**side** | [**Side**](Side.md) | Required: Must be either 'BUY' or 'SELL' | 
**fromGlobalPosition** | **bool** | use global position for the order or isolated. required. | 
**orderBookId** | **String** | Required: the order book to submit the order to | 
**orderModifiers** | [**List<OrderModifierKind>**](OrderModifierKind.md) |  | [optional] [default to const []]
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] 
**clientOrderId** | **String** | An optional client-provided identifier for the order. | [optional] 
**stopLossPrice** | **String** | Stop loss price | [optional] 
**takeProfitPrice** | **String** | Take profit price | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


