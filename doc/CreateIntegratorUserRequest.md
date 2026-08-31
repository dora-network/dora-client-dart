# dora_client.model.CreateIntegratorUserRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**userName** | **String** |  | [optional] 
**countryOfDomicile** | [**CountryCode**](CountryCode.md) |  | [optional] 
**nativeAssetId** | **String** | Optional: the user's native asset ID. Must be a CURRENCY asset; defaults to USD. The USDC asset is never allowed for integrator-created users. | [optional] 
**photoUrl** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**providerId** | **String** |  | [optional] 
**timezone** | **String** |  | [optional] 
**challengeId** | **String** | Optional: sign the new user up for this trading challenge. This creates a PENDING registration request that an admin, the tenant's integrator or one of the challenge's managers must approve before the user is actually enrolled. The challenge must belong to the new user's tenant and still be open for entries, otherwise the whole sign-up fails. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


