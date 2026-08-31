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
**firstName** | **String** |  | 
**lastName** | **String** |  | 
**userName** | **String** |  | 
**countryOfDomicile** | [**CountryCode**](CountryCode.md) |  | 
**nativeAssetId** | **String** |  | 
**photoUrl** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**providerId** | **String** |  | [optional] 
**roles** | [**List<UserRole>**](UserRole.md) |  | [default to const []]
**managedCompetitionIds** | **List<String>** | Competition IDs this user is explicitly allowed to manage when they have COMPETITION_MANAGER role. Empty means no competition-management access. | [optional] [default to const []]
**timezone** | **String** | User's timezone, e.g., 'America/New_York', or an offset. | [optional] 
**timezoneOffset** | **int** | timezone offset in seconds | [optional] 
**verifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**showTutorialCards** | **bool** |  | 
**notificationsEnabled** | **bool** |  | 
**tenantId** | **String** |  | 
**allowEmailNotifications** | **bool** |  | 
**allowLiquidationsNotifications** | **bool** |  | 
**allowDepositWithdrawalNotifications** | **bool** |  | 
**allowOrdersNotifications** | **bool** |  | 
**allowCopyTrading** | **bool** |  | 
**kycCompletedAt** | [**DateTime**](DateTime.md) | When the user completed KYC. Omitted/null if KYC has not been completed. Set via POST /v1/integrators/user/{user_id}/kyc. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


