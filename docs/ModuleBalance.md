# dora_client.model.ModuleBalance

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetId** | **String** |  | [optional] [default to null]
**seq** | **int** |  | [optional] [default to null]
**available** | **String** | The available balance in the module for this asset | [optional] [default to null]
**supplied** | **String** | The total amount supplied to the module for this asset | [optional] [default to null]
**suppliedCollateral** | **String** | The amount supplied as collateral from user balances in the module for this asset | [optional] [default to null]
**virtual** | **String** | Assets minted by virtual-borrowing, but not yet repaid | [optional] [default to null]
**borrowed** | **String** | The total amount borrowed from the supplied but not yet repaid | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

