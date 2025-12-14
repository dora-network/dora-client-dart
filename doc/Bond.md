# dora_client.model.Bond

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**kind** | [**BondKind**](BondKind.md) |  | [optional] 
**couponStartAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**finalCouponAt** | [**DateTime**](DateTime.md) |  | [optional] 
**isin** | **String** |  | [optional] 
**issuedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**issuer** | **String** |  | [optional] 
**maturityAt** | [**DateTime**](DateTime.md) |  | [optional] 
**principalValue** | **double** |  | [optional] 
**paymentsPerYear** | **int** |  | [optional] 
**paymentsEvery** | **int** | Coupon payment frequency in nanoseconds (minimum 1000 i.e. 1 microsecond) | [optional] 
**nextCouponPayment** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


