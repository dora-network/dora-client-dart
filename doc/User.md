# dora_client.model.User

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**closedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**disabledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**email** | **String** |  | 
**name** | **String** |  | 
**nativeAssetId** | **String** |  | 
**photoUrl** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**providerId** | **String** |  | [optional] 
**roles** | [**List<UserRole>**](UserRole.md) |  | [default to const []]
**timezone** | **String** | User's timezone, e.g., 'America/New_York', or an offset. | [optional] 
**timezoneOffset** | **int** | timezone offset in seconds | [optional] 
**verifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**showTutorialCards** | **bool** |  | 
**notificationsEnabled** | **bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


