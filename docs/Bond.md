# dora_client.model.Bond

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [default to null]
**kind** | [**BondKind**](BondKind.md) |  | [optional] [default to null]
**couponStartAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**finalCouponAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**isin** | **String** |  | [optional] [default to null]
**issuedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**issuer** | **String** |  | [optional] [default to null]
**maturityAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**principalValue** | **String** |  | [optional] [default to null]
**paymentsPerYear** | **int** |  | [optional] [default to null]
**paymentsEvery** | **int** | Coupon payment frequency in nanoseconds (minimum 1000 i.e. 1 microsecond) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

