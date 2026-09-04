# dora_client.model.FeeQuoteResponse

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | The withdrawal destination address, echoed from the request. | 
**quantity** | **String** | Human-decimal USDC withdrawal quantity, echoed from the request. | 
**fee** | **String** | The estimated network fee, in human USDC. | 
**feeBaseUnits** | **String** | The estimated network fee, in micro-USDC base units. | 
**chainId** | **String** | EVM chain ID the quote was computed for. | 
**quoteToken** | **String** | Signed, TTL-bound quote token to submit with a later withdrawal so the server can validate the fee it was quoted. | 
**expiresAt** | [**DateTime**](DateTime.md) | When the quote token expires. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


