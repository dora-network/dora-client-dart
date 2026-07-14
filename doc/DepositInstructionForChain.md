# dora_client.model.DepositInstructionForChain

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkName** | **String** | Human-readable network name, e.g. 'Ethereum Mainnet'. | 
**chainId** | **String** | EVM chain ID. | 
**contractAddress** | **String** | The DoraUSDCVault contract address for this chain, as a 0x-prefixed hex string. | 
**usdcAddress** | **String** | The ERC-20 USDC token contract on this chain, as a 0x-prefixed hex string. It is the verifying contract of the permit; the spender granted by the permit is contract_address (the vault). | 
**approval** | [**PermitTypedData**](PermitTypedData.md) |  | 
**deposit** | [**DepositCall**](DepositCall.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


