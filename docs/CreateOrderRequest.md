# dora_client.model.CreateOrderRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **String** |  | [default to null]
**inverseLeverage** | **String** |  | [default to null]
**price** | **String** |  | [optional] [default to null]
**kind** | [**OrderKind**](OrderKind.md) |  | [default to null]
**side** | [**Side**](Side.md) |  | [default to null]
**positionId** | **String** | position ID to use for the order. required. | [default to null]
**orderBookId** | **String** | Required: the order book to submit the order to | [default to null]
**orderModifiers** | [**List&lt;OrderModifierKind&gt;**](OrderModifierKind.md) |  | [optional] [default to []]
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**triggerPrice** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

