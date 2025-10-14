# dora_client.model.Order

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **String** |  | [optional] [default to null]
**orderBookId** | **String** |  | [optional] [default to null]
**kind** | [**OrderKind**](OrderKind.md) |  | [optional] [default to null]
**originalPrice** | **String** | If Kind is LIMIT, this is the original limit price. If Kind is MARKET, this may be 0 or omitted. | [optional] [default to null]
**avgFillPrice** | **String** |  | [optional] [default to null]
**cancelledQuantity** | **String** | Quantity that was cancelled, if any. | [optional] [default to null]
**openQuantity** | **String** | Quantity that is still open, i.e., not filled or cancelled. | [optional] [default to null]
**originalQuantity** | **String** | The original quantity of the order when it was created. | [optional] [default to null]
**filledQuantity** | **String** | Quantity that has been filled so far. | [optional] [default to null]
**lastUpdateAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**openedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**inverseLeverage** | **String** |  | [optional] [default to null]
**side** | [**Side**](Side.md) |  | [optional] [default to null]
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] [default to null]
**userId** | **String** |  | [optional] [default to null]
**orderModifiers** | [**List&lt;OrderModifierKind&gt;**](OrderModifierKind.md) |  | [optional] [default to []]
**positionId** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

