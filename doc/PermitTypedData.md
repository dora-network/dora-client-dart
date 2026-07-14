# dora_client.model.PermitTypedData

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**types** | [**Map<String, List<TypedDataField>>**](List.md) | EIP-712 type definitions, keyed by type name ('EIP712Domain' and 'Permit'). | [default to const {}]
**primaryType** | **String** | Always 'Permit'. | 
**domain** | [**PermitDomain**](PermitDomain.md) |  | 
**message** | [**PermitMessage**](PermitMessage.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


