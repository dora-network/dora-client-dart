# dora_client.model.DepositInstructionsResponse

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | The authenticated user the instructions are issued for. | 
**ownerAddress** | **String** | The wallet address the instructions were issued for, echoed from the request. | 
**quantity** | **String** | Human-decimal USDC deposit quantity, echoed from the request. | 
**chains** | [**List<DepositInstructionForChain>**](DepositInstructionForChain.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


