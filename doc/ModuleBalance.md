# dora_client.model.ModuleBalance

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetId** | **String** |  | [optional] 
**seq** | **int** |  | [optional] 
**available** | **double** | The available balance in the module for this asset | [optional] 
**supplied** | **double** | The total amount supplied to the module for this asset | [optional] 
**suppliedCollateral** | **double** | The amount supplied as collateral from user balances in the module for this asset | [optional] 
**virtual** | **double** | Assets minted by virtual-borrowing, but not yet repaid | [optional] 
**borrowed** | **double** | The total amount borrowed from the supplied but not yet repaid | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


