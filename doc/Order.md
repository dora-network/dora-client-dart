# dora_client.model.Order

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **String** |  | [optional] 
**orderBookId** | **String** |  | [optional] 
**kind** | [**OrderKind**](OrderKind.md) |  | [optional] 
**originalPrice** | **String** | If Kind is LIMIT, this is the original limit price. If Kind is MARKET, this may be 0 or omitted. | [optional] 
**avgFillPrice** | **String** |  | [optional] 
**cancelledQuantity** | **String** | Quantity that was cancelled, if any. | [optional] 
**openQuantity** | **String** | Quantity that is still open, i.e., not filled or cancelled. | [optional] 
**originalQuantity** | **String** | The original quantity of the order when it was created. | [optional] 
**filledQuantity** | **String** | Quantity that has been filled so far. | [optional] 
**filledNotional** | **String** | Quote quantity that has been filled so far. | [optional] 
**lastUpdateAt** | [**DateTime**](DateTime.md) |  | [optional] 
**openedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**inverseLeverage** | **String** |  | [optional] 
**side** | [**Side**](Side.md) |  | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**userId** | **String** |  | [optional] 
**orderModifiers** | [**List<OrderModifierKind>**](OrderModifierKind.md) |  | [optional] [default to const []]
**positionId** | **String** |  | [optional] 
**orderInfo** | **String** |  | [optional] 
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] 
**triggerPrice** | **String** |  | [optional] 
**triggerType** | [**TriggerType**](TriggerType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


