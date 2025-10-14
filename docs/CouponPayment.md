# dora_client.model.CouponPayment

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [default to null]
**assetId** | **String** |  | [optional] [default to null]
**yield_** | **double** |  | [optional] [default to null]
**startAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**endAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**payAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**availableToPay** | **String** |  | [optional] [default to null]
**completedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**processEvery** | **int** | Number of nanoseconds to wait between coupon payment processing, must be at least 1000 (1 microsecond) | [optional] [default to null]
**lastProcessedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

