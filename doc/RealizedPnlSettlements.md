# dora_client.model.RealizedPnlSettlements

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**settlements** | [**List<RealizedPnlSettlement>**](RealizedPnlSettlement.md) | A list of realized PnL settlements matching the query parameters of the request | [optional] [default to const []]
**userTotals** | **Map<String, double>** | A map of user IDs to their total realized PnL in USD across all settlements included in the response | [optional] [default to const {}]
**tenantTotals** | **Map<String, double>** | A map of tenant IDs to their total realized PnL in USD across all settlements included in the response | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


