# dora_client.model.Position

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for the position. Used, for example, when creating an order from a position, or deciding collateral should be transferred from position A to position B. | [optional] 
**assetId** | **String** |  | [optional] 
**seq** | **int** |  | [optional] 
**isGlobal** | **bool** |  | [optional] 
**available** | **String** | The available balance in the position for this asset that are not locked, supplied, or used as collateral | [optional] 
**locked** | **String** | The balance that has been reserved for a current order. If spent by the order, they are removed. If the order is cancelled, they are returned to the position's available balance. | [optional] 
**supplied** | **String** | The balance that user has supplied to the leverage module. The user remains entitled to these assets and can withdraw them into their available balance. | [optional] 
**borrowed** | **String** | The total amount of debt outstanding for this position. This position cannot be closed until all debt is fully repaid, i.e. borrowed = 0. | [optional] 
**impendingBorrows** | **String** | The equivalent of locked balances, but for leveraged orders. If a user has an active order that would borrow assets as part of its input, then their borrow limit must be reduced until the order is executed or cancelled. | [optional] 
**avgEntryPrice** | **String** | average cost per unit quantity that was paid (long positions) or received (short positions) for this asset. | [optional] 
**borrowLimit** | **String** | The borrow limit | [optional] 
**liquidationThreshold** | **String** | The borrow limit | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**positionName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


