# dora_client.model.WithdrawalResponse

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**withdrawalId** | **String** |  | [optional] 
**networkChainId** | **int** | Internal numeric identifier of the chain. | [optional] 
**networkName** | **String** | Human-readable network name. | [optional] 
**chainId** | **String** | EVM chain ID. | [optional] 
**userId** | **String** |  | [optional] 
**accountId** | **String** |  | [optional] 
**toAddress** | **String** | Destination wallet address as a 0x-prefixed hex string. | [optional] 
**quantity** | **String** | Human-decimal USDC quantity to withdraw (base units divided by 10^6). | [optional] 
**fee** | **String** | Human-decimal USDC network fee (base units divided by 10^6). 0 until the requester locks a quoted fee as part of approval. | [optional] 
**status** | [**Web3WithdrawalStatus**](Web3WithdrawalStatus.md) |  | [optional] 
**txHash** | **String** | Broadcast withdraw() transaction hash as a 0x-prefixed hex string. Present from `BROADCAST` onward. | [optional] 
**failureReason** | **String** | Reason the withdrawal was rejected or failed. Present for REJECTED/FAILED. | [optional] 
**approvedBy** | **String** | Admin who approved the withdrawal. Present once approved. | [optional] 
**approvedAt** | [**DateTime**](DateTime.md) | When the withdrawal was approved. Present once approved. | [optional] 
**settlementTransactionId** | **String** | Ledger settlement transaction. Present once confirmed. | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


