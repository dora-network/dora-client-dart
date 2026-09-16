# dora_client.model.CreateWithdrawalRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**withdrawalId** | **String** | Client-supplied idempotency key (also the on-chain correlation key). Repeating a request with the same withdrawal_id has no additional effect. | 
**toAddress** | **String** | Destination wallet address as a 0x-prefixed hex string. Must not be the zero address. | 
**quantity** | **String** | Human-decimal USDC quantity to withdraw. Must be positive and no finer than USDC's 6 on-chain decimals. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


