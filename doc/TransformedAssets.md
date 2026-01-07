# dora_client.model.TransformedAssets

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gained** | **Map<String, String>** | Assets that have been gained by stablecoin equivalence transformations. They cannot be withdrawn from the platform until converted back to the original asset. | [optional] [default to const {}]
**lost** | **Map<String, String>** | Assets that have been lost by stablecoin equivalence transformations. They can be recovered by converting back any assets gained by stablecoin equivalence transformations. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


