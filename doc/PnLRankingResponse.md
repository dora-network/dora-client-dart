# dora_client.model.PnLRankingResponse

## Load the model package
```dart
import 'package:dora_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** |  | 
**firstName** | **String** |  | 
**totalPnl** | **String** |  | 
**realizedPnl** | **String** | Cumulative realized PnL across the user's full trading lifetime. | 
**totalTrades** | **int** |  | 
**winningTrades** | **int** |  | 
**losingTrades** | **int** |  | 
**winRate** | **String** |  | 
**dailyTradingVolume** | **String** | Executed trading volume for the current UTC day. | 
**totalTradingVolume** | **String** | Cumulative executed trading volume across all UTC trading days. | 
**activeTradingDays** | **int** | Number of distinct UTC days on which the user has at least one executed fill. | 
**activated** | **bool** | True once the user has traded on at least 5 distinct UTC days. | 
**kycApproved** | **bool** | Whether the user is currently considered KYC/verification approved. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


