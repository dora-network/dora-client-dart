# dora_client.model.UserDeactivation

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deactivationId** | **String** |  | 
**userId** | **String** |  | 
**requestedBy** | **String** | Admin that requested the deactivation. | 
**reason** | **String** |  | 
**status** | **String** | PENDING: wind-down in progress. FAILED: wind-down gave up; admin can re-trigger. COMPLETED: account deactivated. REACTIVATED: blocks lifted. | 
**attempts** | **int** | Wind-down attempts performed so far. | 
**result** | **String** | Latest wind-down outcome or error summary. | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**completedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**reactivatedBy** | **String** |  | [optional] 
**reactivatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


