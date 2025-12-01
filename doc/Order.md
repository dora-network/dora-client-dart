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
**originalPrice** | **double** | If Kind is LIMIT, this is the original limit price. If Kind is MARKET, this may be 0 or omitted. | [optional] 
**avgFillPrice** | **double** |  | [optional] 
**cancelledQuantity** | **double** | Quantity that was cancelled, if any. | [optional] 
**openQuantity** | **double** | Quantity that is still open, i.e., not filled or cancelled. | [optional] 
**originalQuantity** | **double** | The original quantity of the order when it was created. | [optional] 
**filledQuantity** | **double** | Quantity that has been filled so far. | [optional] 
**filledNotional** | **double** | Quote quantity that has been filled so far. | [optional] 
**lastUpdateAt** | [**DateTime**](DateTime.md) |  | [optional] 
**openedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**inverseLeverage** | **double** |  | [optional] 
**side** | [**Side**](Side.md) |  | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**userId** | **String** |  | [optional] 
**orderModifiers** | [**List<OrderModifierKind>**](OrderModifierKind.md) |  | [optional] [default to const []]
**positionId** | **String** |  | [optional] 
**orderInfo** | **String** |  | [optional] 
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] 
**triggerPrice** | **double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


