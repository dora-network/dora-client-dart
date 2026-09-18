# dora_client.model.FeeQuoteResponse

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**withdrawalId** | **String** | The withdrawal this quote was issued for. The quote token is bound to it and cannot be redeemed against any other withdrawal. | 
**to** | **String** | The withdrawal destination address, read from the withdrawal row. | 
**quantity** | **String** | Human-decimal USDC withdrawal quantity, read from the withdrawal row. | 
**fee** | **String** | The estimated network fee, in human USDC. | 
**feeBaseUnits** | **String** | The estimated network fee, in micro-USDC base units. | 
**chainId** | **String** | EVM chain ID the quote was computed for. | 
**quoteToken** | **String** | Signed, TTL-bound quote token to submit to PUT /v1/web3/withdrawals/{withdrawal_id} so the server can validate the fee it quoted. It names the withdrawal it was issued for. | 
**expiresAt** | [**DateTime**](DateTime.md) | When the quote token expires. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


