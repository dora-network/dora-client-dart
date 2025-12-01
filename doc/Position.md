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
**available** | **double** | The available balance in the position for this asset that are not locked, supplied, or used as collateral | [optional] 
**locked** | **double** | The balance that has been reserved for a current order. If spent by the order, they are removed. If the order is cancelled, they are returned to the position's available balance. | [optional] 
**supplied** | **double** | The balance that user has supplied to the leverage module. The user remains entitled to these assets and can withdraw them into their available balance. | [optional] 
**collateral** | **double** | The balance that has been locked or supplied, but are marked as collateral to support borrow limits and can be consumed in case of liquidation. When unmarked as collateral, the balance returns to the available balance. | [optional] 
**suppliedCollateral** | **double** | The balance that have been supplied to the leverage module and marked as collateral. The user remains entitled to this balance and can withdraw it into the collateral balance, or unmark them as collateral and move them to the supplied balance. | [optional] 
**borrowed** | **double** | The total amount of debt outstanding for this position. The position's collateral + supplied_collateral must support a borrow limit sufficient to cover all borrowed assets. This position cannot be closed until all debt is fully repaid, i.e. borrowed = 0. | [optional] 
**impendingBorrows** | **double** | The equivalent of locked balances, but for leveraged orders. If a user has an active order that would borrow assets as part of its input, then their borrow limit must be reduced until the order is executed or cancelled. | [optional] 
**avgEntryPrice** | **double** | average cost per unit quantity that was paid (long positions) or received (short positions) for this asset. | [optional] 
**borrowLimit** | **double** | The borrow limit | [optional] 
**liquidationThreshold** | **double** | The borrow limit | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**positionName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


