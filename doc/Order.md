# dora_client.model.Order

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **String** |  | 
**orderBookId** | **String** |  | 
**kind** | [**OrderKind**](OrderKind.md) |  | 
**originalPrice** | **String** | If Kind is LIMIT, this is the original limit price. If Kind is MARKET, this may be 0 or omitted. | 
**avgFillPrice** | **String** |  | 
**cancelledQuantity** | **String** | Quantity that was cancelled, if any. | 
**openQuantity** | **String** | Quantity that is still open, i.e., not filled or cancelled. | 
**originalQuantity** | **String** | The original quantity of the order when it was created. | 
**filledQuantity** | **String** | Quantity that has been filled so far. | 
**filledNotional** | **String** | Quote quantity that has been filled so far. | 
**lockedQuantity** | **String** | Balance locked to ensure limit buy orders have sufficient balance to be fulfilled | 
**impendingBorrowsQuantity** | **String** | Borrows locked from the liquidity pool to ensure limit short sell orders have sufficient balance to be fulfilled | 
**lastUpdateAt** | [**DateTime**](DateTime.md) |  | 
**openedAt** | [**DateTime**](DateTime.md) |  | 
**inverseLeverage** | **String** |  | 
**side** | [**Side**](Side.md) |  | 
**status** | [**OrderStatus**](OrderStatus.md) |  | 
**userId** | **String** |  | 
**orderModifiers** | [**List<OrderModifierKind>**](OrderModifierKind.md) |  | [optional] [default to const []]
**positionId** | **String** |  | 
**orderInfo** | **String** |  | [optional] 
**goodTillDate** | [**DateTime**](DateTime.md) |  | [optional] 
**triggerPrice** | **String** |  | [optional] 
**triggerType** | [**TriggerType**](TriggerType.md) |  | [optional] 
**clientOrderId** | **String** | An optional client-provided identifier for the order. | [optional] 
**parentOrderId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


