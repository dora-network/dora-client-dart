# dora_client.model.CreateIntegratorUserRequest

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**referralCode** | **String** | Optional affiliate code, normalized to uppercase. Accepted only when creating a new account in the program owning tenant. One immutable attribution per user account; a later signup/linking call cannot add or replace it. Invalid or inactive codes fail signup atomically. Independent of QR acquisition attribution. Existing unassigned users can instead use POST /v1/affiliate_referrals/self; earlier activity is excluded. | [optional] 
**signupSource** | **String** | Optional client-reported HTTP(S) signup site URL, used only with referral_code. When omitted, a valid HTTP(S) Origin header is used; other origins are ignored. Only the hostname is stored, without path, query, credentials or fragment. Unknown if neither supplies a usable hostname. Ignored when referral_code is empty. It does not select or authenticate the tenant. | [optional] 
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


