# dora_client.model.DepositCall

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | The vault contract address, as a 0x-prefixed hex string. | 
**chainId** | **int** | EVM chain ID, as a JSON number. | 
**value** | **String** | Native currency value to send with the transaction. Always '0'. | 
**functionSignature** | **String** | Canonical Solidity signature of the vault's permit-aware deposit function: deposit(uint256,bytes16,bytes32,uint256,uint8,bytes32,bytes32). | 
**selector** | **String** | The 4-byte ABI call selector of function_signature, as a 0x-prefixed hex string. | 
**args** | [**DepositArgs**](DepositArgs.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


