# dora_client.model.Bond

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**kind** | [**BondKind**](BondKind.md) |  | 
**couponStartAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**finalCouponAt** | [**DateTime**](DateTime.md) |  | [optional] 
**isin** | **String** |  | 
**issuedAt** | [**DateTime**](DateTime.md) |  | 
**issuer** | **String** |  | 
**maturityAt** | [**DateTime**](DateTime.md) |  | 
**principalValue** | **double** |  | 
**paymentsPerYear** | **int** |  | 
**paymentsEvery** | **int** | Coupon payment frequency in nanoseconds (minimum 1000 i.e. 1 microsecond) | 
**nextCouponPayment** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


