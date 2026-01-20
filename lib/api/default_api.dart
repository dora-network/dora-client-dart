//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel all open orders, if user passes orderbook on query param it will cancel all orders on specific orderbook, admin can cancel user's orders on specific orderbook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId:
  ///
  /// * [String] userId:
  ///
  /// * [OrderKind] orderKind:
  Future<Response> cancelAllOpenOrdersWithHttpInfo({ String? orderBookId, String? userId, OrderKind? orderKind, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orderBookId != null) {
      queryParams.addAll(_queryParams('', 'order_book_id', orderBookId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (orderKind != null) {
      queryParams.addAll(_queryParams('', 'order_kind', orderKind));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel all open orders, if user passes orderbook on query param it will cancel all orders on specific orderbook, admin can cancel user's orders on specific orderbook
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId:
  ///
  /// * [String] userId:
  ///
  /// * [OrderKind] orderKind:
  Future<ListOrdersResponseEnvelope?> cancelAllOpenOrders({ String? orderBookId, String? userId, OrderKind? orderKind, }) async {
    final response = await cancelAllOpenOrdersWithHttpInfo( orderBookId: orderBookId, userId: userId, orderKind: orderKind, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrdersResponseEnvelope',) as ListOrdersResponseEnvelope;
    
    }
    return null;
  }

  /// Cancel an order by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  Future<Response> cancelOrderByIdWithHttpInfo(String orderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/{order_id}'
      .replaceAll('{order_id}', orderId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel an order by ID
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  Future<CancelOrderResponseEnvelope?> cancelOrderById(String orderId,) async {
    final response = await cancelOrderByIdWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CancelOrderResponseEnvelope',) as CancelOrderResponseEnvelope;
    
    }
    return null;
  }

  /// Check whether a user email exists
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<Response> checkUserEmailExistsWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/exists';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'email', email));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Check whether a user email exists
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<EmailExistsResponseEnvelope?> checkUserEmailExists(String email,) async {
    final response = await checkUserEmailExistsWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailExistsResponseEnvelope',) as EmailExistsResponseEnvelope;
    
    }
    return null;
  }

  /// Claim current accrued leverage interest for a specific user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClaimLeverageAccruedInterestRequest] claimLeverageAccruedInterestRequest (required):
  Future<Response> claimLeverageGetAccruedInterestWithHttpInfo(ClaimLeverageAccruedInterestRequest claimLeverageAccruedInterestRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/accrued_interest/claim';

    // ignore: prefer_final_locals
    Object? postBody = claimLeverageAccruedInterestRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Claim current accrued leverage interest for a specific user
  ///
  /// Parameters:
  ///
  /// * [ClaimLeverageAccruedInterestRequest] claimLeverageAccruedInterestRequest (required):
  Future<ClaimLeverageAccruedInterestResponseEnvelope?> claimLeverageGetAccruedInterest(ClaimLeverageAccruedInterestRequest claimLeverageAccruedInterestRequest,) async {
    final response = await claimLeverageGetAccruedInterestWithHttpInfo(claimLeverageAccruedInterestRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimLeverageAccruedInterestResponseEnvelope',) as ClaimLeverageAccruedInterestResponseEnvelope;
    
    }
    return null;
  }

  /// Close isolated positions, repaying the borrowed
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClosePositionRequest] closePositionRequest (required):
  Future<Response> closeIsolatedPositionWithHttpInfo(ClosePositionRequest closePositionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/positions/close';

    // ignore: prefer_final_locals
    Object? postBody = closePositionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Close isolated positions, repaying the borrowed
  ///
  /// Parameters:
  ///
  /// * [ClosePositionRequest] closePositionRequest (required):
  Future<ClosePositionResponseEnvelope?> closeIsolatedPosition(ClosePositionRequest closePositionRequest,) async {
    final response = await closeIsolatedPositionWithHttpInfo(closePositionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClosePositionResponseEnvelope',) as ClosePositionResponseEnvelope;
    
    }
    return null;
  }

  /// Create apikey for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAPIKeyRequest] createAPIKeyRequest (required):
  Future<Response> createAPIKeyForUserWithHttpInfo(CreateAPIKeyRequest createAPIKeyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/apikey';

    // ignore: prefer_final_locals
    Object? postBody = createAPIKeyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create apikey for a user
  ///
  /// Parameters:
  ///
  /// * [CreateAPIKeyRequest] createAPIKeyRequest (required):
  Future<CreateAPIKeyResponseEnvelope?> createAPIKeyForUser(CreateAPIKeyRequest createAPIKeyRequest,) async {
    final response = await createAPIKeyForUserWithHttpInfo(createAPIKeyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateAPIKeyResponseEnvelope',) as CreateAPIKeyResponseEnvelope;
    
    }
    return null;
  }

  /// Create apikey for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [CreateAPIKeyRequest] createAPIKeyRequest (required):
  Future<Response> createAPIKeyForUserIDWithHttpInfo(String userId, CreateAPIKeyRequest createAPIKeyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/apikey'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = createAPIKeyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create apikey for a user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [CreateAPIKeyRequest] createAPIKeyRequest (required):
  Future<CreateAPIKeyResponseEnvelope?> createAPIKeyForUserID(String userId, CreateAPIKeyRequest createAPIKeyRequest,) async {
    final response = await createAPIKeyForUserIDWithHttpInfo(userId, createAPIKeyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateAPIKeyResponseEnvelope',) as CreateAPIKeyResponseEnvelope;
    
    }
    return null;
  }

  /// Create a new order
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateOrderRequest] createOrderRequest (required):
  Future<Response> createOrderWithHttpInfo(CreateOrderRequest createOrderRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object? postBody = createOrderRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new order
  ///
  /// Parameters:
  ///
  /// * [CreateOrderRequest] createOrderRequest (required):
  Future<CreateOrderResponseEnvelope?> createOrder(CreateOrderRequest createOrderRequest,) async {
    final response = await createOrderWithHttpInfo(createOrderRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateOrderResponseEnvelope',) as CreateOrderResponseEnvelope;
    
    }
    return null;
  }

  /// Create a new user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateIntegratorUserRequest] createIntegratorUserRequest (required):
  Future<Response> createUserWithHttpInfo(CreateIntegratorUserRequest createIntegratorUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrators/user';

    // ignore: prefer_final_locals
    Object? postBody = createIntegratorUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new user
  ///
  /// Parameters:
  ///
  /// * [CreateIntegratorUserRequest] createIntegratorUserRequest (required):
  Future<UserCreatedResponseEnvelope?> createUser(CreateIntegratorUserRequest createIntegratorUserRequest,) async {
    final response = await createUserWithHttpInfo(createIntegratorUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserCreatedResponseEnvelope',) as UserCreatedResponseEnvelope;
    
    }
    return null;
  }

  /// Delete user by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> deleteUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete user by ID
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserDeletedResponseEnvelope?> deleteUser(String userId,) async {
    final response = await deleteUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDeletedResponseEnvelope',) as UserDeletedResponseEnvelope;
    
    }
    return null;
  }

  /// Get user's api keys: admin or integrator only
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getAPIKeysForUserIDWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/apikey'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user's api keys: admin or integrator only
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<APIKeyResponseEnvelope?> getAPIKeysForUserID(String userId,) async {
    final response = await getAPIKeysForUserIDWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIKeyResponseEnvelope',) as APIKeyResponseEnvelope;
    
    }
    return null;
  }

  /// Get the current price of all assets
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllAssetPricesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/price';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the current price of all assets
  Future<ListAssetPriceResponseEnvelope?> getAllAssetPrices() async {
    final response = await getAllAssetPricesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListAssetPriceResponseEnvelope',) as ListAssetPriceResponseEnvelope;
    
    }
    return null;
  }

  /// Get asset by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<Response> getAssetByIdWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/{asset_id}'
      .replaceAll('{asset_id}', assetId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get asset by ID
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<GetAssetByIDResponseEnvelope?> getAssetById(String assetId,) async {
    final response = await getAssetByIdWithHttpInfo(assetId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAssetByIDResponseEnvelope',) as GetAssetByIDResponseEnvelope;
    
    }
    return null;
  }

  /// Get the current price of an asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<Response> getAssetPriceWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/price/asset/{asset_id}'
      .replaceAll('{asset_id}', assetId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the current price of an asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<AssetPriceResponseEnvelope?> getAssetPrice(String assetId,) async {
    final response = await getAssetPriceWithHttpInfo(assetId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssetPriceResponseEnvelope',) as AssetPriceResponseEnvelope;
    
    }
    return null;
  }

  /// Get all inserts or updates for assets
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] until:
  Future<Response> getAssetsStreamWithHttpInfo({ DateTime? since, DateTime? until, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/stream';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (until != null) {
      queryParams.addAll(_queryParams('', 'until', until));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all inserts or updates for assets
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] until:
  Future<List<StreamAssetsEntry>?> getAssetsStream({ DateTime? since, DateTime? until, }) async {
    final response = await getAssetsStreamWithHttpInfo( since: since, until: until, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamAssetsEntry>') as List)
        .cast<StreamAssetsEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get candlestick data for an orderbook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  ///
  /// * [CandleResolution] resolution:
  Future<Response> getCandleDataWithHttpInfo(String orderBookId, { DateTime? start, DateTime? end, CandleResolution? resolution, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/charts/{order_book_id}/candle'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (resolution != null) {
      queryParams.addAll(_queryParams('', 'resolution', resolution));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get candlestick data for an orderbook
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  ///
  /// * [CandleResolution] resolution:
  Future<ListCandlesResponseEnvelope?> getCandleData(String orderBookId, { DateTime? start, DateTime? end, CandleResolution? resolution, }) async {
    final response = await getCandleDataWithHttpInfo(orderBookId,  start: start, end: end, resolution: resolution, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListCandlesResponseEnvelope',) as ListCandlesResponseEnvelope;
    
    }
    return null;
  }

  /// Get coupon payments for a bond asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<Response> getCouponPaymentsByAssetIdWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/{asset_id}/coupon_payments'
      .replaceAll('{asset_id}', assetId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get coupon payments for a bond asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<ListCouponPaymentsResponseEnvelope?> getCouponPaymentsByAssetId(String assetId,) async {
    final response = await getCouponPaymentsByAssetIdWithHttpInfo(assetId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListCouponPaymentsResponseEnvelope',) as ListCouponPaymentsResponseEnvelope;
    
    }
    return null;
  }

  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getL1DepthWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/L1'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<GetTopOfBookResponseEnvelope?> getL1Depth(String orderBookId,) async {
    final response = await getL1DepthWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetTopOfBookResponseEnvelope',) as GetTopOfBookResponseEnvelope;
    
    }
    return null;
  }

  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getL2DepthWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/L2'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrderBookDepthResponseEnvelope?> getL2Depth(String orderBookId,) async {
    final response = await getL2DepthWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrderBookDepthResponseEnvelope',) as ListOrderBookDepthResponseEnvelope;
    
    }
    return null;
  }

  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getL3DepthWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/L3'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrdersResponseEnvelope?> getL3Depth(String orderBookId,) async {
    final response = await getL3DepthWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrdersResponseEnvelope',) as ListOrdersResponseEnvelope;
    
    }
    return null;
  }

  /// Get your own available, locked, and borrowed assets
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLedgerBalancesSelfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/balances/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get your own available, locked, and borrowed assets
  Future<UserBalanceResponseEnvelope?> getLedgerBalancesSelf() async {
    final response = await getLedgerBalancesSelfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserBalanceResponseEnvelope',) as UserBalanceResponseEnvelope;
    
    }
    return null;
  }

  /// Get your own interest
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLedgerInterestSelfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/interest/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get your own interest
  Future<UserInterestResponseEnvelope?> getLedgerInterestSelf() async {
    final response = await getLedgerInterestSelfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserInterestResponseEnvelope',) as UserInterestResponseEnvelope;
    
    }
    return null;
  }

  /// Get the entire module object, including unborrowed leverage assets and total leverage trackers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLedgerModuleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/module';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the entire module object, including unborrowed leverage assets and total leverage trackers
  Future<LedgerModuleResponseEnvelope?> getLedgerModule() async {
    final response = await getLedgerModuleWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LedgerModuleResponseEnvelope',) as LedgerModuleResponseEnvelope;
    
    }
    return null;
  }

  /// Get the module object for a single asset ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<Response> getLedgerModuleByAssetWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/module/{asset_id}'
      .replaceAll('{asset_id}', assetId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the module object for a single asset ID
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<LedgerModuleByAssetResponseEnvelope?> getLedgerModuleByAsset(String assetId,) async {
    final response = await getLedgerModuleByAssetWithHttpInfo(assetId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LedgerModuleByAssetResponseEnvelope',) as LedgerModuleByAssetResponseEnvelope;
    
    }
    return null;
  }

  /// Get your own positions
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLedgerPositionsSelfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/positions/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get your own positions
  Future<UserPositionResponseEnvelope?> getLedgerPositionsSelf() async {
    final response = await getLedgerPositionsSelfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserPositionResponseEnvelope',) as UserPositionResponseEnvelope;
    
    }
    return null;
  }

  /// Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLedgerValueSelfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/value/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
  Future<UserValueResponseEnvelope?> getLedgerValueSelf() async {
    final response = await getLedgerValueSelfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserValueResponseEnvelope',) as UserValueResponseEnvelope;
    
    }
    return null;
  }

  /// Get order by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  Future<Response> getOrderByIdWithHttpInfo(String orderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/{order_id}'
      .replaceAll('{order_id}', orderId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get order by ID
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  Future<OrderResponseEnvelope?> getOrderById(String orderId,) async {
    final response = await getOrderByIdWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResponseEnvelope',) as OrderResponseEnvelope;
    
    }
    return null;
  }

  /// Get orderbook by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getOrderbookByIdWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get orderbook by ID
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderBookResponseEnvelope?> getOrderbookById(String orderBookId,) async {
    final response = await getOrderbookByIdWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderBookResponseEnvelope',) as OrderBookResponseEnvelope;
    
    }
    return null;
  }

  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getOrderbookDepthWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/depth'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrderBookDepthResponseEnvelope?> getOrderbookDepth(String orderBookId,) async {
    final response = await getOrderbookDepthWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrderBookDepthResponseEnvelope',) as ListOrderBookDepthResponseEnvelope;
    
    }
    return null;
  }

  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getOrderbookOrdersWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/orders'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrdersResponseEnvelope?> getOrderbookOrders(String orderBookId,) async {
    final response = await getOrderbookOrdersWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrdersResponseEnvelope',) as ListOrdersResponseEnvelope;
    
    }
    return null;
  }

  /// Get orderbook stats
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getOrderbookStatsWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/stats'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get orderbook stats
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderbookStatsResponseEnvelope?> getOrderbookStats(String orderBookId,) async {
    final response = await getOrderbookStatsWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderbookStatsResponseEnvelope',) as OrderbookStatsResponseEnvelope;
    
    }
    return null;
  }

  /// Orderbook stats stream
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getOrderbookStatsStreamWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/stats/stream'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Orderbook stats stream
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderbookStats?> getOrderbookStatsStream(String orderBookId,) async {
    final response = await getOrderbookStatsStreamWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderbookStats',) as OrderbookStats;
    
    }
    return null;
  }

  /// Get summary of an orderbook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getOrderbookSummaryWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/summary'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get summary of an orderbook
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderBookSummaryResponseEnvelope?> getOrderbookSummary(String orderBookId,) async {
    final response = await getOrderbookSummaryWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderBookSummaryResponseEnvelope',) as OrderBookSummaryResponseEnvelope;
    
    }
    return null;
  }

  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<Response> getOrderbookTopWithHttpInfo(String orderBookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/top'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<GetTopOfBookResponseEnvelope?> getOrderbookTop(String orderBookId,) async {
    final response = await getOrderbookTopWithHttpInfo(orderBookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetTopOfBookResponseEnvelope',) as GetTopOfBookResponseEnvelope;
    
    }
    return null;
  }

  /// Get account-by-account PL breakdown for the logged in user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPLForSelfByAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pl/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get account-by-account PL breakdown for the logged in user
  Future<PLResponseEnvelope?> getPLForSelfByAccount() async {
    final response = await getPLForSelfByAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PLResponseEnvelope',) as PLResponseEnvelope;
    
    }
    return null;
  }

  /// Get the current price of a pool
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  Future<Response> getPoolPriceWithHttpInfo(String poolId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/price/pool/{pool_id}'
      .replaceAll('{pool_id}', poolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the current price of a pool
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  Future<PoolPriceResponseEnvelope?> getPoolPrice(String poolId,) async {
    final response = await getPoolPriceWithHttpInfo(poolId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PoolPriceResponseEnvelope',) as PoolPriceResponseEnvelope;
    
    }
    return null;
  }

  /// Get a trade by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradeId (required):
  Future<Response> getTradeByIdWithHttpInfo(String tradeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trades/{trade_id}'
      .replaceAll('{trade_id}', tradeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a trade by ID
  ///
  /// Parameters:
  ///
  /// * [String] tradeId (required):
  Future<TradeResponseEnvelope?> getTradeById(String tradeId,) async {
    final response = await getTradeByIdWithHttpInfo(tradeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradeResponseEnvelope',) as TradeResponseEnvelope;
    
    }
    return null;
  }

  /// Get a filtered, paginated list of trades
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] orderBookIds:
  ///
  /// * [List<String>] userIds:
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> getTradesWithHttpInfo({ List<String>? orderBookIds, List<String>? userIds, DateTime? start, DateTime? end, int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trades';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orderBookIds != null) {
      queryParams.addAll(_queryParams('multi', 'order_book_ids', orderBookIds));
    }
    if (userIds != null) {
      queryParams.addAll(_queryParams('multi', 'user_ids', userIds));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a filtered, paginated list of trades
  ///
  /// Parameters:
  ///
  /// * [List<String>] orderBookIds:
  ///
  /// * [List<String>] userIds:
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ListTradeResponseEnvelope?> getTrades({ List<String>? orderBookIds, List<String>? userIds, DateTime? start, DateTime? end, int? page, int? limit, }) async {
    final response = await getTradesWithHttpInfo( orderBookIds: orderBookIds, userIds: userIds, start: start, end: end, page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListTradeResponseEnvelope',) as ListTradeResponseEnvelope;
    
    }
    return null;
  }

  /// Get a transaction by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transactionId (required):
  Future<Response> getTransactionByIdWithHttpInfo(String transactionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/transactions/{transaction_id}'
      .replaceAll('{transaction_id}', transactionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a transaction by ID
  ///
  /// Parameters:
  ///
  /// * [String] transactionId (required):
  Future<TransactionResponseEnvelope?> getTransactionById(String transactionId,) async {
    final response = await getTransactionByIdWithHttpInfo(transactionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionResponseEnvelope',) as TransactionResponseEnvelope;
    
    }
    return null;
  }

  /// Get a filtered, paginated list of transactions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] pools:
  ///
  /// * [List<String>] userIds:
  ///
  /// * [List<TransactionKind>] txKinds:
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> getTransactionsWithHttpInfo({ List<String>? pools, List<String>? userIds, List<TransactionKind>? txKinds, DateTime? start, DateTime? end, int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/transactions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pools != null) {
      queryParams.addAll(_queryParams('multi', 'pools', pools));
    }
    if (userIds != null) {
      queryParams.addAll(_queryParams('multi', 'user_ids', userIds));
    }
    if (txKinds != null) {
      queryParams.addAll(_queryParams('multi', 'tx_kinds', txKinds));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a filtered, paginated list of transactions
  ///
  /// Parameters:
  ///
  /// * [List<String>] pools:
  ///
  /// * [List<String>] userIds:
  ///
  /// * [List<TransactionKind>] txKinds:
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ListTransactionsResponseEnvelope?> getTransactions({ List<String>? pools, List<String>? userIds, List<TransactionKind>? txKinds, DateTime? start, DateTime? end, int? page, int? limit, }) async {
    final response = await getTransactionsWithHttpInfo( pools: pools, userIds: userIds, txKinds: txKinds, start: start, end: end, page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListTransactionsResponseEnvelope',) as ListTransactionsResponseEnvelope;
    
    }
    return null;
  }

  /// Get user by ID (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserByIdWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user by ID (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserEnvelope?> getUserById(String userId,) async {
    final response = await getUserByIdWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserEnvelope',) as UserEnvelope;
    
    }
    return null;
  }

  /// Stream user's coupon payment accruals in real time
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserCouponPaymentsStreamWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/coupon_payments/stream'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Stream user's coupon payment accruals in real time
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<StreamUserCouponPaymentsEntry>?> getUserCouponPaymentsStream(String userId,) async {
    final response = await getUserCouponPaymentsStreamWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamUserCouponPaymentsEntry>') as List)
        .cast<StreamUserCouponPaymentsEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserLedgerStreamWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/ledger/stream'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<StreamPositionsEntry>?> getUserLedgerStream(String userId,) async {
    final response = await getUserLedgerStreamWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamPositionsEntry>') as List)
        .cast<StreamPositionsEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get a snapshot of user's order updates for the given order book since a specific time, and opens a stream for further updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<Response> getUserOrderUpdatesStreamWithHttpInfo(String userId, String orderBookId, { DateTime? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/orders/{order_book_id}/updates/stream'
      .replaceAll('{user_id}', userId)
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of user's order updates for the given order book since a specific time, and opens a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamOrderUpdatesEntry>?> getUserOrderUpdatesStream(String userId, String orderBookId, { DateTime? since, }) async {
    final response = await getUserOrderUpdatesStreamWithHttpInfo(userId, orderBookId,  since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamOrderUpdatesEntry>') as List)
        .cast<StreamOrderUpdatesEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DateTime] since:
  Future<Response> getUserOrdersUpdatesStreamAllWithHttpInfo(String userId, { DateTime? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/orders/all/updates/stream'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamOrderUpdatesEntry>?> getUserOrdersUpdatesStreamAll(String userId, { DateTime? since, }) async {
    final response = await getUserOrdersUpdatesStreamAllWithHttpInfo(userId,  since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamOrderUpdatesEntry>') as List)
        .cast<StreamOrderUpdatesEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get user details for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserSelfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user details for the authenticated user
  Future<UserEnvelope?> getUserSelf() async {
    final response = await getUserSelfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserEnvelope',) as UserEnvelope;
    
    }
    return null;
  }

  /// Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DateTime] since:
  Future<Response> getUserTransactionsStreamWithHttpInfo(String userId, { DateTime? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/transactions/stream'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamTransactionsEntry>?> getUserTransactionsStream(String userId, { DateTime? since, }) async {
    final response = await getUserTransactionsStreamWithHttpInfo(userId,  since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamTransactionsEntry>') as List)
        .cast<StreamTransactionsEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get user's api keys
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUsersAPIKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/apikey';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user's api keys
  Future<APIKeyResponseEnvelope?> getUsersAPIKeys() async {
    final response = await getUsersAPIKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIKeyResponseEnvelope',) as APIKeyResponseEnvelope;
    
    }
    return null;
  }

  /// Deposit assets into this user's account from the outside world
  ///
  /// Deposit assets into this user's account from the outside world. Note that this does not interact with any external systems; it simply adds the amount to the user's available balance in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [FundUserRequest] fundUserRequest (required):
  Future<Response> ledgerDepositWithHttpInfo(String userId, FundUserRequest fundUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/deposit/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = fundUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deposit assets into this user's account from the outside world
  ///
  /// Deposit assets into this user's account from the outside world. Note that this does not interact with any external systems; it simply adds the amount to the user's available balance in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [FundUserRequest] fundUserRequest (required):
  Future<FundUserResponseEnvelope?> ledgerDeposit(String userId, FundUserRequest fundUserRequest,) async {
    final response = await ledgerDepositWithHttpInfo(userId, fundUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FundUserResponseEnvelope',) as FundUserResponseEnvelope;
    
    }
    return null;
  }

  /// Withdraw assets from this user to the outside world
  ///
  /// Withdraw assets from this user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DefundUserRequest] defundUserRequest (required):
  Future<Response> ledgerWithdrawWithHttpInfo(String userId, DefundUserRequest defundUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = defundUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Withdraw assets from this user to the outside world
  ///
  /// Withdraw assets from this user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DefundUserRequest] defundUserRequest (required):
  Future<FundUserResponseEnvelope?> ledgerWithdraw(String userId, DefundUserRequest defundUserRequest,) async {
    final response = await ledgerWithdrawWithHttpInfo(userId, defundUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FundUserResponseEnvelope',) as FundUserResponseEnvelope;
    
    }
    return null;
  }

  /// Get current accrued leverage interest for the user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] positionId:
  ///
  /// * [String] assetId:
  Future<Response> leverageGetAccruedInterestByUserWithHttpInfo({ String? positionId, String? assetId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/accrued_interest/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (positionId != null) {
      queryParams.addAll(_queryParams('', 'position_id', positionId));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'asset_id', assetId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get current accrued leverage interest for the user
  ///
  /// Parameters:
  ///
  /// * [String] positionId:
  ///
  /// * [String] assetId:
  Future<CurrentLeverageAccruedInterestResponseEnvelope?> leverageGetAccruedInterestByUser({ String? positionId, String? assetId, }) async {
    final response = await leverageGetAccruedInterestByUserWithHttpInfo( positionId: positionId, assetId: assetId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CurrentLeverageAccruedInterestResponseEnvelope',) as CurrentLeverageAccruedInterestResponseEnvelope;
    
    }
    return null;
  }

  /// Create an isolated position by transferring collateral to the position from the user's global collateral
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IsolateCollateralRequest] isolateCollateralRequest (required):
  Future<Response> leverageIsolateCollateralWithHttpInfo(IsolateCollateralRequest isolateCollateralRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/isolate_collateral';

    // ignore: prefer_final_locals
    Object? postBody = isolateCollateralRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create an isolated position by transferring collateral to the position from the user's global collateral
  ///
  /// Parameters:
  ///
  /// * [IsolateCollateralRequest] isolateCollateralRequest (required):
  Future<IsolateCollateralResponse?> leverageIsolateCollateral(IsolateCollateralRequest isolateCollateralRequest,) async {
    final response = await leverageIsolateCollateralWithHttpInfo(isolateCollateralRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IsolateCollateralResponse',) as IsolateCollateralResponse;
    
    }
    return null;
  }

  /// Supply leverage for a specific asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SupplyRequest] supplyRequest (required):
  Future<Response> leverageSupplyWithHttpInfo(SupplyRequest supplyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/supply';

    // ignore: prefer_final_locals
    Object? postBody = supplyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Supply leverage for a specific asset
  ///
  /// Parameters:
  ///
  /// * [SupplyRequest] supplyRequest (required):
  Future<SupplyResponseEnvelope?> leverageSupply(SupplyRequest supplyRequest,) async {
    final response = await leverageSupplyWithHttpInfo(supplyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SupplyResponseEnvelope',) as SupplyResponseEnvelope;
    
    }
    return null;
  }

  /// Combines all isolated positions into a single global position
  ///
  /// Combines all isolated positions into a single global position
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UnitePositionRequest] unitePositionRequest (required):
  Future<Response> leverageUniteWithHttpInfo(UnitePositionRequest unitePositionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/unite';

    // ignore: prefer_final_locals
    Object? postBody = unitePositionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Combines all isolated positions into a single global position
  ///
  /// Combines all isolated positions into a single global position
  ///
  /// Parameters:
  ///
  /// * [UnitePositionRequest] unitePositionRequest (required):
  Future<UnitePositionResponseEnvelope?> leverageUnite(UnitePositionRequest unitePositionRequest,) async {
    final response = await leverageUniteWithHttpInfo(unitePositionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnitePositionResponseEnvelope',) as UnitePositionResponseEnvelope;
    
    }
    return null;
  }

  /// Withdraw leverage for a specific asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WithdrawRequest] withdrawRequest (required):
  Future<Response> leverageWithdrawWithHttpInfo(WithdrawRequest withdrawRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/withdraw';

    // ignore: prefer_final_locals
    Object? postBody = withdrawRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Withdraw leverage for a specific asset
  ///
  /// Parameters:
  ///
  /// * [WithdrawRequest] withdrawRequest (required):
  Future<WithdrawResponseEnvelope?> leverageWithdraw(WithdrawRequest withdrawRequest,) async {
    final response = await leverageWithdrawWithHttpInfo(withdrawRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WithdrawResponseEnvelope',) as WithdrawResponseEnvelope;
    
    }
    return null;
  }

  /// Add liquidity to a pool
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  ///
  /// * [LiquidityRequest] liquidityRequest (required):
  Future<Response> liquidityAddWithHttpInfo(String poolId, LiquidityRequest liquidityRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/liquidity/pool/{pool_id}/add'
      .replaceAll('{pool_id}', poolId);

    // ignore: prefer_final_locals
    Object? postBody = liquidityRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add liquidity to a pool
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  ///
  /// * [LiquidityRequest] liquidityRequest (required):
  Future<LiquidityResponseEnvelope?> liquidityAdd(String poolId, LiquidityRequest liquidityRequest,) async {
    final response = await liquidityAddWithHttpInfo(poolId, liquidityRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LiquidityResponseEnvelope',) as LiquidityResponseEnvelope;
    
    }
    return null;
  }

  /// Subtract liquidity from a pool
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  ///
  /// * [LiquidityRequest] liquidityRequest (required):
  Future<Response> liquiditySubtractWithHttpInfo(String poolId, LiquidityRequest liquidityRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/liquidity/pool/{pool_id}/remove'
      .replaceAll('{pool_id}', poolId);

    // ignore: prefer_final_locals
    Object? postBody = liquidityRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Subtract liquidity from a pool
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  ///
  /// * [LiquidityRequest] liquidityRequest (required):
  Future<LiquidityResponseEnvelope?> liquiditySubtract(String poolId, LiquidityRequest liquidityRequest,) async {
    final response = await liquiditySubtractWithHttpInfo(poolId, liquidityRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LiquidityResponseEnvelope',) as LiquidityResponseEnvelope;
    
    }
    return null;
  }

  /// List assets
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] createdAfter:
  ///
  /// * [DateTime] createdBefore:
  ///
  /// * [AssetKind] assetKind:
  ///   Asset kind (BOND, CURRENCY, INTEREST, POOL_SHARE)
  ///
  /// * [bool] canAddLiquidity:
  ///
  /// * [bool] canDirectBorrow:
  ///
  /// * [bool] canOnboard:
  ///
  /// * [bool] canTrade:
  ///
  /// * [bool] canVirtualBorrow:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> listAssetsWithHttpInfo({ DateTime? createdAfter, DateTime? createdBefore, AssetKind? assetKind, bool? canAddLiquidity, bool? canDirectBorrow, bool? canOnboard, bool? canTrade, bool? canVirtualBorrow, int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'created_after', createdAfter));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'created_before', createdBefore));
    }
    if (assetKind != null) {
      queryParams.addAll(_queryParams('', 'asset_kind', assetKind));
    }
    if (canAddLiquidity != null) {
      queryParams.addAll(_queryParams('', 'can_add_liquidity', canAddLiquidity));
    }
    if (canDirectBorrow != null) {
      queryParams.addAll(_queryParams('', 'can_direct_borrow', canDirectBorrow));
    }
    if (canOnboard != null) {
      queryParams.addAll(_queryParams('', 'can_onboard', canOnboard));
    }
    if (canTrade != null) {
      queryParams.addAll(_queryParams('', 'can_trade', canTrade));
    }
    if (canVirtualBorrow != null) {
      queryParams.addAll(_queryParams('', 'can_virtual_borrow', canVirtualBorrow));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List assets
  ///
  /// Parameters:
  ///
  /// * [DateTime] createdAfter:
  ///
  /// * [DateTime] createdBefore:
  ///
  /// * [AssetKind] assetKind:
  ///   Asset kind (BOND, CURRENCY, INTEREST, POOL_SHARE)
  ///
  /// * [bool] canAddLiquidity:
  ///
  /// * [bool] canDirectBorrow:
  ///
  /// * [bool] canOnboard:
  ///
  /// * [bool] canTrade:
  ///
  /// * [bool] canVirtualBorrow:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ResponseEnvelopeOfListAssets?> listAssets({ DateTime? createdAfter, DateTime? createdBefore, AssetKind? assetKind, bool? canAddLiquidity, bool? canDirectBorrow, bool? canOnboard, bool? canTrade, bool? canVirtualBorrow, int? page, int? limit, }) async {
    final response = await listAssetsWithHttpInfo( createdAfter: createdAfter, createdBefore: createdBefore, assetKind: assetKind, canAddLiquidity: canAddLiquidity, canDirectBorrow: canDirectBorrow, canOnboard: canOnboard, canTrade: canTrade, canVirtualBorrow: canVirtualBorrow, page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseEnvelopeOfListAssets',) as ResponseEnvelopeOfListAssets;
    
    }
    return null;
  }

  /// List order books
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderBookStatus] status:
  ///
  /// * [String] baseAssetId:
  ///
  /// * [String] quoteAssetId:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> listOrderBooksWithHttpInfo({ OrderBookStatus? status, String? baseAssetId, String? quoteAssetId, int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (baseAssetId != null) {
      queryParams.addAll(_queryParams('', 'base_asset_id', baseAssetId));
    }
    if (quoteAssetId != null) {
      queryParams.addAll(_queryParams('', 'quote_asset_id', quoteAssetId));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List order books
  ///
  /// Parameters:
  ///
  /// * [OrderBookStatus] status:
  ///
  /// * [String] baseAssetId:
  ///
  /// * [String] quoteAssetId:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ListOrderbookResponseEnvelope?> listOrderBooks({ OrderBookStatus? status, String? baseAssetId, String? quoteAssetId, int? page, int? limit, }) async {
    final response = await listOrderBooksWithHttpInfo( status: status, baseAssetId: baseAssetId, quoteAssetId: quoteAssetId, page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrderbookResponseEnvelope',) as ListOrderbookResponseEnvelope;
    
    }
    return null;
  }

  /// List all orders
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] orderBookId:
  ///
  /// * [List<OrderKind>] kind:
  ///
  /// * [List<OrderStatus>] status:
  ///
  /// * [Side] side:
  ///
  /// * [DateTime] from:
  ///
  /// * [DateTime] to:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> listOrdersWithHttpInfo({ List<String>? orderBookId, List<OrderKind>? kind, List<OrderStatus>? status, Side? side, DateTime? from, DateTime? to, int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orderBookId != null) {
      queryParams.addAll(_queryParams('multi', 'order_book_id', orderBookId));
    }
    if (kind != null) {
      queryParams.addAll(_queryParams('multi', 'kind', kind));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('multi', 'status', status));
    }
    if (side != null) {
      queryParams.addAll(_queryParams('', 'side', side));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all orders
  ///
  /// Parameters:
  ///
  /// * [List<String>] orderBookId:
  ///
  /// * [List<OrderKind>] kind:
  ///
  /// * [List<OrderStatus>] status:
  ///
  /// * [Side] side:
  ///
  /// * [DateTime] from:
  ///
  /// * [DateTime] to:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ListOrdersResponseEnvelope?> listOrders({ List<String>? orderBookId, List<OrderKind>? kind, List<OrderStatus>? status, Side? side, DateTime? from, DateTime? to, int? page, int? limit, }) async {
    final response = await listOrdersWithHttpInfo( orderBookId: orderBookId, kind: kind, status: status, side: side, from: from, to: to, page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrdersResponseEnvelope',) as ListOrdersResponseEnvelope;
    
    }
    return null;
  }

  /// List all position accounts for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPositionAccountsSelfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/self/position_accounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all position accounts for the authenticated user
  Future<ListPositionAccountsResponseEnvelope?> listPositionAccountsSelf() async {
    final response = await listPositionAccountsSelfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListPositionAccountsResponseEnvelope',) as ListPositionAccountsResponseEnvelope;
    
    }
    return null;
  }

  /// Pay current accrued leverage interest for a specific user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PayLeverageAccruedInterestRequest] payLeverageAccruedInterestRequest (required):
  Future<Response> payLeverageGetAccruedInterestWithHttpInfo(PayLeverageAccruedInterestRequest payLeverageAccruedInterestRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/accrued_interest/pay';

    // ignore: prefer_final_locals
    Object? postBody = payLeverageAccruedInterestRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Pay current accrued leverage interest for a specific user
  ///
  /// Parameters:
  ///
  /// * [PayLeverageAccruedInterestRequest] payLeverageAccruedInterestRequest (required):
  Future<PayLeverageAccruedInterestResponseEnvelope?> payLeverageGetAccruedInterest(PayLeverageAccruedInterestRequest payLeverageAccruedInterestRequest,) async {
    final response = await payLeverageGetAccruedInterestWithHttpInfo(payLeverageAccruedInterestRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PayLeverageAccruedInterestResponseEnvelope',) as PayLeverageAccruedInterestResponseEnvelope;
    
    }
    return null;
  }

  /// Revoke apikey for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  Future<Response> revokeAPIKeyForUserWithHttpInfo(String keyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/apikey/{key_id}/revoke'
      .replaceAll('{key_id}', keyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke apikey for a user
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  Future<RevokeAPIKeyResponseEnvelope?> revokeAPIKeyForUser(String keyId,) async {
    final response = await revokeAPIKeyForUserWithHttpInfo(keyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevokeAPIKeyResponseEnvelope',) as RevokeAPIKeyResponseEnvelope;
    
    }
    return null;
  }

  /// Revoke apikey for a user: admin or integrator only
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] keyId (required):
  Future<Response> revokeAPIKeyForUserIDWithHttpInfo(String userId, String keyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/apikey/{key_id}/revoke'
      .replaceAll('{user_id}', userId)
      .replaceAll('{key_id}', keyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke apikey for a user: admin or integrator only
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] keyId (required):
  Future<RevokeAPIKeyResponseEnvelope?> revokeAPIKeyForUserID(String userId, String keyId,) async {
    final response = await revokeAPIKeyForUserIDWithHttpInfo(userId, keyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevokeAPIKeyResponseEnvelope',) as RevokeAPIKeyResponseEnvelope;
    
    }
    return null;
  }

  /// Settle current accrued leverage interest for a specific user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SettleLeverageAccruedInterestRequest] settleLeverageAccruedInterestRequest (required):
  Future<Response> settleLeverageAccruedInterestWithHttpInfo(SettleLeverageAccruedInterestRequest settleLeverageAccruedInterestRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/accrued_interest/settle';

    // ignore: prefer_final_locals
    Object? postBody = settleLeverageAccruedInterestRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Settle current accrued leverage interest for a specific user
  ///
  /// Parameters:
  ///
  /// * [SettleLeverageAccruedInterestRequest] settleLeverageAccruedInterestRequest (required):
  Future<SettleLeverageAccruedInterestResponseEnvelope?> settleLeverageAccruedInterest(SettleLeverageAccruedInterestRequest settleLeverageAccruedInterestRequest,) async {
    final response = await settleLeverageAccruedInterestWithHttpInfo(settleLeverageAccruedInterestRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SettleLeverageAccruedInterestResponseEnvelope',) as SettleLeverageAccruedInterestResponseEnvelope;
    
    }
    return null;
  }

  /// Stream real-time asset prices as map objects
  ///
  /// Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [String] assetId:
  Future<Response> streamAssetPricesWithHttpInfo({ DateTime? since, String? assetId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prices/stream';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'asset_id', assetId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Stream real-time asset prices as map objects
  ///
  /// Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [String] assetId:
  Future<Map<String, StreamedAssetPrice>?> streamAssetPrices({ DateTime? since, String? assetId, }) async {
    final response = await streamAssetPricesWithHttpInfo( since: since, assetId: assetId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, StreamedAssetPrice>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, StreamedAssetPrice>'),);

    }
    return null;
  }

  /// Get a snapshot of candlestick data from date provided, and open a stream for real-time updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [CandleResolution] resolution:
  Future<Response> streamCandleDataWithHttpInfo(String orderBookId, { DateTime? since, CandleResolution? resolution, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/charts/{order_book_id}/candle/stream'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (resolution != null) {
      queryParams.addAll(_queryParams('', 'resolution', resolution));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of candlestick data from date provided, and open a stream for real-time updates
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [CandleResolution] resolution:
  Future<List<StreamCandlesEntry>?> streamCandleData(String orderBookId, { DateTime? since, CandleResolution? resolution, }) async {
    final response = await streamCandleDataWithHttpInfo(orderBookId,  since: since, resolution: resolution, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamCandlesEntry>') as List)
        .cast<StreamCandlesEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<Response> streamOrderBookBalancesWithHttpInfo(String orderBookId, { DateTime? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/balances/stream'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamOrderBookBalanceEntry>?> streamOrderBookBalances(String orderBookId, { DateTime? since, }) async {
    final response = await streamOrderBookBalancesWithHttpInfo(orderBookId,  since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamOrderBookBalanceEntry>') as List)
        .cast<StreamOrderBookBalanceEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get a snapshot of open orders in an order book and open a stream for real-time updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<Response> streamOrderbookOpenOrdersWithHttpInfo(String orderBookId, { DateTime? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{order_book_id}/open/stream'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of open orders in an order book and open a stream for real-time updates
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<LiveOrderbook?> streamOrderbookOpenOrders(String orderBookId, { DateTime? since, }) async {
    final response = await streamOrderbookOpenOrdersWithHttpInfo(orderBookId,  since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LiveOrderbook',) as LiveOrderbook;
    
    }
    return null;
  }

  /// Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<Response> streamTradesWithHttpInfo(String orderBookId, { DateTime? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trades/{order_book_id}/stream'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamTradesEntry>?> streamTrades(String orderBookId, { DateTime? since, }) async {
    final response = await streamTradesWithHttpInfo(orderBookId,  since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StreamTradesEntry>') as List)
        .cast<StreamTradesEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Transfer available balance between a user's accounts (e.g. global to isolated position)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TransferBalancesRequest] transferBalancesRequest (required):
  Future<Response> transferAvailableBalancesWithHttpInfo(TransferBalancesRequest transferBalancesRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/positions/transfer_balances';

    // ignore: prefer_final_locals
    Object? postBody = transferBalancesRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transfer available balance between a user's accounts (e.g. global to isolated position)
  ///
  /// Parameters:
  ///
  /// * [TransferBalancesRequest] transferBalancesRequest (required):
  Future<TransferBalancesResponseEnvelope?> transferAvailableBalances(TransferBalancesRequest transferBalancesRequest,) async {
    final response = await transferAvailableBalancesWithHttpInfo(transferBalancesRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransferBalancesResponseEnvelope',) as TransferBalancesResponseEnvelope;
    
    }
    return null;
  }

  /// Update user configuration by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UpdateUserConfigRequest] updateUserConfigRequest (required):
  Future<Response> updateUserConfigWithHttpInfo(String userId, UpdateUserConfigRequest updateUserConfigRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/config'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserConfigRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update user configuration by ID
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UpdateUserConfigRequest] updateUserConfigRequest (required):
  Future<UserUpdatedResponseEnvelope?> updateUserConfig(String userId, UpdateUserConfigRequest updateUserConfigRequest,) async {
    final response = await updateUserConfigWithHttpInfo(userId, updateUserConfigRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserUpdatedResponseEnvelope',) as UserUpdatedResponseEnvelope;
    
    }
    return null;
  }

  /// Update user configuration for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateUserConfigRequest] updateUserConfigRequest (required):
  Future<Response> updateUserConfigSelfWithHttpInfo(UpdateUserConfigRequest updateUserConfigRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/config/self';

    // ignore: prefer_final_locals
    Object? postBody = updateUserConfigRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update user configuration for the authenticated user
  ///
  /// Parameters:
  ///
  /// * [UpdateUserConfigRequest] updateUserConfigRequest (required):
  Future<UserUpdatedResponseEnvelope?> updateUserConfigSelf(UpdateUserConfigRequest updateUserConfigRequest,) async {
    final response = await updateUserConfigSelfWithHttpInfo(updateUserConfigRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserUpdatedResponseEnvelope',) as UserUpdatedResponseEnvelope;
    
    }
    return null;
  }

  /// Validate submit order request data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidateSubmitOrderRequest] validateSubmitOrderRequest (required):
  Future<Response> validateSubmitOrderWithHttpInfo(ValidateSubmitOrderRequest validateSubmitOrderRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/validate';

    // ignore: prefer_final_locals
    Object? postBody = validateSubmitOrderRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Validate submit order request data
  ///
  /// Parameters:
  ///
  /// * [ValidateSubmitOrderRequest] validateSubmitOrderRequest (required):
  Future<ValidateSubmitOrderResponse?> validateSubmitOrder(ValidateSubmitOrderRequest validateSubmitOrderRequest,) async {
    final response = await validateSubmitOrderWithHttpInfo(validateSubmitOrderRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateSubmitOrderResponse',) as ValidateSubmitOrderResponse;
    
    }
    return null;
  }

  /// Verify a user by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> verifyUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/verify'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Verify a user by ID
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserUpdatedResponseEnvelope?> verifyUser(String userId,) async {
    final response = await verifyUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserUpdatedResponseEnvelope',) as UserUpdatedResponseEnvelope;
    
    }
    return null;
  }
}
