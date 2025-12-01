part of dora_client.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://localhost:8084"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Asset':
          return new Asset.fromJson(value);
        case 'AssetKind':
           return new AssetKind.fromJson(value);
        case 'AssetPrice':
          return new AssetPrice.fromJson(value);
        case 'AssetRequestError':
          return new AssetRequestError.fromJson(value);
        case 'BalanceTransfer':
          return new BalanceTransfer.fromJson(value);
        case 'BalancesResponse':
          return new BalancesResponse.fromJson(value);
        case 'Bond':
          return new Bond.fromJson(value);
        case 'BondKind':
           return new BondKind.fromJson(value);
        case 'BorrowRequest':
          return new BorrowRequest.fromJson(value);
        case 'BorrowResponse':
          return new BorrowResponse.fromJson(value);
        case 'CancelOrderResponse':
          return new CancelOrderResponse.fromJson(value);
        case 'Candle':
          return new Candle.fromJson(value);
        case 'CandleResolution':
           return new CandleResolution.fromJson(value);
        case 'Collateral':
          return new Collateral.fromJson(value);
        case 'CouponPayment':
          return new CouponPayment.fromJson(value);
        case 'CreateOrUpdateUserResponse':
          return new CreateOrUpdateUserResponse.fromJson(value);
        case 'CreateOrderRequest':
          return new CreateOrderRequest.fromJson(value);
        case 'CreateOrderResponse':
          return new CreateOrderResponse.fromJson(value);
        case 'GetAssetByIDResponse':
          return new GetAssetByIDResponse.fromJson(value);
        case 'GetAssetPriceResponse':
          return new GetAssetPriceResponse.fromJson(value);
        case 'GetOrderBookResponse':
          return new GetOrderBookResponse.fromJson(value);
        case 'GetOrderBookSummaryResponse':
          return new GetOrderBookSummaryResponse.fromJson(value);
        case 'GetOrderResponse':
          return new GetOrderResponse.fromJson(value);
        case 'GetPoolPriceResponse':
          return new GetPoolPriceResponse.fromJson(value);
        case 'GetTopOfBookResponse':
          return new GetTopOfBookResponse.fromJson(value);
        case 'GetTransactionResponse':
          return new GetTransactionResponse.fromJson(value);
        case 'GetUserConfigResponse':
          return new GetUserConfigResponse.fromJson(value);
        case 'GetUserResponse':
          return new GetUserResponse.fromJson(value);
        case 'IsolateCollateralRequest':
          return new IsolateCollateralRequest.fromJson(value);
        case 'IsolateCollateralResponse':
          return new IsolateCollateralResponse.fromJson(value);
        case 'IsolatedCollateral':
          return new IsolatedCollateral.fromJson(value);
        case 'IsolatedPosition':
          return new IsolatedPosition.fromJson(value);
        case 'LedgerModuleByAssetResponse':
          return new LedgerModuleByAssetResponse.fromJson(value);
        case 'LedgerModuleResponse':
          return new LedgerModuleResponse.fromJson(value);
        case 'LeverageBalanceResponse':
          return new LeverageBalanceResponse.fromJson(value);
        case 'LeverageModuleResponse':
          return new LeverageModuleResponse.fromJson(value);
        case 'LeverageRequestError':
          return new LeverageRequestError.fromJson(value);
        case 'LeverageType':
           return new LeverageType.fromJson(value);
        case 'LiquidationTargetsResponse':
          return new LiquidationTargetsResponse.fromJson(value);
        case 'Liquidity':
          return new Liquidity.fromJson(value);
        case 'LiquidityRequest':
          return new LiquidityRequest.fromJson(value);
        case 'LiquidityResponse':
          return new LiquidityResponse.fromJson(value);
        case 'ListAssetPriceResponse':
          return new ListAssetPriceResponse.fromJson(value);
        case 'ListAssetsResponse':
          return new ListAssetsResponse.fromJson(value);
        case 'ListCandlesResponse':
          return new ListCandlesResponse.fromJson(value);
        case 'ListCouponPaymentsResponse':
          return new ListCouponPaymentsResponse.fromJson(value);
        case 'ListOrderBookDepthResponse':
          return new ListOrderBookDepthResponse.fromJson(value);
        case 'ListOrderBooksResponse':
          return new ListOrderBooksResponse.fromJson(value);
        case 'ListOrdersResponse':
          return new ListOrdersResponse.fromJson(value);
        case 'ListPositionsResponse':
          return new ListPositionsResponse.fromJson(value);
        case 'ListTradeResponse':
          return new ListTradeResponse.fromJson(value);
        case 'ListTransactionsResponse':
          return new ListTransactionsResponse.fromJson(value);
        case 'LiveOrderbook':
          return new LiveOrderbook.fromJson(value);
        case 'Metadata':
          return new Metadata.fromJson(value);
        case 'ModuleBalance':
          return new ModuleBalance.fromJson(value);
        case 'NewIsolatedPositionRequest':
          return new NewIsolatedPositionRequest.fromJson(value);
        case 'NewIsolatedPositionResponse':
          return new NewIsolatedPositionResponse.fromJson(value);
        case 'Order':
          return new Order.fromJson(value);
        case 'OrderBook':
          return new OrderBook.fromJson(value);
        case 'OrderBookBalance':
          return new OrderBookBalance.fromJson(value);
        case 'OrderBookDepth':
          return new OrderBookDepth.fromJson(value);
        case 'OrderBookHaltResponse':
          return new OrderBookHaltResponse.fromJson(value);
        case 'OrderBookResumeResponse':
          return new OrderBookResumeResponse.fromJson(value);
        case 'OrderBookStatus':
           return new OrderBookStatus.fromJson(value);
        case 'OrderBookSummary':
          return new OrderBookSummary.fromJson(value);
        case 'OrderBookTerminateResponse':
          return new OrderBookTerminateResponse.fromJson(value);
        case 'OrderBookTop':
          return new OrderBookTop.fromJson(value);
        case 'OrderId':
          return new OrderId.fromJson(value);
        case 'OrderKind':
           return new OrderKind.fromJson(value);
        case 'OrderModifierKind':
           return new OrderModifierKind.fromJson(value);
        case 'OrderStatus':
           return new OrderStatus.fromJson(value);
        case 'PoolPrice':
          return new PoolPrice.fromJson(value);
        case 'PoolRequestError':
          return new PoolRequestError.fromJson(value);
        case 'Portfolio':
          return new Portfolio.fromJson(value);
        case 'Position':
          return new Position.fromJson(value);
        case 'PositionResponse':
          return new PositionResponse.fromJson(value);
        case 'PositionType':
           return new PositionType.fromJson(value);
        case 'PriceLevel':
          return new PriceLevel.fromJson(value);
        case 'RepayRequest':
          return new RepayRequest.fromJson(value);
        case 'RepayResponse':
          return new RepayResponse.fromJson(value);
        case 'ResponseEnvelope':
          return new ResponseEnvelope.fromJson(value);
        case 'Side':
           return new Side.fromJson(value);
        case 'StreamAssetPricesResponse':
          return new StreamAssetPricesResponse.fromJson(value);
        case 'StreamAssetsEntry':
          return new StreamAssetsEntry.fromJson(value);
        case 'StreamAssetsResponse':
          return new StreamAssetsResponse.fromJson(value);
        case 'StreamCandlesEntry':
          return new StreamCandlesEntry.fromJson(value);
        case 'StreamCandlesResponse':
          return new StreamCandlesResponse.fromJson(value);
        case 'StreamEntry':
          return new StreamEntry.fromJson(value);
        case 'StreamOrderBookBalanceEntry':
          return new StreamOrderBookBalanceEntry.fromJson(value);
        case 'StreamOrderBookBalancesResponse':
          return new StreamOrderBookBalancesResponse.fromJson(value);
        case 'StreamOrderUpdatesEntry':
          return new StreamOrderUpdatesEntry.fromJson(value);
        case 'StreamOrderUpdatesResponse':
          return new StreamOrderUpdatesResponse.fromJson(value);
        case 'StreamOrdersEntry':
          return new StreamOrdersEntry.fromJson(value);
        case 'StreamOrdersResponse':
          return new StreamOrdersResponse.fromJson(value);
        case 'StreamPositionsEntry':
          return new StreamPositionsEntry.fromJson(value);
        case 'StreamPositionsResponse':
          return new StreamPositionsResponse.fromJson(value);
        case 'StreamTradesEntry':
          return new StreamTradesEntry.fromJson(value);
        case 'StreamTradesResponse':
          return new StreamTradesResponse.fromJson(value);
        case 'StreamTransactionsEntry':
          return new StreamTransactionsEntry.fromJson(value);
        case 'StreamTransactionsResponse':
          return new StreamTransactionsResponse.fromJson(value);
        case 'Supply':
          return new Supply.fromJson(value);
        case 'SupplyRequest':
          return new SupplyRequest.fromJson(value);
        case 'SupplyResponse':
          return new SupplyResponse.fromJson(value);
        case 'Trade':
          return new Trade.fromJson(value);
        case 'TradeRequestError':
          return new TradeRequestError.fromJson(value);
        case 'TradeResponse':
          return new TradeResponse.fromJson(value);
        case 'Transaction':
          return new Transaction.fromJson(value);
        case 'TransactionKind':
           return new TransactionKind.fromJson(value);
        case 'TransactionRequestError':
          return new TransactionRequestError.fromJson(value);
        case 'TransferBalancesRequest':
          return new TransferBalancesRequest.fromJson(value);
        case 'TransferBalancesResponse':
          return new TransferBalancesResponse.fromJson(value);
        case 'TransformedAssets':
          return new TransformedAssets.fromJson(value);
        case 'UnitePositionRequest':
          return new UnitePositionRequest.fromJson(value);
        case 'UnitePositionResponse':
          return new UnitePositionResponse.fromJson(value);
        case 'UnitedPosition':
          return new UnitedPosition.fromJson(value);
        case 'UpdateFieldString':
          return new UpdateFieldString.fromJson(value);
        case 'UpdateRolesString':
          return new UpdateRolesString.fromJson(value);
        case 'UpdateUserConfigRequest':
          return new UpdateUserConfigRequest.fromJson(value);
        case 'User':
          return new User.fromJson(value);
        case 'UserBalanceResponse':
          return new UserBalanceResponse.fromJson(value);
        case 'UserConfig':
          return new UserConfig.fromJson(value);
        case 'UserDeletedResponse':
          return new UserDeletedResponse.fromJson(value);
        case 'UserInterest':
          return new UserInterest.fromJson(value);
        case 'UserInterestResponse':
          return new UserInterestResponse.fromJson(value);
        case 'UserPositionResponse':
          return new UserPositionResponse.fromJson(value);
        case 'UserRole':
           return new UserRole.fromJson(value);
        case 'UserUpdatedResponse':
          return new UserUpdatedResponse.fromJson(value);
        case 'UserValue':
          return new UserValue.fromJson(value);
        case 'UserValueResponse':
          return new UserValueResponse.fromJson(value);
        case 'ValidateSubmitOrderRequest':
          return new ValidateSubmitOrderRequest.fromJson(value);
        case 'ValidateSubmitOrderResponse':
          return new ValidateSubmitOrderResponse.fromJson(value);
        case 'Withdraw':
          return new Withdraw.fromJson(value);
        case 'WithdrawRequest':
          return new WithdrawRequest.fromJson(value);
        case 'WithdrawResponse':
          return new WithdrawResponse.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
