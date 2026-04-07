//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://staging.dora.co', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'APIKeyResponse':
          return APIKeyResponse.fromJson(value);
        case 'APIKeyResponseEnvelope':
          return APIKeyResponseEnvelope.fromJson(value);
        case 'APIKeys':
          return APIKeys.fromJson(value);
        case 'AllPositions':
          return AllPositions.fromJson(value);
        case 'AllPositionsResponseEnvelope':
          return AllPositionsResponseEnvelope.fromJson(value);
        case 'AllWithdrawalInitiationsResponseEnvelope':
          return AllWithdrawalInitiationsResponseEnvelope.fromJson(value);
        case 'Asset':
          return Asset.fromJson(value);
        case 'AssetConfig':
          return AssetConfig.fromJson(value);
        case 'AssetKind':
          return AssetKindTypeTransformer().decode(value);
        case 'AssetPrice':
          return AssetPrice.fromJson(value);
        case 'AssetPriceResponseEnvelope':
          return AssetPriceResponseEnvelope.fromJson(value);
        case 'AssetRequestError':
          return AssetRequestError.fromJson(value);
        case 'AssetYTM':
          return AssetYTM.fromJson(value);
        case 'BalanceTransfer':
          return BalanceTransfer.fromJson(value);
        case 'BalancesResponse':
          return BalancesResponse.fromJson(value);
        case 'Bond':
          return Bond.fromJson(value);
        case 'BondKind':
          return BondKindTypeTransformer().decode(value);
        case 'CancelOrderResponseEnvelope':
          return CancelOrderResponseEnvelope.fromJson(value);
        case 'Candle':
          return Candle.fromJson(value);
        case 'CandleResolution':
          return CandleResolutionTypeTransformer().decode(value);
        case 'ClaimLeverageAccruedInterest':
          return ClaimLeverageAccruedInterest.fromJson(value);
        case 'ClaimLeverageAccruedInterestRequest':
          return ClaimLeverageAccruedInterestRequest.fromJson(value);
        case 'ClaimLeverageAccruedInterestResponseEnvelope':
          return ClaimLeverageAccruedInterestResponseEnvelope.fromJson(value);
        case 'ClosePositionRequest':
          return ClosePositionRequest.fromJson(value);
        case 'ClosePositionResp':
          return ClosePositionResp.fromJson(value);
        case 'ClosePositionResponseEnvelope':
          return ClosePositionResponseEnvelope.fromJson(value);
        case 'Collateral':
          return Collateral.fromJson(value);
        case 'CouponPayment':
          return CouponPayment.fromJson(value);
        case 'CreateAPIKeyData':
          return CreateAPIKeyData.fromJson(value);
        case 'CreateAPIKeyRequest':
          return CreateAPIKeyRequest.fromJson(value);
        case 'CreateAPIKeyResponseEnvelope':
          return CreateAPIKeyResponseEnvelope.fromJson(value);
        case 'CreateConditionalOrderRequest':
          return CreateConditionalOrderRequest.fromJson(value);
        case 'CreateConditionalOrderResponseData':
          return CreateConditionalOrderResponseData.fromJson(value);
        case 'CreateConditionalOrderResponseEnvelope':
          return CreateConditionalOrderResponseEnvelope.fromJson(value);
        case 'CreateIntegratorUserRequest':
          return CreateIntegratorUserRequest.fromJson(value);
        case 'CreateOrUpdateUserResponse':
          return CreateOrUpdateUserResponse.fromJson(value);
        case 'CreateOrderRequest':
          return CreateOrderRequest.fromJson(value);
        case 'CreateOrderResponseEnvelope':
          return CreateOrderResponseEnvelope.fromJson(value);
        case 'CurrentLeverageAccruedInterest':
          return CurrentLeverageAccruedInterest.fromJson(value);
        case 'CurrentLeverageAccruedInterestResponseEnvelope':
          return CurrentLeverageAccruedInterestResponseEnvelope.fromJson(value);
        case 'DefundUserRequest':
          return DefundUserRequest.fromJson(value);
        case 'EmailExistsResponseEnvelope':
          return EmailExistsResponseEnvelope.fromJson(value);
        case 'FundUser':
          return FundUser.fromJson(value);
        case 'FundUserRequest':
          return FundUserRequest.fromJson(value);
        case 'FundUserResponseEnvelope':
          return FundUserResponseEnvelope.fromJson(value);
        case 'GetAssetByIDResponseEnvelope':
          return GetAssetByIDResponseEnvelope.fromJson(value);
        case 'GetAssetYTMByIDResponseEnvelope':
          return GetAssetYTMByIDResponseEnvelope.fromJson(value);
        case 'GetRealizedPnlSettlementsResponseEnvelope':
          return GetRealizedPnlSettlementsResponseEnvelope.fromJson(value);
        case 'GetTopOfBookResponseEnvelope':
          return GetTopOfBookResponseEnvelope.fromJson(value);
        case 'IsolateCollateralRequest':
          return IsolateCollateralRequest.fromJson(value);
        case 'IsolateCollateralResponse':
          return IsolateCollateralResponse.fromJson(value);
        case 'IsolatedCollateral':
          return IsolatedCollateral.fromJson(value);
        case 'IsolatedPosition':
          return IsolatedPosition.fromJson(value);
        case 'LedgerModuleByAssetResponseEnvelope':
          return LedgerModuleByAssetResponseEnvelope.fromJson(value);
        case 'LedgerModuleResponseEnvelope':
          return LedgerModuleResponseEnvelope.fromJson(value);
        case 'LeverageBalanceResponse':
          return LeverageBalanceResponse.fromJson(value);
        case 'LeverageModuleResponse':
          return LeverageModuleResponse.fromJson(value);
        case 'LeverageRequestError':
          return LeverageRequestError.fromJson(value);
        case 'LeverageType':
          return LeverageTypeTypeTransformer().decode(value);
        case 'LiquidationTargetsResponseEnvelope':
          return LiquidationTargetsResponseEnvelope.fromJson(value);
        case 'Liquidity':
          return Liquidity.fromJson(value);
        case 'LiquidityRequest':
          return LiquidityRequest.fromJson(value);
        case 'LiquidityResponseEnvelope':
          return LiquidityResponseEnvelope.fromJson(value);
        case 'ListAssetPriceResponseEnvelope':
          return ListAssetPriceResponseEnvelope.fromJson(value);
        case 'ListCandlesResponseEnvelope':
          return ListCandlesResponseEnvelope.fromJson(value);
        case 'ListCouponPaymentsResponseEnvelope':
          return ListCouponPaymentsResponseEnvelope.fromJson(value);
        case 'ListOrderBookDepthResponseEnvelope':
          return ListOrderBookDepthResponseEnvelope.fromJson(value);
        case 'ListOrderbookResponseEnvelope':
          return ListOrderbookResponseEnvelope.fromJson(value);
        case 'ListOrdersResponseEnvelope':
          return ListOrdersResponseEnvelope.fromJson(value);
        case 'ListPositionAccountsResponseEnvelope':
          return ListPositionAccountsResponseEnvelope.fromJson(value);
        case 'ListPositionsResponse':
          return ListPositionsResponse.fromJson(value);
        case 'ListTradeResponseEnvelope':
          return ListTradeResponseEnvelope.fromJson(value);
        case 'ListTransactionsResponseEnvelope':
          return ListTransactionsResponseEnvelope.fromJson(value);
        case 'ListUserCouponPaymentsResponseEnvelope':
          return ListUserCouponPaymentsResponseEnvelope.fromJson(value);
        case 'LiveOrderbook':
          return LiveOrderbook.fromJson(value);
        case 'Margin':
          return Margin.fromJson(value);
        case 'Metadata':
          return Metadata.fromJson(value);
        case 'ModuleBalance':
          return ModuleBalance.fromJson(value);
        case 'Order':
          return Order.fromJson(value);
        case 'OrderBook':
          return OrderBook.fromJson(value);
        case 'OrderBookBalance':
          return OrderBookBalance.fromJson(value);
        case 'OrderBookDepth':
          return OrderBookDepth.fromJson(value);
        case 'OrderBookHaltResponseEnvelope':
          return OrderBookHaltResponseEnvelope.fromJson(value);
        case 'OrderBookResponseEnvelope':
          return OrderBookResponseEnvelope.fromJson(value);
        case 'OrderBookResumeResponseEnvelope':
          return OrderBookResumeResponseEnvelope.fromJson(value);
        case 'OrderBookStatus':
          return OrderBookStatusTypeTransformer().decode(value);
        case 'OrderBookSummary':
          return OrderBookSummary.fromJson(value);
        case 'OrderBookSummaryResponseEnvelope':
          return OrderBookSummaryResponseEnvelope.fromJson(value);
        case 'OrderBookTerminateResponseEnvelope':
          return OrderBookTerminateResponseEnvelope.fromJson(value);
        case 'OrderBookTop':
          return OrderBookTop.fromJson(value);
        case 'OrderId':
          return OrderId.fromJson(value);
        case 'OrderKind':
          return OrderKindTypeTransformer().decode(value);
        case 'OrderModifierKind':
          return OrderModifierKindTypeTransformer().decode(value);
        case 'OrderResponseEnvelope':
          return OrderResponseEnvelope.fromJson(value);
        case 'OrderStatus':
          return OrderStatusTypeTransformer().decode(value);
        case 'OrderbookStats':
          return OrderbookStats.fromJson(value);
        case 'OrderbookStatsResponseEnvelope':
          return OrderbookStatsResponseEnvelope.fromJson(value);
        case 'PLAccount':
          return PLAccount.fromJson(value);
        case 'PLAccounts':
          return PLAccounts.fromJson(value);
        case 'PLAsset':
          return PLAsset.fromJson(value);
        case 'PLResponseEnvelope':
          return PLResponseEnvelope.fromJson(value);
        case 'PLSummary':
          return PLSummary.fromJson(value);
        case 'PayLeverageAccruedInterest':
          return PayLeverageAccruedInterest.fromJson(value);
        case 'PayLeverageAccruedInterestRequest':
          return PayLeverageAccruedInterestRequest.fromJson(value);
        case 'PayLeverageAccruedInterestResponseEnvelope':
          return PayLeverageAccruedInterestResponseEnvelope.fromJson(value);
        case 'PoolPrice':
          return PoolPrice.fromJson(value);
        case 'PoolPriceResponseEnvelope':
          return PoolPriceResponseEnvelope.fromJson(value);
        case 'PoolRequestError':
          return PoolRequestError.fromJson(value);
        case 'Portfolio':
          return Portfolio.fromJson(value);
        case 'Position':
          return Position.fromJson(value);
        case 'PositionAccount':
          return PositionAccount.fromJson(value);
        case 'PositionAccounts':
          return PositionAccounts.fromJson(value);
        case 'PositionAsset':
          return PositionAsset.fromJson(value);
        case 'PositionResponse':
          return PositionResponse.fromJson(value);
        case 'PositionSide':
          return PositionSideTypeTransformer().decode(value);
        case 'PositionType':
          return PositionTypeTypeTransformer().decode(value);
        case 'PriceLevel':
          return PriceLevel.fromJson(value);
        case 'RealizedPnlSettlement':
          return RealizedPnlSettlement.fromJson(value);
        case 'RealizedPnlSettlements':
          return RealizedPnlSettlements.fromJson(value);
        case 'ResponseEnvelope':
          return ResponseEnvelope.fromJson(value);
        case 'ResponseEnvelopeOfListAssets':
          return ResponseEnvelopeOfListAssets.fromJson(value);
        case 'RevokeAPIKeyData':
          return RevokeAPIKeyData.fromJson(value);
        case 'RevokeAPIKeyResponseEnvelope':
          return RevokeAPIKeyResponseEnvelope.fromJson(value);
        case 'SettleLeverageAccruedInterest':
          return SettleLeverageAccruedInterest.fromJson(value);
        case 'SettleLeverageAccruedInterestRequest':
          return SettleLeverageAccruedInterestRequest.fromJson(value);
        case 'SettleLeverageAccruedInterestResponseEnvelope':
          return SettleLeverageAccruedInterestResponseEnvelope.fromJson(value);
        case 'SettleRealizedPnlRecordResponseEnvelope':
          return SettleRealizedPnlRecordResponseEnvelope.fromJson(value);
        case 'Side':
          return SideTypeTransformer().decode(value);
        case 'StreamAssetPricesResponse':
          return StreamAssetPricesResponse.fromJson(value);
        case 'StreamAssetsEntry':
          return StreamAssetsEntry.fromJson(value);
        case 'StreamAssetsResponse':
          return StreamAssetsResponse.fromJson(value);
        case 'StreamCandlesEntry':
          return StreamCandlesEntry.fromJson(value);
        case 'StreamCandlesResponse':
          return StreamCandlesResponse.fromJson(value);
        case 'StreamEntry':
          return StreamEntry.fromJson(value);
        case 'StreamOrderBookBalanceEntry':
          return StreamOrderBookBalanceEntry.fromJson(value);
        case 'StreamOrderBookBalancesResponse':
          return StreamOrderBookBalancesResponse.fromJson(value);
        case 'StreamOrderUpdatesEntry':
          return StreamOrderUpdatesEntry.fromJson(value);
        case 'StreamOrderUpdatesResponse':
          return StreamOrderUpdatesResponse.fromJson(value);
        case 'StreamOrdersEntry':
          return StreamOrdersEntry.fromJson(value);
        case 'StreamOrdersResponse':
          return StreamOrdersResponse.fromJson(value);
        case 'StreamPositionsEntry':
          return StreamPositionsEntry.fromJson(value);
        case 'StreamPositionsResponse':
          return StreamPositionsResponse.fromJson(value);
        case 'StreamTradesEntry':
          return StreamTradesEntry.fromJson(value);
        case 'StreamTradesResponse':
          return StreamTradesResponse.fromJson(value);
        case 'StreamTransactionsEntry':
          return StreamTransactionsEntry.fromJson(value);
        case 'StreamTransactionsResponse':
          return StreamTransactionsResponse.fromJson(value);
        case 'StreamUserCouponPaymentsEntry':
          return StreamUserCouponPaymentsEntry.fromJson(value);
        case 'StreamUserCouponPaymentsResponse':
          return StreamUserCouponPaymentsResponse.fromJson(value);
        case 'Supply':
          return Supply.fromJson(value);
        case 'SupplyRequest':
          return SupplyRequest.fromJson(value);
        case 'SupplyResponseEnvelope':
          return SupplyResponseEnvelope.fromJson(value);
        case 'TenantRestrictions':
          return TenantRestrictions.fromJson(value);
        case 'Trade':
          return Trade.fromJson(value);
        case 'TradeRequestError':
          return TradeRequestError.fromJson(value);
        case 'TradeResponseEnvelope':
          return TradeResponseEnvelope.fromJson(value);
        case 'Transaction':
          return Transaction.fromJson(value);
        case 'TransactionKind':
          return TransactionKindTypeTransformer().decode(value);
        case 'TransactionRequestError':
          return TransactionRequestError.fromJson(value);
        case 'TransactionResponseEnvelope':
          return TransactionResponseEnvelope.fromJson(value);
        case 'TransactionsSettlement':
          return TransactionsSettlement.fromJson(value);
        case 'TransactionsSettlementRequest':
          return TransactionsSettlementRequest.fromJson(value);
        case 'TransactionsSettlementsResponse':
          return TransactionsSettlementsResponse.fromJson(value);
        case 'TransactionsSettlementsResponseEnvelope':
          return TransactionsSettlementsResponseEnvelope.fromJson(value);
        case 'TransferBalancesRequest':
          return TransferBalancesRequest.fromJson(value);
        case 'TransferBalancesResponseEnvelope':
          return TransferBalancesResponseEnvelope.fromJson(value);
        case 'TransformedAssets':
          return TransformedAssets.fromJson(value);
        case 'TriggerType':
          return TriggerTypeTypeTransformer().decode(value);
        case 'UnitePositionRequest':
          return UnitePositionRequest.fromJson(value);
        case 'UnitePositionResponseEnvelope':
          return UnitePositionResponseEnvelope.fromJson(value);
        case 'UnitedPosition':
          return UnitedPosition.fromJson(value);
        case 'UpdateFieldBoolean':
          return UpdateFieldBoolean.fromJson(value);
        case 'UpdateFieldString':
          return UpdateFieldString.fromJson(value);
        case 'UpdateRolesString':
          return UpdateRolesString.fromJson(value);
        case 'UpdateUserConfigRequest':
          return UpdateUserConfigRequest.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserBalanceResponseEnvelope':
          return UserBalanceResponseEnvelope.fromJson(value);
        case 'UserConfig':
          return UserConfig.fromJson(value);
        case 'UserConfigResponseEnvelope':
          return UserConfigResponseEnvelope.fromJson(value);
        case 'UserCouponPayment':
          return UserCouponPayment.fromJson(value);
        case 'UserCouponPaymentAssetSummary':
          return UserCouponPaymentAssetSummary.fromJson(value);
        case 'UserCouponPaymentsResponseData':
          return UserCouponPaymentsResponseData.fromJson(value);
        case 'UserCreatedResponseEnvelope':
          return UserCreatedResponseEnvelope.fromJson(value);
        case 'UserDeletedResponseEnvelope':
          return UserDeletedResponseEnvelope.fromJson(value);
        case 'UserEnvelope':
          return UserEnvelope.fromJson(value);
        case 'UserExistsResponse':
          return UserExistsResponse.fromJson(value);
        case 'UserInterest':
          return UserInterest.fromJson(value);
        case 'UserInterestResponseEnvelope':
          return UserInterestResponseEnvelope.fromJson(value);
        case 'UserPositionResponseEnvelope':
          return UserPositionResponseEnvelope.fromJson(value);
        case 'UserRole':
          return UserRoleTypeTransformer().decode(value);
        case 'UserUpdatedResponseEnvelope':
          return UserUpdatedResponseEnvelope.fromJson(value);
        case 'UserValue':
          return UserValue.fromJson(value);
        case 'UserValueResponseEnvelope':
          return UserValueResponseEnvelope.fromJson(value);
        case 'ValidateSubmitOrderRequest':
          return ValidateSubmitOrderRequest.fromJson(value);
        case 'ValidateSubmitOrderResponse':
          return ValidateSubmitOrderResponse.fromJson(value);
        case 'Withdraw':
          return Withdraw.fromJson(value);
        case 'WithdrawRequest':
          return WithdrawRequest.fromJson(value);
        case 'WithdrawResponseEnvelope':
          return WithdrawResponseEnvelope.fromJson(value);
        case 'WithdrawalInitiation':
          return WithdrawalInitiation.fromJson(value);
        case 'WithdrawalInitiationResponseEnvelope':
          return WithdrawalInitiationResponseEnvelope.fromJson(value);
        case 'WithdrawalRequestReason':
          return WithdrawalRequestReason.fromJson(value);
        case 'WithdrawalStatus':
          return WithdrawalStatusTypeTransformer().decode(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
