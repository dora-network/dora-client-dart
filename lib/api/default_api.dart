part of dora_client.api;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Cancel all open orders
  ///
  /// 
  Future<ListOrdersResponse> cancelAllOpenOrders() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/orders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListOrdersResponse') as ListOrdersResponse ;
    } else {
      return null;
    }
  }
  /// Cancel an order by ID
  ///
  /// 
  Future<CancelOrderResponse> cancelOrderById(String orderId) async {
    Object postBody = null;

    // verify required params are set
    if(orderId == null) {
     throw new ApiException(400, "Missing required param: orderId");
    }

    // create path and map variables
    String path = "/v1/orders/{order_id}".replaceAll("{format}","json").replaceAll("{" + "order_id" + "}", orderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CancelOrderResponse') as CancelOrderResponse ;
    } else {
      return null;
    }
  }
  /// Create a new order
  ///
  /// 
  Future<CreateOrderResponse> createOrder(CreateOrderRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/orders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateOrderResponse') as CreateOrderResponse ;
    } else {
      return null;
    }
  }
  /// Delete user by ID
  ///
  /// 
  Future<UserDeletedResponse> deleteUser(String userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserDeletedResponse') as UserDeletedResponse ;
    } else {
      return null;
    }
  }
  /// Get the current price of all assets
  ///
  /// 
  Future<ListAssetPriceResponse> getAllAssetPrices() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/price".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListAssetPriceResponse') as ListAssetPriceResponse ;
    } else {
      return null;
    }
  }
  /// Get asset by ID
  ///
  /// 
  Future<GetAssetByIDResponse> getAssetById(String assetId) async {
    Object postBody = null;

    // verify required params are set
    if(assetId == null) {
     throw new ApiException(400, "Missing required param: assetId");
    }

    // create path and map variables
    String path = "/v1/assets/{asset_id}".replaceAll("{format}","json").replaceAll("{" + "asset_id" + "}", assetId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetAssetByIDResponse') as GetAssetByIDResponse ;
    } else {
      return null;
    }
  }
  /// Get the current price of an asset
  ///
  /// 
  Future<GetAssetPriceResponse> getAssetPrice(String assetId) async {
    Object postBody = null;

    // verify required params are set
    if(assetId == null) {
     throw new ApiException(400, "Missing required param: assetId");
    }

    // create path and map variables
    String path = "/v1/price/asset/{asset_id}".replaceAll("{format}","json").replaceAll("{" + "asset_id" + "}", assetId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetAssetPriceResponse') as GetAssetPriceResponse ;
    } else {
      return null;
    }
  }
  /// Get all inserts or updates for assets
  ///
  /// 
  Future<StreamAssetsResponse> getAssetsStream({ DateTime since, DateTime until }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/assets/stream".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(until != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "until", until));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamAssetsResponse') as StreamAssetsResponse ;
    } else {
      return null;
    }
  }
  /// Get candlestick data for an orderbook
  ///
  /// 
  Future<ListCandlesResponse> getCandleData(String orderBookId, { DateTime start, DateTime end, CandleResolution resolution }) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/charts/{order_book_id}/candle".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(start != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start", start));
    }
    if(end != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end", end));
    }
    if(resolution != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "resolution", resolution));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListCandlesResponse') as ListCandlesResponse ;
    } else {
      return null;
    }
  }
  /// Get coupon payments for a bond asset
  ///
  /// 
  Future<ListCouponPaymentsResponse> getCouponPaymentsByAssetId(String assetId) async {
    Object postBody = null;

    // verify required params are set
    if(assetId == null) {
     throw new ApiException(400, "Missing required param: assetId");
    }

    // create path and map variables
    String path = "/v1/assets/{asset_id}/coupon_payments".replaceAll("{format}","json").replaceAll("{" + "asset_id" + "}", assetId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListCouponPaymentsResponse') as ListCouponPaymentsResponse ;
    } else {
      return null;
    }
  }
  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// 
  Future<GetTopOfBookResponse> getL1Depth(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/L1".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetTopOfBookResponse') as GetTopOfBookResponse ;
    } else {
      return null;
    }
  }
  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// 
  Future<ListOrderBookDepthResponse> getL2Depth(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/L2".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListOrderBookDepthResponse') as ListOrderBookDepthResponse ;
    } else {
      return null;
    }
  }
  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// 
  Future<ListOrdersResponse> getL3Depth(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/L3".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListOrdersResponse') as ListOrdersResponse ;
    } else {
      return null;
    }
  }
  /// Get your own available, locked, and borrowed assets
  ///
  /// 
  Future<UserBalanceResponse> getLedgerBalancesSelf() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/ledger/balances/self".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserBalanceResponse') as UserBalanceResponse ;
    } else {
      return null;
    }
  }
  /// Get your own interest
  ///
  /// 
  Future<UserInterestResponse> getLedgerInterestSelf() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/ledger/interest/self".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserInterestResponse') as UserInterestResponse ;
    } else {
      return null;
    }
  }
  /// Get the entire module object, including unborrowed leverage assets and total leverage trackers
  ///
  /// 
  Future<LedgerModuleResponse> getLedgerModule() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/ledger/module".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'LedgerModuleResponse') as LedgerModuleResponse ;
    } else {
      return null;
    }
  }
  /// Get the module object for a single asset ID
  ///
  /// 
  Future<LedgerModuleByAssetResponse> getLedgerModuleByAsset(String assetId) async {
    Object postBody = null;

    // verify required params are set
    if(assetId == null) {
     throw new ApiException(400, "Missing required param: assetId");
    }

    // create path and map variables
    String path = "/v1/ledger/module/{asset_id}".replaceAll("{format}","json").replaceAll("{" + "asset_id" + "}", assetId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'LedgerModuleByAssetResponse') as LedgerModuleByAssetResponse ;
    } else {
      return null;
    }
  }
  /// Get your own positions
  ///
  /// 
  Future<UserPositionResponse> getLedgerPositionsSelf() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/ledger/positions/self".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserPositionResponse') as UserPositionResponse ;
    } else {
      return null;
    }
  }
  /// Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
  ///
  /// 
  Future<UserValueResponse> getLedgerValueSelf() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/ledger/value/self".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserValueResponse') as UserValueResponse ;
    } else {
      return null;
    }
  }
  /// Get order by ID
  ///
  /// 
  Future<GetOrderResponse> getOrderById(String orderId) async {
    Object postBody = null;

    // verify required params are set
    if(orderId == null) {
     throw new ApiException(400, "Missing required param: orderId");
    }

    // create path and map variables
    String path = "/v1/orders/{order_id}".replaceAll("{format}","json").replaceAll("{" + "order_id" + "}", orderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetOrderResponse') as GetOrderResponse ;
    } else {
      return null;
    }
  }
  /// Get orderbook by ID
  ///
  /// 
  Future<GetOrderBookResponse> getOrderbookById(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetOrderBookResponse') as GetOrderBookResponse ;
    } else {
      return null;
    }
  }
  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// 
  Future<ListOrderBookDepthResponse> getOrderbookDepth(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/depth".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListOrderBookDepthResponse') as ListOrderBookDepthResponse ;
    } else {
      return null;
    }
  }
  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// 
  Future<ListOrdersResponse> getOrderbookOrders(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/orders".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListOrdersResponse') as ListOrdersResponse ;
    } else {
      return null;
    }
  }
  /// Get summary of an orderbook
  ///
  /// 
  Future<GetOrderBookSummaryResponse> getOrderbookSummary(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/summary".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetOrderBookSummaryResponse') as GetOrderBookSummaryResponse ;
    } else {
      return null;
    }
  }
  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// 
  Future<GetTopOfBookResponse> getOrderbookTop(String orderBookId) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/top".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetTopOfBookResponse') as GetTopOfBookResponse ;
    } else {
      return null;
    }
  }
  /// Get the current price of a pool
  ///
  /// 
  Future<GetPoolPriceResponse> getPoolPrice(String poolId) async {
    Object postBody = null;

    // verify required params are set
    if(poolId == null) {
     throw new ApiException(400, "Missing required param: poolId");
    }

    // create path and map variables
    String path = "/v1/price/pool/{pool_id}".replaceAll("{format}","json").replaceAll("{" + "pool_id" + "}", poolId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetPoolPriceResponse') as GetPoolPriceResponse ;
    } else {
      return null;
    }
  }
  /// Get a trade by ID
  ///
  /// 
  Future<TradeResponse> getTradeById(String tradeId) async {
    Object postBody = null;

    // verify required params are set
    if(tradeId == null) {
     throw new ApiException(400, "Missing required param: tradeId");
    }

    // create path and map variables
    String path = "/v1/trades/{trade_id}".replaceAll("{format}","json").replaceAll("{" + "trade_id" + "}", tradeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'TradeResponse') as TradeResponse ;
    } else {
      return null;
    }
  }
  /// Get a filtered, paginated list of trades
  ///
  /// 
  Future<ListTradeResponse> getTrades({ List<String> pools, List<String> userIds, DateTime start, DateTime end, int page, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/trades".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(pools != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "pools", pools));
    }
    if(userIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "user_ids", userIds));
    }
    if(start != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start", start));
    }
    if(end != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end", end));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListTradeResponse') as ListTradeResponse ;
    } else {
      return null;
    }
  }
  /// Get a transaction by ID
  ///
  /// 
  Future<GetTransactionResponse> getTransactionById(String transactionId) async {
    Object postBody = null;

    // verify required params are set
    if(transactionId == null) {
     throw new ApiException(400, "Missing required param: transactionId");
    }

    // create path and map variables
    String path = "/v1/transactions/{transaction_id}".replaceAll("{format}","json").replaceAll("{" + "transaction_id" + "}", transactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetTransactionResponse') as GetTransactionResponse ;
    } else {
      return null;
    }
  }
  /// Get a filtered, paginated list of transactions
  ///
  /// 
  Future<ListTransactionsResponse> getTransactions({ List<String> pools, List<String> userIds, List<TransactionKind> txKinds, DateTime start, DateTime end, int page, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/transactions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(pools != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "pools", pools));
    }
    if(userIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "user_ids", userIds));
    }
    if(txKinds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "tx_kinds", txKinds));
    }
    if(start != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start", start));
    }
    if(end != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end", end));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListTransactionsResponse') as ListTransactionsResponse ;
    } else {
      return null;
    }
  }
  /// Get user by ID (admin only)
  ///
  /// 
  Future<GetUserResponse> getUserById(String userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetUserResponse') as GetUserResponse ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of user&#x27;s ledger updates since a specific time, and opens a stream for further updates
  ///
  /// 
  Future<StreamPositionsResponse> getUserLedgerStream(String userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}/ledger/stream".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamPositionsResponse') as StreamPositionsResponse ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of user&#x27;s order updates for the given order book since a specific time, and opens a stream for further updates
  ///
  /// 
  Future<StreamOrderUpdatesResponse> getUserOrderUpdatesStream(String userId, String orderBookId, { DateTime since }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}/orders/{order_book_id}/updates/stream".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamOrderUpdatesResponse') as StreamOrderUpdatesResponse ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of user&#x27;s order updates across all order books since a specific time, and opens a stream for further updates
  ///
  /// 
  Future<StreamOrderUpdatesResponse> getUserOrdersUpdatesStreamAll(String userId, { DateTime since }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}/orders/all/updates/stream".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamOrderUpdatesResponse') as StreamOrderUpdatesResponse ;
    } else {
      return null;
    }
  }
  /// Get user details for the authenticated user
  ///
  /// 
  Future<GetUserResponse> getUserSelf() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/user/self".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'GetUserResponse') as GetUserResponse ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of user&#x27;s executed transactions since a specific time, and opens a stream for further updates
  ///
  /// 
  Future<StreamTransactionsResponse> getUserTransactionsStream(String userId, { DateTime since }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}/transactions/stream".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamTransactionsResponse') as StreamTransactionsResponse ;
    } else {
      return null;
    }
  }
  /// Deposit assets into your account from the outside world
  ///
  /// TODO: finish this when implementation has been completed
  Future<FundUserResponse> ledgerDeposit(FundUserRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/ledger/deposit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FundUserResponse') as FundUserResponse ;
    } else {
      return null;
    }
  }
  /// Withdraw assets from your account to the outside world
  ///
  /// TODO: Finish this when implementation has been completed
  Future<FundUserResponse> ledgerWithdraw(FundUserRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/ledger/withdraw".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FundUserResponse') as FundUserResponse ;
    } else {
      return null;
    }
  }
  /// Move supplied and available to supplied_collateral and collateral, for a specified position
  ///
  /// 
  Future<CollateralizeResponse> leverageCollateralize(CollateralizeRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/leverage/collateralize".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CollateralizeResponse') as CollateralizeResponse ;
    } else {
      return null;
    }
  }
  /// Move collateral and supplied_collateral to available and supplied, for a specified position.
  ///
  /// 
  Future<DeCollateralizeResponse> leverageDeCollateralize(DeCollateralizeRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/leverage/de-collateralize".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'DeCollateralizeResponse') as DeCollateralizeResponse ;
    } else {
      return null;
    }
  }
  /// Create an isolated position by transferring collateral to the position from the user&#x27;s global collateral
  ///
  /// 
  Future<IsolateCollateralResponse> leverageIsolateCollateral(IsolateCollateralRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/leverage/isolate_collateral".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'IsolateCollateralResponse') as IsolateCollateralResponse ;
    } else {
      return null;
    }
  }
  /// Create an isolated position using all collateral, supplied_collateral, and borrows from the user&#x27;s global position
  ///
  /// 
  Future<IsolatePositionResponse> leverageIsolatePosition(IsolatePositionRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/leverage/isolate_position".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'IsolatePositionResponse') as IsolatePositionResponse ;
    } else {
      return null;
    }
  }
  /// Supply leverage for a specific asset
  ///
  /// 
  Future<SupplyResponse> leverageSupply(SupplyRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/leverage/supply".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'SupplyResponse') as SupplyResponse ;
    } else {
      return null;
    }
  }
  /// Combines all isolated positions into a single global position
  ///
  /// Combines all isolated positions into a single global position
  Future<UnitePositionResponse> leverageUnite(UnitePositionRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/leverage/unite".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UnitePositionResponse') as UnitePositionResponse ;
    } else {
      return null;
    }
  }
  /// Withdraw leverage for a specific asset
  ///
  /// 
  Future<WithdrawResponse> leverageWithdraw(WithdrawRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/leverage/withdraw".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'WithdrawResponse') as WithdrawResponse ;
    } else {
      return null;
    }
  }
  /// Add liquidity to a pool
  ///
  /// 
  Future<LiquidityResponse> liquidityAdd(LiquidityRequest body, String poolId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(poolId == null) {
     throw new ApiException(400, "Missing required param: poolId");
    }

    // create path and map variables
    String path = "/v1/liquidity/pool/{pool_id}/add".replaceAll("{format}","json").replaceAll("{" + "pool_id" + "}", poolId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'LiquidityResponse') as LiquidityResponse ;
    } else {
      return null;
    }
  }
  /// Subtract liquidity from a pool
  ///
  /// 
  Future<LiquidityResponse> liquiditySubtract(LiquidityRequest body, String poolId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(poolId == null) {
     throw new ApiException(400, "Missing required param: poolId");
    }

    // create path and map variables
    String path = "/v1/liquidity/pool/{pool_id}/remove".replaceAll("{format}","json").replaceAll("{" + "pool_id" + "}", poolId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'LiquidityResponse') as LiquidityResponse ;
    } else {
      return null;
    }
  }
  /// List assets
  ///
  /// 
  Future<ListAssetsResponse> listAssets({ DateTime createdAfter, DateTime createdBefore, AssetKind assetKind, bool canAddLiquidity, bool canDirectBorrow, bool canOnboard, bool canTrade, bool canVirtualBorrow, int page, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/assets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(createdAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "created_after", createdAfter));
    }
    if(createdBefore != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "created_before", createdBefore));
    }
    if(assetKind != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "asset_kind", assetKind));
    }
    if(canAddLiquidity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "can_add_liquidity", canAddLiquidity));
    }
    if(canDirectBorrow != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "can_direct_borrow", canDirectBorrow));
    }
    if(canOnboard != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "can_onboard", canOnboard));
    }
    if(canTrade != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "can_trade", canTrade));
    }
    if(canVirtualBorrow != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "can_virtual_borrow", canVirtualBorrow));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListAssetsResponse') as ListAssetsResponse ;
    } else {
      return null;
    }
  }
  /// List order books
  ///
  /// 
  Future<ListOrderBooksResponse> listOrderBooks({ OrderBookStatus status, String baseAssetId, String quoteAssetId, int page, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/orderbooks".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "status", status));
    }
    if(baseAssetId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "base_asset_id", baseAssetId));
    }
    if(quoteAssetId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "quote_asset_id", quoteAssetId));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListOrderBooksResponse') as ListOrderBooksResponse ;
    } else {
      return null;
    }
  }
  /// List all orders
  ///
  /// 
  Future<ListOrdersResponse> listOrders({ List<String> orderBookId, List<OrderKind> kind, List<OrderStatus> status, Side side, DateTime from, DateTime to, int page, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/orders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(orderBookId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "order_book_id", orderBookId));
    }
    if(kind != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "kind", kind));
    }
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "status", status));
    }
    if(side != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "side", side));
    }
    if(from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "from", from));
    }
    if(to != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "to", to));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListOrdersResponse') as ListOrdersResponse ;
    } else {
      return null;
    }
  }
  /// Stream real-time asset prices as map objects
  ///
  /// Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.
  Future<StreamAssetPricesResponse> streamAssetPrices({ DateTime since }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/v1/prices/stream".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamAssetPricesResponse') as StreamAssetPricesResponse ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of candlestick data from date provided, and open a stream for real-time updates
  ///
  /// 
  Future<StreamCandlesResponse> streamCandleData(String orderBookId, { DateTime since, CandleResolution resolution }) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/charts/{order_book_id}/candle/stream".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(resolution != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "resolution", resolution));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamCandlesResponse') as StreamCandlesResponse ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
  ///
  /// 
  Future<StreamOrderBookBalancesResponse> streamOrderBookBalances(String orderBookId, { DateTime since }) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/balances/stream".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamOrderBookBalancesResponse') as StreamOrderBookBalancesResponse ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of open orders in an order book and open a stream for real-time updates
  ///
  /// 
  Future<LiveOrderbook> streamOrderbookOpenOrders(String orderBookId, { DateTime since }) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/orderbooks/{order_book_id}/open/stream".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'LiveOrderbook') as LiveOrderbook ;
    } else {
      return null;
    }
  }
  /// Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates
  ///
  /// 
  Future<StreamTradesResponse> streamTrades(String orderBookId, { DateTime since }) async {
    Object postBody = null;

    // verify required params are set
    if(orderBookId == null) {
     throw new ApiException(400, "Missing required param: orderBookId");
    }

    // create path and map variables
    String path = "/v1/trades/{order_book_id}/stream".replaceAll("{format}","json").replaceAll("{" + "order_book_id" + "}", orderBookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'StreamTradesResponse') as StreamTradesResponse ;
    } else {
      return null;
    }
  }
  /// Update user configuration by ID
  ///
  /// 
  Future<UserUpdatedResponse> updateUserConfig(UpdateUserConfigRequest body, String userId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}/config".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserUpdatedResponse') as UserUpdatedResponse ;
    } else {
      return null;
    }
  }
  /// Update user configuration for the authenticated user
  ///
  /// 
  Future<UserUpdatedResponse> updateUserConfigSelf(UpdateUserConfigRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/user/config/self".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserUpdatedResponse') as UserUpdatedResponse ;
    } else {
      return null;
    }
  }
  /// Verify a user by ID
  ///
  /// 
  Future<UserUpdatedResponse> verifyUser(String userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/v1/user/{user_id}/verify".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserUpdatedResponse') as UserUpdatedResponse ;
    } else {
      return null;
    }
  }
}
