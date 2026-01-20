# dora_client.model.User

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**closedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**disabledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**email** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**nativeAssetId** | **String** |  | [optional] 
**photoUrl** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**providerId** | **String** |  | [optional] 
**roles** | [**List<UserRole>**](UserRole.md) |  | [optional] [default to const []]
**timezone** | **String** | User's timezone, e.g., 'America/New_York', or an offset. | [optional] 
**timezoneOffset** | **int** | timezone offset in seconds | [optional] 
**verifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**showTutorialCards** | **bool** |  | [optional] 
**notificationsEnabled** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


