# dora_client.model.CouponPayment

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**assetId** | **String** |  | 
**yield_** | **num** |  | 
**startAt** | [**DateTime**](DateTime.md) |  | 
**endAt** | [**DateTime**](DateTime.md) |  | 
**payAt** | [**DateTime**](DateTime.md) |  | 
**availableToPay** | **String** |  | 
**completedAt** | [**DateTime**](DateTime.md) |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**processEvery** | **int** | Number of nanoseconds to wait between coupon payment processing, must be at least 1000 (1 microsecond) | 
**lastProcessedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


