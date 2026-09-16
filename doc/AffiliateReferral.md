# dora_client.model.AffiliateReferral

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** |  | 
**programId** | **String** |  | 
**referrerId** | **String** |  | 
**referrerUserId** | **String** |  | 
**signupSource** | **String** | Client-reported signup hostname. Empty means unknown. | 
**firstName** | **String** |  | 
**lastName** | **String** |  | 
**email** | **String** |  | 
**signedUpAt** | [**DateTime**](DateTime.md) |  | 
**kycCompleted** | **bool** |  | 
**kycCompletedAt** | [**DateTime**](DateTime.md) |  | 
**discordStatus** | **String** | No Discord membership integration is currently available. Unknown must not be interpreted as not joined. | 
**depositCount** | **int** |  | 
**withdrawalCount** | **int** |  | 
**hasTraded** | **bool** |  | 
**firstDepositAt** | [**DateTime**](DateTime.md) |  | 
**lastDepositAt** | [**DateTime**](DateTime.md) |  | 
**firstWithdrawalAt** | [**DateTime**](DateTime.md) |  | 
**lastWithdrawalAt** | [**DateTime**](DateTime.md) |  | 
**dailyVolumeUsd** | **String** | Sum of absolute executed FILL quantity1 on USD-quoted trades during the selected UTC day. Both buy and sell executions count, once per user-side fill. | 
**monthlyVolumeUsd** | **String** | Same executed USD quote-notional definition for the calendar month containing date. | 
**dailyRealizedPnlUsd** | **String** | Sum of realized_pnl_settlements.realized_usd created during the selected UTC day, matching the existing PnL ranking convention. Excludes unrealized PnL; this is not total account equity change. | 
**attributedAt** | [**DateTime**](DateTime.md) | Immutable referral assignment time. Earlier activity is excluded from affiliate metrics and cash flows. | 
**monthlyRealizedPnlUsd** | **String** | Realized PnL for the UTC calendar month containing date, including only settlements at or after attributed_at. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


