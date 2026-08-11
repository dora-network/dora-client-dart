# dora_client.model.CashReserveBreakdown

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**completedPac** | **String** | Completed PAC (partially accrued coupon) obligations the user owes, in USD. | 
**outstandingLai** | **String** | Outstanding LAI (leverage accrued interest) the user owes, in USD. | 
**estimatedFees** | **String** | Estimated trading fees for the current settlement period, capped at a configured fraction (1% by default) of the user's traded USD volume since 00:00:00 UTC. | 
**borrowedPortion** | **String** | Configured fraction (10% by default) of the user's total outstanding borrowed value, in USD. | 
**floor** | **String** | Configured absolute minimum requirement, in USD. | 
**total** | **String** | The amount of USD the user must keep available in their Global Account. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


