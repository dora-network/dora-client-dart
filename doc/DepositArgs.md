# dora_client.model.DepositArgs

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **String** | Deposit quantity in USDC base units (10^-6 USDC), as a decimal string. Matches the permit's value. | 
**userId** | **String** | The caller's user ID as 16 bytes, 0x-prefixed hex. Stored on-chain with the deposit and mapped back to the user by the indexer. | 
**clientReferenceId** | **String** | The bytes32 client reference as a 0x-prefixed hex string. All zero bytes when not supplied. | 
**deadline** | **String** | Unix timestamp (seconds), as a decimal string. Matches the permit's deadline exactly. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


