# dora_client.model.PermitMessage

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner** | **String** | The user's wallet address (permit owner), as a 0x-prefixed hex string. | 
**spender** | **String** | The vault contract address granted the allowance, as a 0x-prefixed hex string. | 
**value** | **String** | Approved quantity in USDC base units (10^-6 USDC), as a decimal string. | 
**nonce** | **String** | The owner's current USDC permit nonce on this chain, as a decimal string. | 
**deadline** | **String** | Unix timestamp (seconds) at which the permit expires, as a decimal string. One hour from issuance. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


