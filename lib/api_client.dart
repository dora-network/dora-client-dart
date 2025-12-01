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
  ApiClient({this.basePath = 'https://localhost:8084', this.authentication,});

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
        case 'Asset':
          return Asset.fromJson(value);
        case 'AssetKind':
          return AssetKindTypeTransformer().decode(value);
        case 'AssetPrice':
          return AssetPrice.fromJson(value);
        case 'AssetRequestError':
          return AssetRequestError.fromJson(value);
        case 'BalanceTransfer':
          return BalanceTransfer.fromJson(value);
        case 'BalancesResponse':
          return BalancesResponse.fromJson(value);
        case 'Bond':
          return Bond.fromJson(value);
        case 'BondKind':
          return BondKindTypeTransformer().decode(value);
        case 'CancelOrderResponse':
          return CancelOrderResponse.fromJson(value);
        case 'Candle':
          return Candle.fromJson(value);
        case 'CandleResolution':
          return CandleResolutionTypeTransformer().decode(value);
        case 'Collateral':
          return Collateral.fromJson(value);
        case 'CouponPayment':
          return CouponPayment.fromJson(value);
        case 'CreateOrUpdateUserResponse':
          return CreateOrUpdateUserResponse.fromJson(value);
        case 'CreateOrderRequest':
          return CreateOrderRequest.fromJson(value);
        case 'CreateOrderResponse':
          return CreateOrderResponse.fromJson(value);
        case 'GetAssetByIDResponse':
          return GetAssetByIDResponse.fromJson(value);
        case 'GetAssetPriceResponse':
          return GetAssetPriceResponse.fromJson(value);
        case 'GetOrderBookResponse':
          return GetOrderBookResponse.fromJson(value);
        case 'GetOrderBookSummaryResponse':
          return GetOrderBookSummaryResponse.fromJson(value);
        case 'GetOrderResponse':
          return GetOrderResponse.fromJson(value);
        case 'GetPoolPriceResponse':
          return GetPoolPriceResponse.fromJson(value);
        case 'GetTopOfBookResponse':
          return GetTopOfBookResponse.fromJson(value);
        case 'GetTransactionResponse':
          return GetTransactionResponse.fromJson(value);
        case 'GetUserConfigResponse':
          return GetUserConfigResponse.fromJson(value);
        case 'GetUserResponse':
          return GetUserResponse.fromJson(value);
        case 'IsolateCollateralRequest':
          return IsolateCollateralRequest.fromJson(value);
        case 'IsolateCollateralResponse':
          return IsolateCollateralResponse.fromJson(value);
        case 'IsolatedCollateral':
          return IsolatedCollateral.fromJson(value);
        case 'IsolatedPosition':
          return IsolatedPosition.fromJson(value);
        case 'LedgerModuleByAssetResponse':
          return LedgerModuleByAssetResponse.fromJson(value);
        case 'LedgerModuleResponse':
          return LedgerModuleResponse.fromJson(value);
        case 'LeverageBalanceResponse':
          return LeverageBalanceResponse.fromJson(value);
        case 'LeverageModuleResponse':
          return LeverageModuleResponse.fromJson(value);
        case 'LeverageRequestError':
          return LeverageRequestError.fromJson(value);
        case 'LeverageType':
          return LeverageTypeTypeTransformer().decode(value);
        case 'LiquidationTargetsResponse':
          return LiquidationTargetsResponse.fromJson(value);
        case 'Liquidity':
          return Liquidity.fromJson(value);
        case 'LiquidityRequest':
          return LiquidityRequest.fromJson(value);
        case 'LiquidityResponse':
          return LiquidityResponse.fromJson(value);
        case 'ListAssetPriceResponse':
          return ListAssetPriceResponse.fromJson(value);
        case 'ListAssetsResponse':
          return ListAssetsResponse.fromJson(value);
        case 'ListCandlesResponse':
          return ListCandlesResponse.fromJson(value);
        case 'ListCouponPaymentsResponse':
          return ListCouponPaymentsResponse.fromJson(value);
        case 'ListOrderBookDepthResponse':
          return ListOrderBookDepthResponse.fromJson(value);
        case 'ListOrderBooksResponse':
          return ListOrderBooksResponse.fromJson(value);
        case 'ListOrdersResponse':
          return ListOrdersResponse.fromJson(value);
        case 'ListPositionsResponse':
          return ListPositionsResponse.fromJson(value);
        case 'ListTradeResponse':
          return ListTradeResponse.fromJson(value);
        case 'ListTransactionsResponse':
          return ListTransactionsResponse.fromJson(value);
        case 'LiveOrderbook':
          return LiveOrderbook.fromJson(value);
        case 'Metadata':
          return Metadata.fromJson(value);
        case 'ModuleBalance':
          return ModuleBalance.fromJson(value);
        case 'NewIsolatedPositionRequest':
          return NewIsolatedPositionRequest.fromJson(value);
        case 'NewIsolatedPositionResponse':
          return NewIsolatedPositionResponse.fromJson(value);
        case 'Order':
          return Order.fromJson(value);
        case 'OrderBook':
          return OrderBook.fromJson(value);
        case 'OrderBookBalance':
          return OrderBookBalance.fromJson(value);
        case 'OrderBookDepth':
          return OrderBookDepth.fromJson(value);
        case 'OrderBookHaltResponse':
          return OrderBookHaltResponse.fromJson(value);
        case 'OrderBookResumeResponse':
          return OrderBookResumeResponse.fromJson(value);
        case 'OrderBookStatus':
          return OrderBookStatusTypeTransformer().decode(value);
        case 'OrderBookSummary':
          return OrderBookSummary.fromJson(value);
        case 'OrderBookTerminateResponse':
          return OrderBookTerminateResponse.fromJson(value);
        case 'OrderBookTop':
          return OrderBookTop.fromJson(value);
        case 'OrderId':
          return OrderId.fromJson(value);
        case 'OrderKind':
          return OrderKindTypeTransformer().decode(value);
        case 'OrderModifierKind':
          return OrderModifierKindTypeTransformer().decode(value);
        case 'OrderStatus':
          return OrderStatusTypeTransformer().decode(value);
        case 'PoolPrice':
          return PoolPrice.fromJson(value);
        case 'PoolRequestError':
          return PoolRequestError.fromJson(value);
        case 'Portfolio':
          return Portfolio.fromJson(value);
        case 'Position':
          return Position.fromJson(value);
        case 'PositionResponse':
          return PositionResponse.fromJson(value);
        case 'PositionType':
          return PositionTypeTypeTransformer().decode(value);
        case 'PriceLevel':
          return PriceLevel.fromJson(value);
        case 'ResponseEnvelope':
          return ResponseEnvelope.fromJson(value);
        case 'Side':
          return SideTypeTransformer().decode(value);
        case 'StreamAssetPricesResponseValue':
          return StreamAssetPricesResponseValue.fromJson(value);
        case 'StreamAssetsEntry':
          return StreamAssetsEntry.fromJson(value);
        case 'StreamCandlesEntry':
          return StreamCandlesEntry.fromJson(value);
        case 'StreamEntry':
          return StreamEntry.fromJson(value);
        case 'StreamOrderBookBalanceEntry':
          return StreamOrderBookBalanceEntry.fromJson(value);
        case 'StreamOrderUpdatesEntry':
          return StreamOrderUpdatesEntry.fromJson(value);
        case 'StreamOrdersEntry':
          return StreamOrdersEntry.fromJson(value);
        case 'StreamPositionsEntry':
          return StreamPositionsEntry.fromJson(value);
        case 'StreamTradesEntry':
          return StreamTradesEntry.fromJson(value);
        case 'StreamTransactionsEntry':
          return StreamTransactionsEntry.fromJson(value);
        case 'Supply':
          return Supply.fromJson(value);
        case 'SupplyRequest':
          return SupplyRequest.fromJson(value);
        case 'SupplyResponse':
          return SupplyResponse.fromJson(value);
        case 'Trade':
          return Trade.fromJson(value);
        case 'TradeRequestError':
          return TradeRequestError.fromJson(value);
        case 'TradeResponse':
          return TradeResponse.fromJson(value);
        case 'Transaction':
          return Transaction.fromJson(value);
        case 'TransactionKind':
          return TransactionKindTypeTransformer().decode(value);
        case 'TransactionRequestError':
          return TransactionRequestError.fromJson(value);
        case 'TransferBalancesRequest':
          return TransferBalancesRequest.fromJson(value);
        case 'TransferBalancesResponse':
          return TransferBalancesResponse.fromJson(value);
        case 'TransformedAssets':
          return TransformedAssets.fromJson(value);
        case 'UnitePositionRequest':
          return UnitePositionRequest.fromJson(value);
        case 'UnitePositionResponse':
          return UnitePositionResponse.fromJson(value);
        case 'UnitedPosition':
          return UnitedPosition.fromJson(value);
        case 'UpdateFieldString':
          return UpdateFieldString.fromJson(value);
        case 'UpdateRolesString':
          return UpdateRolesString.fromJson(value);
        case 'UpdateUserConfigRequest':
          return UpdateUserConfigRequest.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserBalanceResponse':
          return UserBalanceResponse.fromJson(value);
        case 'UserConfig':
          return UserConfig.fromJson(value);
        case 'UserDeletedResponse':
          return UserDeletedResponse.fromJson(value);
        case 'UserInterest':
          return UserInterest.fromJson(value);
        case 'UserInterestResponse':
          return UserInterestResponse.fromJson(value);
        case 'UserPositionResponse':
          return UserPositionResponse.fromJson(value);
        case 'UserRole':
          return UserRoleTypeTransformer().decode(value);
        case 'UserUpdatedResponse':
          return UserUpdatedResponse.fromJson(value);
        case 'UserValue':
          return UserValue.fromJson(value);
        case 'UserValueResponse':
          return UserValueResponse.fromJson(value);
        case 'ValidateSubmitOrderRequest':
          return ValidateSubmitOrderRequest.fromJson(value);
        case 'ValidateSubmitOrderResponse':
          return ValidateSubmitOrderResponse.fromJson(value);
        case 'Withdraw':
          return Withdraw.fromJson(value);
        case 'WithdrawRequest':
          return WithdrawRequest.fromJson(value);
        case 'WithdrawResponse':
          return WithdrawResponse.fromJson(value);
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
