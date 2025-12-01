# dora_client.model.ValidateSubmitOrderRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **String** |  | [default to null]
**tick** | **String** | Minimum tradable increment for the selected order book | [default to null]
**kind** | [**OrderKind**](OrderKind.md) |  | [default to null]
**side** | [**Side**](Side.md) |  | [optional] [default to null]
**price** | **String** | If kind is LIMIT, must be &gt; 0; if MARKET it must be 0 or omitted | [default to null]
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**inverseLeverage** | **String** |  | [default to null]
**userBalance** | **String** | User balance used to ensure they can afford the requested quantity | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

