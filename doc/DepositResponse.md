# dora_client.model.DepositResponse

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkChainId** | **int** | Internal numeric identifier of the chain. | 
**networkName** | **String** | Human-readable network name. | 
**chainId** | **String** | EVM chain ID. | 
**txHash** | **String** | Transaction hash as a 0x-prefixed hex string. | 
**logIndex** | **int** | Index of the log within the transaction. | 
**blockNumber** | **int** |  | 
**blockTime** | [**DateTime**](DateTime.md) |  | 
**contractAddress** | **String** | Vault contract address as a 0x-prefixed hex string. | 
**depositorAddress** | **String** | Address that made the deposit, as a 0x-prefixed hex string. | 
**userId** | **String** |  | 
**quantity** | **String** | Human-decimal USDC value (base units divided by 10^6). | 
**clientReferenceId** | **String** | Optional client-supplied reference, as a 0x-prefixed hex string. | [optional] 
**status** | [**Web3EventStatus**](Web3EventStatus.md) |  | 
**transactionId** | **String** | Internal transaction ID, present once the deposit has been credited. | [optional] 
**observedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


