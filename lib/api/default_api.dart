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

  /// Approve a pending withdrawal request
  ///
  /// Approve a pending withdrawal request, allowing the transfer of assets to the outside world to proceed. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] withdrawalId (required):
  ///
  /// * [WithdrawalRequestReason] withdrawalRequestReason:
  Future<Response> approveLedgerWithdrawRequestWithHttpInfo(String withdrawalId, { WithdrawalRequestReason? withdrawalRequestReason, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests/{withdrawal_id}/approve'
      .replaceAll('{withdrawal_id}', withdrawalId);

    // ignore: prefer_final_locals
    Object? postBody = withdrawalRequestReason;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Approve a pending withdrawal request
  ///
  /// Approve a pending withdrawal request, allowing the transfer of assets to the outside world to proceed. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Parameters:
  ///
  /// * [String] withdrawalId (required):
  ///
  /// * [WithdrawalRequestReason] withdrawalRequestReason:
  Future<WithdrawalInitiationResponseEnvelope?> approveLedgerWithdrawRequest(String withdrawalId, { WithdrawalRequestReason? withdrawalRequestReason, Future<void>? abortTrigger, }) async {
    final response = await approveLedgerWithdrawRequestWithHttpInfo(withdrawalId, withdrawalRequestReason: withdrawalRequestReason, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WithdrawalInitiationResponseEnvelope',) as WithdrawalInitiationResponseEnvelope;
    
    }
    return null;
  }

  /// Cancel all open orders, if user passes orderbook or account_id on query params it will cancel all orders on specific orderbook or account, admin can cancel user's orders on specific orderbook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId:
  ///
  /// * [String] userId:
  ///
  /// * [String] accountId:
  ///
  /// * [OrderKind] orderKind:
  Future<Response> cancelAllOpenOrdersWithHttpInfo({ String? orderBookId, String? userId, String? accountId, OrderKind? orderKind, Future<void>? abortTrigger, }) async {
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
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'account_id', accountId));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Cancel all open orders, if user passes orderbook or account_id on query params it will cancel all orders on specific orderbook or account, admin can cancel user's orders on specific orderbook
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId:
  ///
  /// * [String] userId:
  ///
  /// * [String] accountId:
  ///
  /// * [OrderKind] orderKind:
  Future<ListOrdersResponseEnvelope?> cancelAllOpenOrders({ String? orderBookId, String? userId, String? accountId, OrderKind? orderKind, Future<void>? abortTrigger, }) async {
    final response = await cancelAllOpenOrdersWithHttpInfo(orderBookId: orderBookId, userId: userId, accountId: accountId, orderKind: orderKind, abortTrigger: abortTrigger,);
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

  /// Cancel a pending withdrawal request
  ///
  /// Cancel a pending withdrawal request, providing an optional reason for the cancellation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] withdrawalId (required):
  ///
  /// * [WithdrawalRequestReason] withdrawalRequestReason:
  Future<Response> cancelLedgerWithdrawRequestWithHttpInfo(String withdrawalId, { WithdrawalRequestReason? withdrawalRequestReason, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests/{withdrawal_id}/cancel'
      .replaceAll('{withdrawal_id}', withdrawalId);

    // ignore: prefer_final_locals
    Object? postBody = withdrawalRequestReason;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Cancel a pending withdrawal request
  ///
  /// Cancel a pending withdrawal request, providing an optional reason for the cancellation.
  ///
  /// Parameters:
  ///
  /// * [String] withdrawalId (required):
  ///
  /// * [WithdrawalRequestReason] withdrawalRequestReason:
  Future<WithdrawalInitiationResponseEnvelope?> cancelLedgerWithdrawRequest(String withdrawalId, { WithdrawalRequestReason? withdrawalRequestReason, Future<void>? abortTrigger, }) async {
    final response = await cancelLedgerWithdrawRequestWithHttpInfo(withdrawalId, withdrawalRequestReason: withdrawalRequestReason, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WithdrawalInitiationResponseEnvelope',) as WithdrawalInitiationResponseEnvelope;
    
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
  Future<Response> cancelOrderByIdWithHttpInfo(String orderId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Cancel an order by ID
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  Future<CancelOrderResponseEnvelope?> cancelOrderById(String orderId, { Future<void>? abortTrigger, }) async {
    final response = await cancelOrderByIdWithHttpInfo(orderId, abortTrigger: abortTrigger,);
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

  /// Claim current accrued leverage interest for a specific user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClaimLeverageAccruedInterestRequest] claimLeverageAccruedInterestRequest (required):
  Future<Response> claimLeverageGetAccruedInterestWithHttpInfo(ClaimLeverageAccruedInterestRequest claimLeverageAccruedInterestRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Claim current accrued leverage interest for a specific user
  ///
  /// Parameters:
  ///
  /// * [ClaimLeverageAccruedInterestRequest] claimLeverageAccruedInterestRequest (required):
  Future<ClaimLeverageAccruedInterestResponseEnvelope?> claimLeverageGetAccruedInterest(ClaimLeverageAccruedInterestRequest claimLeverageAccruedInterestRequest, { Future<void>? abortTrigger, }) async {
    final response = await claimLeverageGetAccruedInterestWithHttpInfo(claimLeverageAccruedInterestRequest, abortTrigger: abortTrigger,);
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

  /// Close an isolated account, repaying the borrowed
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CloseAccountRequest] closeAccountRequest (required):
  Future<Response> closeIsolatedAccountV2WithHttpInfo(CloseAccountRequest closeAccountRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/accounts/close';

    // ignore: prefer_final_locals
    Object? postBody = closeAccountRequest;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Close an isolated account, repaying the borrowed
  ///
  /// Parameters:
  ///
  /// * [CloseAccountRequest] closeAccountRequest (required):
  Future<ClosePositionResponseEnvelope?> closeIsolatedAccountV2(CloseAccountRequest closeAccountRequest, { Future<void>? abortTrigger, }) async {
    final response = await closeIsolatedAccountV2WithHttpInfo(closeAccountRequest, abortTrigger: abortTrigger,);
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

  /// Close isolated positions, repaying the borrowed
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClosePositionRequest] closePositionRequest (required):
  Future<Response> closeIsolatedPositionWithHttpInfo(ClosePositionRequest closePositionRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Close isolated positions, repaying the borrowed
  ///
  /// Parameters:
  ///
  /// * [ClosePositionRequest] closePositionRequest (required):
  Future<ClosePositionResponseEnvelope?> closeIsolatedPosition(ClosePositionRequest closePositionRequest, { Future<void>? abortTrigger, }) async {
    final response = await closeIsolatedPositionWithHttpInfo(closePositionRequest, abortTrigger: abortTrigger,);
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
  Future<Response> createAPIKeyForUserWithHttpInfo(CreateAPIKeyRequest createAPIKeyRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Create apikey for a user
  ///
  /// Parameters:
  ///
  /// * [CreateAPIKeyRequest] createAPIKeyRequest (required):
  Future<CreateAPIKeyResponseEnvelope?> createAPIKeyForUser(CreateAPIKeyRequest createAPIKeyRequest, { Future<void>? abortTrigger, }) async {
    final response = await createAPIKeyForUserWithHttpInfo(createAPIKeyRequest, abortTrigger: abortTrigger,);
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
  Future<Response> createAPIKeyForUserIDWithHttpInfo(String userId, CreateAPIKeyRequest createAPIKeyRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Create apikey for a user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [CreateAPIKeyRequest] createAPIKeyRequest (required):
  Future<CreateAPIKeyResponseEnvelope?> createAPIKeyForUserID(String userId, CreateAPIKeyRequest createAPIKeyRequest, { Future<void>? abortTrigger, }) async {
    final response = await createAPIKeyForUserIDWithHttpInfo(userId, createAPIKeyRequest, abortTrigger: abortTrigger,);
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

  /// Create a new conditional orders
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateConditionalOrderRequest] createConditionalOrderRequest (required):
  Future<Response> createConditionalOrderWithHttpInfo(CreateConditionalOrderRequest createConditionalOrderRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/conditional';

    // ignore: prefer_final_locals
    Object? postBody = createConditionalOrderRequest;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Create a new conditional orders
  ///
  /// Parameters:
  ///
  /// * [CreateConditionalOrderRequest] createConditionalOrderRequest (required):
  Future<CreateConditionalOrderResponseEnvelope?> createConditionalOrder(CreateConditionalOrderRequest createConditionalOrderRequest, { Future<void>? abortTrigger, }) async {
    final response = await createConditionalOrderWithHttpInfo(createConditionalOrderRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateConditionalOrderResponseEnvelope',) as CreateConditionalOrderResponseEnvelope;
    
    }
    return null;
  }

  /// Create a new isolated account for a user transferring available assets into the account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewIsolatedAccountRequestV2] newIsolatedAccountRequestV2 (required):
  Future<Response> createNewIsolatedAccountV2WithHttpInfo(NewIsolatedAccountRequestV2 newIsolatedAccountRequestV2, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/accounts/new_isolated';

    // ignore: prefer_final_locals
    Object? postBody = newIsolatedAccountRequestV2;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Create a new isolated account for a user transferring available assets into the account
  ///
  /// Parameters:
  ///
  /// * [NewIsolatedAccountRequestV2] newIsolatedAccountRequestV2 (required):
  Future<NewIsolatedAccountResponseV2Envelope?> createNewIsolatedAccountV2(NewIsolatedAccountRequestV2 newIsolatedAccountRequestV2, { Future<void>? abortTrigger, }) async {
    final response = await createNewIsolatedAccountV2WithHttpInfo(newIsolatedAccountRequestV2, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NewIsolatedAccountResponseV2Envelope',) as NewIsolatedAccountResponseV2Envelope;
    
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
  Future<Response> createOrderWithHttpInfo(CreateOrderRequest createOrderRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Create a new order
  ///
  /// Parameters:
  ///
  /// * [CreateOrderRequest] createOrderRequest (required):
  Future<CreateOrderResponseEnvelope?> createOrder(CreateOrderRequest createOrderRequest, { Future<void>? abortTrigger, }) async {
    final response = await createOrderWithHttpInfo(createOrderRequest, abortTrigger: abortTrigger,);
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
  Future<Response> createUserWithHttpInfo(CreateIntegratorUserRequest createIntegratorUserRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Create a new user
  ///
  /// Parameters:
  ///
  /// * [CreateIntegratorUserRequest] createIntegratorUserRequest (required):
  Future<UserCreatedResponseEnvelope?> createUser(CreateIntegratorUserRequest createIntegratorUserRequest, { Future<void>? abortTrigger, }) async {
    final response = await createUserWithHttpInfo(createIntegratorUserRequest, abortTrigger: abortTrigger,);
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
  Future<Response> deleteUserWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Delete user by ID
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserDeletedResponseEnvelope?> deleteUser(String userId, { Future<void>? abortTrigger, }) async {
    final response = await deleteUserWithHttpInfo(userId, abortTrigger: abortTrigger,);
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
  Future<Response> getAPIKeysForUserIDWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get user's api keys: admin or integrator only
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<APIKeyResponseEnvelope?> getAPIKeysForUserID(String userId, { Future<void>? abortTrigger, }) async {
    final response = await getAPIKeysForUserIDWithHttpInfo(userId, abortTrigger: abortTrigger,);
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
  Future<Response> getAllAssetPricesWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the current price of all assets
  Future<ListAssetPriceResponseEnvelope?> getAllAssetPrices({ Future<void>? abortTrigger, }) async {
    final response = await getAllAssetPricesWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Get all users' positions
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllPositionsWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/positions';

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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all users' positions
  Future<AllPositionsResponseEnvelope?> getAllPositions({ Future<void>? abortTrigger, }) async {
    final response = await getAllPositionsWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AllPositionsResponseEnvelope',) as AllPositionsResponseEnvelope;
    
    }
    return null;
  }

  /// Get all withdrawal requests
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  Future<Response> getAllWithdrawalRequestsWithHttpInfo({ String? status, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all withdrawal requests
  ///
  /// Parameters:
  ///
  /// * [String] status:
  Future<AllWithdrawalInitiationsResponseEnvelope?> getAllWithdrawalRequests({ String? status, Future<void>? abortTrigger, }) async {
    final response = await getAllWithdrawalRequestsWithHttpInfo(status: status, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AllWithdrawalInitiationsResponseEnvelope',) as AllWithdrawalInitiationsResponseEnvelope;
    
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
  Future<Response> getAssetByIdWithHttpInfo(String assetId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get asset by ID
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<GetAssetByIDResponseEnvelope?> getAssetById(String assetId, { Future<void>? abortTrigger, }) async {
    final response = await getAssetByIdWithHttpInfo(assetId, abortTrigger: abortTrigger,);
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
  Future<Response> getAssetPriceWithHttpInfo(String assetId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the current price of an asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<AssetPriceResponseEnvelope?> getAssetPrice(String assetId, { Future<void>? abortTrigger, }) async {
    final response = await getAssetPriceWithHttpInfo(assetId, abortTrigger: abortTrigger,);
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

  /// Get annualized yield to maturity for a bond asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<Response> getAssetYTMByIdWithHttpInfo(String assetId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/{asset_id}/ytm'
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get annualized yield to maturity for a bond asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<GetAssetYTMByIDResponseEnvelope?> getAssetYTMById(String assetId, { Future<void>? abortTrigger, }) async {
    final response = await getAssetYTMByIdWithHttpInfo(assetId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAssetYTMByIDResponseEnvelope',) as GetAssetYTMByIDResponseEnvelope;
    
    }
    return null;
  }

  /// Get yield chart data for an asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///
  /// * [DateTime] start (required):
  ///
  /// * [DateTime] end (required):
  ///
  /// * [AssetYieldResolution] resolution (required):
  Future<Response> getAssetYieldDataWithHttpInfo(String assetId, DateTime start, DateTime end, AssetYieldResolution resolution, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/charts/{asset_id}/yield'
      .replaceAll('{asset_id}', assetId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'end', end));
      queryParams.addAll(_queryParams('', 'resolution', resolution));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get yield chart data for an asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///
  /// * [DateTime] start (required):
  ///
  /// * [DateTime] end (required):
  ///
  /// * [AssetYieldResolution] resolution (required):
  Future<ListAssetYieldResponseEnvelope?> getAssetYieldData(String assetId, DateTime start, DateTime end, AssetYieldResolution resolution, { Future<void>? abortTrigger, }) async {
    final response = await getAssetYieldDataWithHttpInfo(assetId, start, end, resolution, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListAssetYieldResponseEnvelope',) as ListAssetYieldResponseEnvelope;
    
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
  Future<Response> getAssetsStreamWithHttpInfo({ DateTime? since, DateTime? until, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all inserts or updates for assets
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] until:
  Future<List<StreamAssetsEntry>?> getAssetsStream({ DateTime? since, DateTime? until, Future<void>? abortTrigger, }) async {
    final response = await getAssetsStreamWithHttpInfo(since: since, until: until, abortTrigger: abortTrigger,);
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
  /// * [DateTime] start (required):
  ///
  /// * [DateTime] end (required):
  ///
  /// * [CandleResolution] resolution:
  Future<Response> getCandleDataWithHttpInfo(String orderBookId, DateTime start, DateTime end, { CandleResolution? resolution, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/charts/{order_book_id}/candle'
      .replaceAll('{order_book_id}', orderBookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'end', end));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get candlestick data for an orderbook
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] start (required):
  ///
  /// * [DateTime] end (required):
  ///
  /// * [CandleResolution] resolution:
  Future<ListCandlesResponseEnvelope?> getCandleData(String orderBookId, DateTime start, DateTime end, { CandleResolution? resolution, Future<void>? abortTrigger, }) async {
    final response = await getCandleDataWithHttpInfo(orderBookId, start, end, resolution: resolution, abortTrigger: abortTrigger,);
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
  Future<Response> getCouponPaymentsByAssetIdWithHttpInfo(String assetId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get coupon payments for a bond asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<ListCouponPaymentsResponseEnvelope?> getCouponPaymentsByAssetId(String assetId, { Future<void>? abortTrigger, }) async {
    final response = await getCouponPaymentsByAssetIdWithHttpInfo(assetId, abortTrigger: abortTrigger,);
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
  Future<Response> getL1DepthWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<GetTopOfBookResponseEnvelope?> getL1Depth(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getL1DepthWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getL2DepthWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrderBookDepthResponseEnvelope?> getL2Depth(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getL2DepthWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getL3DepthWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrdersResponseEnvelope?> getL3Depth(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getL3DepthWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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

  /// Get your own accounts
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLedgerAccountsSelfV2WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/ledger/accounts/self';

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
      abortTrigger: abortTrigger,
    );
  }

  /// Get your own accounts
  Future<LedgerAccountsResponseV2Envelope?> getLedgerAccountsSelfV2({ Future<void>? abortTrigger, }) async {
    final response = await getLedgerAccountsSelfV2WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LedgerAccountsResponseV2Envelope',) as LedgerAccountsResponseV2Envelope;
    
    }
    return null;
  }

  /// Get your own available, locked, and borrowed assets
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLedgerBalancesSelfWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get your own available, locked, and borrowed assets
  Future<UserBalanceResponseEnvelope?> getLedgerBalancesSelf({ Future<void>? abortTrigger, }) async {
    final response = await getLedgerBalancesSelfWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> getLedgerInterestSelfWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get your own interest
  Future<UserInterestResponseEnvelope?> getLedgerInterestSelf({ Future<void>? abortTrigger, }) async {
    final response = await getLedgerInterestSelfWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> getLedgerModuleWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the entire module object, including unborrowed leverage assets and total leverage trackers
  Future<LedgerModuleResponseEnvelope?> getLedgerModule({ Future<void>? abortTrigger, }) async {
    final response = await getLedgerModuleWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> getLedgerModuleByAssetWithHttpInfo(String assetId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the module object for a single asset ID
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  Future<LedgerModuleByAssetResponseEnvelope?> getLedgerModuleByAsset(String assetId, { Future<void>? abortTrigger, }) async {
    final response = await getLedgerModuleByAssetWithHttpInfo(assetId, abortTrigger: abortTrigger,);
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
  Future<Response> getLedgerPositionsSelfWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get your own positions
  Future<UserPositionResponseEnvelope?> getLedgerPositionsSelf({ Future<void>? abortTrigger, }) async {
    final response = await getLedgerPositionsSelfWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> getLedgerValueSelfWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get your own available, locked, and borrowed USD value; and realized and unrealized PnL
  Future<UserValueResponseEnvelope?> getLedgerValueSelf({ Future<void>? abortTrigger, }) async {
    final response = await getLedgerValueSelfWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Get all pending withdrawal requests for the logged in user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  Future<Response> getLedgerWithdrawRequestsBySelfWithHttpInfo({ String? status, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests/self';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all pending withdrawal requests for the logged in user
  ///
  /// Parameters:
  ///
  /// * [String] status:
  Future<AllWithdrawalInitiationsResponseEnvelope?> getLedgerWithdrawRequestsBySelf({ String? status, Future<void>? abortTrigger, }) async {
    final response = await getLedgerWithdrawRequestsBySelfWithHttpInfo(status: status, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AllWithdrawalInitiationsResponseEnvelope',) as AllWithdrawalInitiationsResponseEnvelope;
    
    }
    return null;
  }

  /// Get all pending withdrawal requests for this user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] status:
  Future<Response> getLedgerWithdrawRequestsByUserIDWithHttpInfo(String userId, { String? status, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all pending withdrawal requests for this user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] status:
  Future<AllWithdrawalInitiationsResponseEnvelope?> getLedgerWithdrawRequestsByUserID(String userId, { String? status, Future<void>? abortTrigger, }) async {
    final response = await getLedgerWithdrawRequestsByUserIDWithHttpInfo(userId, status: status, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AllWithdrawalInitiationsResponseEnvelope',) as AllWithdrawalInitiationsResponseEnvelope;
    
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
  Future<Response> getOrderByIdWithHttpInfo(String orderId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get order by ID
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  Future<OrderResponseEnvelope?> getOrderById(String orderId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderByIdWithHttpInfo(orderId, abortTrigger: abortTrigger,);
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
  Future<Response> getOrderbookByIdWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get orderbook by ID
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderBookResponseEnvelope?> getOrderbookById(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderbookByIdWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getOrderbookDepthWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the aggregated price levels for a specific orderbook (L2 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrderBookDepthResponseEnvelope?> getOrderbookDepth(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderbookDepthWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getOrderbookOrdersWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all open orders for a specific orderbook (L3 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<ListOrdersResponseEnvelope?> getOrderbookOrders(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderbookOrdersWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getOrderbookStatsWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get orderbook stats
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderbookStatsResponseEnvelope?> getOrderbookStats(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderbookStatsWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getOrderbookStatsStreamWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Orderbook stats stream
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderbookStats?> getOrderbookStatsStream(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderbookStatsStreamWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getOrderbookSummaryWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get summary of an orderbook
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<OrderBookSummaryResponseEnvelope?> getOrderbookSummary(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderbookSummaryWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getOrderbookTopWithHttpInfo(String orderBookId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the top price levels for a specific orderbook (L1 market depth)
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  Future<GetTopOfBookResponseEnvelope?> getOrderbookTop(String orderBookId, { Future<void>? abortTrigger, }) async {
    final response = await getOrderbookTopWithHttpInfo(orderBookId, abortTrigger: abortTrigger,);
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
  Future<Response> getPLForSelfByAccountWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get account-by-account PL breakdown for the logged in user
  Future<PLResponseEnvelope?> getPLForSelfByAccount({ Future<void>? abortTrigger, }) async {
    final response = await getPLForSelfByAccountWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> getPoolPriceWithHttpInfo(String poolId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get the current price of a pool
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  Future<PoolPriceResponseEnvelope?> getPoolPrice(String poolId, { Future<void>? abortTrigger, }) async {
    final response = await getPoolPriceWithHttpInfo(poolId, abortTrigger: abortTrigger,);
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

  /// Get realized P&L settlements with filters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] tenantId:
  ///
  /// * [String] positionId:
  ///
  /// * [DateTime] createdAfter:
  ///
  /// * [DateTime] createdBefore:
  ///
  /// * [DateTime] settledAfter:
  ///
  /// * [DateTime] settledBefore:
  ///
  /// * [bool] isSettled:
  Future<Response> getRealizedPnlSettlementsWithHttpInfo({ String? userId, String? tenantId, String? positionId, DateTime? createdAfter, DateTime? createdBefore, DateTime? settledAfter, DateTime? settledBefore, bool? isSettled, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/realized_pnl_settlements';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (tenantId != null) {
      queryParams.addAll(_queryParams('', 'tenant_id', tenantId));
    }
    if (positionId != null) {
      queryParams.addAll(_queryParams('', 'position_id', positionId));
    }
    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'created_after', createdAfter));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'created_before', createdBefore));
    }
    if (settledAfter != null) {
      queryParams.addAll(_queryParams('', 'settled_after', settledAfter));
    }
    if (settledBefore != null) {
      queryParams.addAll(_queryParams('', 'settled_before', settledBefore));
    }
    if (isSettled != null) {
      queryParams.addAll(_queryParams('', 'is_settled', isSettled));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get realized P&L settlements with filters
  ///
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] tenantId:
  ///
  /// * [String] positionId:
  ///
  /// * [DateTime] createdAfter:
  ///
  /// * [DateTime] createdBefore:
  ///
  /// * [DateTime] settledAfter:
  ///
  /// * [DateTime] settledBefore:
  ///
  /// * [bool] isSettled:
  Future<GetRealizedPnlSettlementsResponseEnvelope?> getRealizedPnlSettlements({ String? userId, String? tenantId, String? positionId, DateTime? createdAfter, DateTime? createdBefore, DateTime? settledAfter, DateTime? settledBefore, bool? isSettled, Future<void>? abortTrigger, }) async {
    final response = await getRealizedPnlSettlementsWithHttpInfo(userId: userId, tenantId: tenantId, positionId: positionId, createdAfter: createdAfter, createdBefore: createdBefore, settledAfter: settledAfter, settledBefore: settledBefore, isSettled: isSettled, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRealizedPnlSettlementsResponseEnvelope',) as GetRealizedPnlSettlementsResponseEnvelope;
    
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
  Future<Response> getTradeByIdWithHttpInfo(String tradeId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a trade by ID
  ///
  /// Parameters:
  ///
  /// * [String] tradeId (required):
  Future<TradeResponseEnvelope?> getTradeById(String tradeId, { Future<void>? abortTrigger, }) async {
    final response = await getTradeByIdWithHttpInfo(tradeId, abortTrigger: abortTrigger,);
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
  Future<Response> getTradesWithHttpInfo({ List<String>? orderBookIds, List<String>? userIds, DateTime? start, DateTime? end, int? page, int? limit, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
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
  Future<ListTradeResponseEnvelope?> getTrades({ List<String>? orderBookIds, List<String>? userIds, DateTime? start, DateTime? end, int? page, int? limit, Future<void>? abortTrigger, }) async {
    final response = await getTradesWithHttpInfo(orderBookIds: orderBookIds, userIds: userIds, start: start, end: end, page: page, limit: limit, abortTrigger: abortTrigger,);
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
  Future<Response> getTransactionByIdWithHttpInfo(String transactionId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a transaction by ID
  ///
  /// Parameters:
  ///
  /// * [String] transactionId (required):
  Future<TransactionResponseEnvelope?> getTransactionById(String transactionId, { Future<void>? abortTrigger, }) async {
    final response = await getTransactionByIdWithHttpInfo(transactionId, abortTrigger: abortTrigger,);
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
  /// * [String] tenantId:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> getTransactionsWithHttpInfo({ List<String>? pools, List<String>? userIds, List<TransactionKind>? txKinds, DateTime? start, DateTime? end, String? tenantId, int? page, int? limit, Future<void>? abortTrigger, }) async {
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
    if (tenantId != null) {
      queryParams.addAll(_queryParams('', 'tenant_id', tenantId));
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
      abortTrigger: abortTrigger,
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
  /// * [String] tenantId:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ListTransactionsResponseEnvelope?> getTransactions({ List<String>? pools, List<String>? userIds, List<TransactionKind>? txKinds, DateTime? start, DateTime? end, String? tenantId, int? page, int? limit, Future<void>? abortTrigger, }) async {
    final response = await getTransactionsWithHttpInfo(pools: pools, userIds: userIds, txKinds: txKinds, start: start, end: end, tenantId: tenantId, page: page, limit: limit, abortTrigger: abortTrigger,);
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

  /// Get transactions settlements with filters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tenantId:
  ///   Tenant ID to filter settlements
  ///
  /// * [String] userId:
  ///   User ID to filter settlements
  ///
  /// * [String] positionId:
  ///   Position ID to filter settlements
  ///
  /// * [String] txKind:
  ///   Transaction kind to filter settlements
  ///
  /// * [DateTime] createdAfter:
  ///   Filter settlements created after this time
  ///
  /// * [DateTime] createdBefore:
  ///   Filter settlements created before this time
  ///
  /// * [DateTime] settledAfter:
  ///   Filter settlements settled after this time
  ///
  /// * [DateTime] settledBefore:
  ///   Filter settlements settled before this time
  ///
  /// * [bool] isSettled:
  ///   Filter settlements by settlement status
  Future<Response> getTransactionsSettlementsWithHttpInfo({ String? tenantId, String? userId, String? positionId, String? txKind, DateTime? createdAfter, DateTime? createdBefore, DateTime? settledAfter, DateTime? settledBefore, bool? isSettled, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/transactions/settlements';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tenantId != null) {
      queryParams.addAll(_queryParams('', 'tenant_id', tenantId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (positionId != null) {
      queryParams.addAll(_queryParams('', 'position_id', positionId));
    }
    if (txKind != null) {
      queryParams.addAll(_queryParams('', 'tx_kind', txKind));
    }
    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'created_after', createdAfter));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'created_before', createdBefore));
    }
    if (settledAfter != null) {
      queryParams.addAll(_queryParams('', 'settled_after', settledAfter));
    }
    if (settledBefore != null) {
      queryParams.addAll(_queryParams('', 'settled_before', settledBefore));
    }
    if (isSettled != null) {
      queryParams.addAll(_queryParams('', 'is_settled', isSettled));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get transactions settlements with filters
  ///
  /// Parameters:
  ///
  /// * [String] tenantId:
  ///   Tenant ID to filter settlements
  ///
  /// * [String] userId:
  ///   User ID to filter settlements
  ///
  /// * [String] positionId:
  ///   Position ID to filter settlements
  ///
  /// * [String] txKind:
  ///   Transaction kind to filter settlements
  ///
  /// * [DateTime] createdAfter:
  ///   Filter settlements created after this time
  ///
  /// * [DateTime] createdBefore:
  ///   Filter settlements created before this time
  ///
  /// * [DateTime] settledAfter:
  ///   Filter settlements settled after this time
  ///
  /// * [DateTime] settledBefore:
  ///   Filter settlements settled before this time
  ///
  /// * [bool] isSettled:
  ///   Filter settlements by settlement status
  Future<TransactionsSettlementsResponseEnvelope?> getTransactionsSettlements({ String? tenantId, String? userId, String? positionId, String? txKind, DateTime? createdAfter, DateTime? createdBefore, DateTime? settledAfter, DateTime? settledBefore, bool? isSettled, Future<void>? abortTrigger, }) async {
    final response = await getTransactionsSettlementsWithHttpInfo(tenantId: tenantId, userId: userId, positionId: positionId, txKind: txKind, createdAfter: createdAfter, createdBefore: createdBefore, settledAfter: settledAfter, settledBefore: settledBefore, isSettled: isSettled, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionsSettlementsResponseEnvelope',) as TransactionsSettlementsResponseEnvelope;
    
    }
    return null;
  }

  /// Get transactions since a specific time, and open a stream for further updates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  Future<Response> getTransactionsStreamWithHttpInfo({ DateTime? since, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/transactions/stream';

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
      abortTrigger: abortTrigger,
    );
  }

  /// Get transactions since a specific time, and open a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  Future<List<StreamTransactionsEntry>?> getTransactionsStream({ DateTime? since, Future<void>? abortTrigger, }) async {
    final response = await getTransactionsStreamWithHttpInfo(since: since, abortTrigger: abortTrigger,);
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

  /// Get user by ID (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserByIdWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get user by ID (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserEnvelope?> getUserById(String userId, { Future<void>? abortTrigger, }) async {
    final response = await getUserByIdWithHttpInfo(userId, abortTrigger: abortTrigger,);
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
  Future<Response> getUserCouponPaymentsStreamWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Stream user's coupon payment accruals in real time
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<StreamUserCouponPaymentsResponse?> getUserCouponPaymentsStream(String userId, { Future<void>? abortTrigger, }) async {
    final response = await getUserCouponPaymentsStreamWithHttpInfo(userId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StreamUserCouponPaymentsResponse',) as StreamUserCouponPaymentsResponse;
    
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
  Future<Response> getUserLedgerStreamWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a snapshot of user's ledger updates since a specific time, and opens a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<StreamPositionsEntry>?> getUserLedgerStream(String userId, { Future<void>? abortTrigger, }) async {
    final response = await getUserLedgerStreamWithHttpInfo(userId, abortTrigger: abortTrigger,);
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

  /// Stream user's current leverage accrued interest in real time
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserLeverageAccruedInterestStreamWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/leverage/accrued_interest/stream'
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
      abortTrigger: abortTrigger,
    );
  }

  /// Stream user's current leverage accrued interest in real time
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<StreamCurrentLeverageAccruedInterestResponse?> getUserLeverageAccruedInterestStream(String userId, { Future<void>? abortTrigger, }) async {
    final response = await getUserLeverageAccruedInterestStreamWithHttpInfo(userId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StreamCurrentLeverageAccruedInterestResponse',) as StreamCurrentLeverageAccruedInterestResponse;
    
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
  Future<Response> getUserOrderUpdatesStreamWithHttpInfo(String userId, String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
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
  Future<List<StreamOrderUpdatesEntry>?> getUserOrderUpdatesStream(String userId, String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
    final response = await getUserOrderUpdatesStreamWithHttpInfo(userId, orderBookId, since: since, abortTrigger: abortTrigger,);
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
  Future<Response> getUserOrdersUpdatesStreamAllWithHttpInfo(String userId, { DateTime? since, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a snapshot of user's order updates across all order books since a specific time, and opens a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamOrderUpdatesEntry>?> getUserOrdersUpdatesStreamAll(String userId, { DateTime? since, Future<void>? abortTrigger, }) async {
    final response = await getUserOrdersUpdatesStreamAllWithHttpInfo(userId, since: since, abortTrigger: abortTrigger,);
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
  Future<Response> getUserSelfWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get user details for the authenticated user
  Future<UserEnvelope?> getUserSelf({ Future<void>? abortTrigger, }) async {
    final response = await getUserSelfWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> getUserTransactionsStreamWithHttpInfo(String userId, { DateTime? since, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a snapshot of user's executed transactions since a specific time, and opens a stream for further updates
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamTransactionsEntry>?> getUserTransactionsStream(String userId, { DateTime? since, Future<void>? abortTrigger, }) async {
    final response = await getUserTransactionsStreamWithHttpInfo(userId, since: since, abortTrigger: abortTrigger,);
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

  /// Get all users (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [String] email:
  ///
  /// * [String] firstName:
  ///
  /// * [String] lastName:
  ///
  /// * [CountryCode] countryOfDomicile:
  Future<Response> getUsersWithHttpInfo({ String? id, int? limit, int? offset, String? email, String? firstName, String? lastName, CountryCode? countryOfDomicile, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'first_name', firstName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'last_name', lastName));
    }
    if (countryOfDomicile != null) {
      queryParams.addAll(_queryParams('', 'country_of_domicile', countryOfDomicile));
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get all users (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [String] email:
  ///
  /// * [String] firstName:
  ///
  /// * [String] lastName:
  ///
  /// * [CountryCode] countryOfDomicile:
  Future<ListUsersResponseEnvelope?> getUsers({ String? id, int? limit, int? offset, String? email, String? firstName, String? lastName, CountryCode? countryOfDomicile, Future<void>? abortTrigger, }) async {
    final response = await getUsersWithHttpInfo(id: id, limit: limit, offset: offset, email: email, firstName: firstName, lastName: lastName, countryOfDomicile: countryOfDomicile, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListUsersResponseEnvelope',) as ListUsersResponseEnvelope;
    
    }
    return null;
  }

  /// Get user's api keys
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUsersAPIKeysWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get user's api keys
  Future<APIKeyResponseEnvelope?> getUsersAPIKeys({ Future<void>? abortTrigger, }) async {
    final response = await getUsersAPIKeysWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> ledgerDepositWithHttpInfo(String userId, FundUserRequest fundUserRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
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
  Future<FundUserResponseEnvelope?> ledgerDeposit(String userId, FundUserRequest fundUserRequest, { Future<void>? abortTrigger, }) async {
    final response = await ledgerDepositWithHttpInfo(userId, fundUserRequest, abortTrigger: abortTrigger,);
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
  ///
  /// * [String] status:
  Future<Response> ledgerWithdrawWithHttpInfo(String userId, DefundUserRequest defundUserRequest, { String? status, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = defundUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  ///
  /// * [String] status:
  Future<FundUserResponseEnvelope?> ledgerWithdraw(String userId, DefundUserRequest defundUserRequest, { String? status, Future<void>? abortTrigger, }) async {
    final response = await ledgerWithdrawWithHttpInfo(userId, defundUserRequest, status: status, abortTrigger: abortTrigger,);
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

  /// Initiate a withdrawal request for this user to the outside world
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
  Future<Response> ledgerWithdrawRequestWithHttpInfo(String userId, DefundUserRequest defundUserRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests/{user_id}'
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
      abortTrigger: abortTrigger,
    );
  }

  /// Initiate a withdrawal request for this user to the outside world
  ///
  /// Withdraw assets from this user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DefundUserRequest] defundUserRequest (required):
  Future<WithdrawalInitiationResponseEnvelope?> ledgerWithdrawRequest(String userId, DefundUserRequest defundUserRequest, { Future<void>? abortTrigger, }) async {
    final response = await ledgerWithdrawRequestWithHttpInfo(userId, defundUserRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WithdrawalInitiationResponseEnvelope',) as WithdrawalInitiationResponseEnvelope;
    
    }
    return null;
  }

  /// Initiate a withdrawal request for the logged in user to the outside world
  ///
  /// Withdraw assets from the logged in user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DefundUserRequest] defundUserRequest (required):
  Future<Response> ledgerWithdrawRequestSelfWithHttpInfo(String userId, DefundUserRequest defundUserRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests/self'
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
      abortTrigger: abortTrigger,
    );
  }

  /// Initiate a withdrawal request for the logged in user to the outside world
  ///
  /// Withdraw assets from the logged in user's account to the outside world. Note that this does not interact with any external systems; it simply deducts the amount from the user's available balance in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [DefundUserRequest] defundUserRequest (required):
  Future<WithdrawalInitiationResponseEnvelope?> ledgerWithdrawRequestSelf(String userId, DefundUserRequest defundUserRequest, { Future<void>? abortTrigger, }) async {
    final response = await ledgerWithdrawRequestSelfWithHttpInfo(userId, defundUserRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WithdrawalInitiationResponseEnvelope',) as WithdrawalInitiationResponseEnvelope;
    
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
  Future<Response> leverageGetAccruedInterestByUserWithHttpInfo({ String? positionId, String? assetId, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get current accrued leverage interest for the user
  ///
  /// Parameters:
  ///
  /// * [String] positionId:
  ///
  /// * [String] assetId:
  Future<CurrentLeverageAccruedInterestResponseEnvelope?> leverageGetAccruedInterestByUser({ String? positionId, String? assetId, Future<void>? abortTrigger, }) async {
    final response = await leverageGetAccruedInterestByUserWithHttpInfo(positionId: positionId, assetId: assetId, abortTrigger: abortTrigger,);
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

  /// Get historical leverage borrowing and lending yields for a specific asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  Future<Response> leverageGetHistoricalInterestRatesWithHttpInfo(String assetId, { DateTime? start, DateTime? end, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/interest_rate/{asset_id}/historical'
      .replaceAll('{asset_id}', assetId);

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

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get historical leverage borrowing and lending yields for a specific asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  Future<HistoricalLeverageInterestRatesResponseEnvelope?> leverageGetHistoricalInterestRates(String assetId, { DateTime? start, DateTime? end, Future<void>? abortTrigger, }) async {
    final response = await leverageGetHistoricalInterestRatesWithHttpInfo(assetId, start: start, end: end, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricalLeverageInterestRatesResponseEnvelope',) as HistoricalLeverageInterestRatesResponseEnvelope;
    
    }
    return null;
  }

  /// Get leverage borrowing and lending yields for a specific asset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  Future<Response> leverageGetInterestRateWithHttpInfo(String assetId, { DateTime? start, DateTime? end, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leverage/interest_rate/{asset_id}'
      .replaceAll('{asset_id}', assetId);

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

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get leverage borrowing and lending yields for a specific asset
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  Future<LeverageInterestRateResponseEnvelope?> leverageGetInterestRate(String assetId, { DateTime? start, DateTime? end, Future<void>? abortTrigger, }) async {
    final response = await leverageGetInterestRateWithHttpInfo(assetId, start: start, end: end, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LeverageInterestRateResponseEnvelope',) as LeverageInterestRateResponseEnvelope;
    
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
  Future<Response> leverageIsolateCollateralWithHttpInfo(IsolateCollateralRequest isolateCollateralRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Create an isolated position by transferring collateral to the position from the user's global collateral
  ///
  /// Parameters:
  ///
  /// * [IsolateCollateralRequest] isolateCollateralRequest (required):
  Future<IsolateCollateralResponse?> leverageIsolateCollateral(IsolateCollateralRequest isolateCollateralRequest, { Future<void>? abortTrigger, }) async {
    final response = await leverageIsolateCollateralWithHttpInfo(isolateCollateralRequest, abortTrigger: abortTrigger,);
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
  Future<Response> leverageSupplyWithHttpInfo(SupplyRequest supplyRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Supply leverage for a specific asset
  ///
  /// Parameters:
  ///
  /// * [SupplyRequest] supplyRequest (required):
  Future<SupplyResponseEnvelope?> leverageSupply(SupplyRequest supplyRequest, { Future<void>? abortTrigger, }) async {
    final response = await leverageSupplyWithHttpInfo(supplyRequest, abortTrigger: abortTrigger,);
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
  Future<Response> leverageUniteWithHttpInfo(UnitePositionRequest unitePositionRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Combines all isolated positions into a single global position
  ///
  /// Combines all isolated positions into a single global position
  ///
  /// Parameters:
  ///
  /// * [UnitePositionRequest] unitePositionRequest (required):
  Future<UnitePositionResponseEnvelope?> leverageUnite(UnitePositionRequest unitePositionRequest, { Future<void>? abortTrigger, }) async {
    final response = await leverageUniteWithHttpInfo(unitePositionRequest, abortTrigger: abortTrigger,);
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
  Future<Response> leverageWithdrawWithHttpInfo(WithdrawRequest withdrawRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Withdraw leverage for a specific asset
  ///
  /// Parameters:
  ///
  /// * [WithdrawRequest] withdrawRequest (required):
  Future<WithdrawResponseEnvelope?> leverageWithdraw(WithdrawRequest withdrawRequest, { Future<void>? abortTrigger, }) async {
    final response = await leverageWithdrawWithHttpInfo(withdrawRequest, abortTrigger: abortTrigger,);
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
  Future<Response> liquidityAddWithHttpInfo(String poolId, LiquidityRequest liquidityRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Add liquidity to a pool
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  ///
  /// * [LiquidityRequest] liquidityRequest (required):
  Future<LiquidityResponseEnvelope?> liquidityAdd(String poolId, LiquidityRequest liquidityRequest, { Future<void>? abortTrigger, }) async {
    final response = await liquidityAddWithHttpInfo(poolId, liquidityRequest, abortTrigger: abortTrigger,);
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
  Future<Response> liquiditySubtractWithHttpInfo(String poolId, LiquidityRequest liquidityRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Subtract liquidity from a pool
  ///
  /// Parameters:
  ///
  /// * [String] poolId (required):
  ///
  /// * [LiquidityRequest] liquidityRequest (required):
  Future<LiquidityResponseEnvelope?> liquiditySubtract(String poolId, LiquidityRequest liquidityRequest, { Future<void>? abortTrigger, }) async {
    final response = await liquiditySubtractWithHttpInfo(poolId, liquidityRequest, abortTrigger: abortTrigger,);
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

  /// List all accounts for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAccountsSelfV2WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/user/self/accounts';

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
      abortTrigger: abortTrigger,
    );
  }

  /// List all accounts for the authenticated user
  Future<ListAccountsResponseV2Envelope?> listAccountsSelfV2({ Future<void>? abortTrigger, }) async {
    final response = await listAccountsSelfV2WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListAccountsResponseV2Envelope',) as ListAccountsResponseV2Envelope;
    
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
  Future<Response> listAssetsWithHttpInfo({ DateTime? createdAfter, DateTime? createdBefore, AssetKind? assetKind, bool? canAddLiquidity, bool? canDirectBorrow, bool? canOnboard, bool? canTrade, bool? canVirtualBorrow, int? page, int? limit, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
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
  Future<ResponseEnvelopeOfListAssets?> listAssets({ DateTime? createdAfter, DateTime? createdBefore, AssetKind? assetKind, bool? canAddLiquidity, bool? canDirectBorrow, bool? canOnboard, bool? canTrade, bool? canVirtualBorrow, int? page, int? limit, Future<void>? abortTrigger, }) async {
    final response = await listAssetsWithHttpInfo(createdAfter: createdAfter, createdBefore: createdBefore, assetKind: assetKind, canAddLiquidity: canAddLiquidity, canDirectBorrow: canDirectBorrow, canOnboard: canOnboard, canTrade: canTrade, canVirtualBorrow: canVirtualBorrow, page: page, limit: limit, abortTrigger: abortTrigger,);
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
  /// * [List<OrderBookStatus>] status:
  ///
  /// * [String] baseAssetId:
  ///
  /// * [String] quoteAssetId:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> listOrderBooksWithHttpInfo({ List<OrderBookStatus>? status, String? baseAssetId, String? quoteAssetId, int? page, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('multi', 'status', status));
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
      abortTrigger: abortTrigger,
    );
  }

  /// List order books
  ///
  /// Parameters:
  ///
  /// * [List<OrderBookStatus>] status:
  ///
  /// * [String] baseAssetId:
  ///
  /// * [String] quoteAssetId:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ListOrderbookResponseEnvelope?> listOrderBooks({ List<OrderBookStatus>? status, String? baseAssetId, String? quoteAssetId, int? page, int? limit, Future<void>? abortTrigger, }) async {
    final response = await listOrderBooksWithHttpInfo(status: status, baseAssetId: baseAssetId, quoteAssetId: quoteAssetId, page: page, limit: limit, abortTrigger: abortTrigger,);
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
  Future<Response> listOrdersWithHttpInfo({ List<String>? orderBookId, List<OrderKind>? kind, List<OrderStatus>? status, Side? side, DateTime? from, DateTime? to, int? page, int? limit, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
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
  Future<ListOrdersResponseEnvelope?> listOrders({ List<String>? orderBookId, List<OrderKind>? kind, List<OrderStatus>? status, Side? side, DateTime? from, DateTime? to, int? page, int? limit, Future<void>? abortTrigger, }) async {
    final response = await listOrdersWithHttpInfo(orderBookId: orderBookId, kind: kind, status: status, side: side, from: from, to: to, page: page, limit: limit, abortTrigger: abortTrigger,);
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
  Future<Response> listPositionAccountsSelfWithHttpInfo({ Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// List all position accounts for the authenticated user
  Future<ListPositionAccountsResponseEnvelope?> listPositionAccountsSelf({ Future<void>? abortTrigger, }) async {
    final response = await listPositionAccountsSelfWithHttpInfo(abortTrigger: abortTrigger,);
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
  Future<Response> payLeverageGetAccruedInterestWithHttpInfo(PayLeverageAccruedInterestRequest payLeverageAccruedInterestRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Pay current accrued leverage interest for a specific user
  ///
  /// Parameters:
  ///
  /// * [PayLeverageAccruedInterestRequest] payLeverageAccruedInterestRequest (required):
  Future<PayLeverageAccruedInterestResponseEnvelope?> payLeverageGetAccruedInterest(PayLeverageAccruedInterestRequest payLeverageAccruedInterestRequest, { Future<void>? abortTrigger, }) async {
    final response = await payLeverageGetAccruedInterestWithHttpInfo(payLeverageAccruedInterestRequest, abortTrigger: abortTrigger,);
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

  /// Reject a pending withdrawal request
  ///
  /// Reject a pending withdrawal request, providing a reason for the rejection. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] withdrawalId (required):
  ///
  /// * [WithdrawalRequestReason] withdrawalRequestReason (required):
  Future<Response> rejectLedgerWithdrawRequestWithHttpInfo(String withdrawalId, WithdrawalRequestReason withdrawalRequestReason, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ledger/withdraw/requests/{withdrawal_id}/reject'
      .replaceAll('{withdrawal_id}', withdrawalId);

    // ignore: prefer_final_locals
    Object? postBody = withdrawalRequestReason;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Reject a pending withdrawal request
  ///
  /// Reject a pending withdrawal request, providing a reason for the rejection. Note that this does not interact with any external systems; it simply updates the status of the withdrawal request in the ledger. Actual transfer of assets must be handled separately.
  ///
  /// Parameters:
  ///
  /// * [String] withdrawalId (required):
  ///
  /// * [WithdrawalRequestReason] withdrawalRequestReason (required):
  Future<WithdrawalInitiationResponseEnvelope?> rejectLedgerWithdrawRequest(String withdrawalId, WithdrawalRequestReason withdrawalRequestReason, { Future<void>? abortTrigger, }) async {
    final response = await rejectLedgerWithdrawRequestWithHttpInfo(withdrawalId, withdrawalRequestReason, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WithdrawalInitiationResponseEnvelope',) as WithdrawalInitiationResponseEnvelope;
    
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
  Future<Response> revokeAPIKeyForUserWithHttpInfo(String keyId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Revoke apikey for a user
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  Future<RevokeAPIKeyResponseEnvelope?> revokeAPIKeyForUser(String keyId, { Future<void>? abortTrigger, }) async {
    final response = await revokeAPIKeyForUserWithHttpInfo(keyId, abortTrigger: abortTrigger,);
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
  Future<Response> revokeAPIKeyForUserIDWithHttpInfo(String userId, String keyId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Revoke apikey for a user: admin or integrator only
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] keyId (required):
  Future<RevokeAPIKeyResponseEnvelope?> revokeAPIKeyForUserID(String userId, String keyId, { Future<void>? abortTrigger, }) async {
    final response = await revokeAPIKeyForUserIDWithHttpInfo(userId, keyId, abortTrigger: abortTrigger,);
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
  Future<Response> settleLeverageAccruedInterestWithHttpInfo(SettleLeverageAccruedInterestRequest settleLeverageAccruedInterestRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Settle current accrued leverage interest for a specific user
  ///
  /// Parameters:
  ///
  /// * [SettleLeverageAccruedInterestRequest] settleLeverageAccruedInterestRequest (required):
  Future<SettleLeverageAccruedInterestResponseEnvelope?> settleLeverageAccruedInterest(SettleLeverageAccruedInterestRequest settleLeverageAccruedInterestRequest, { Future<void>? abortTrigger, }) async {
    final response = await settleLeverageAccruedInterestWithHttpInfo(settleLeverageAccruedInterestRequest, abortTrigger: abortTrigger,);
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

  /// Mark a realized P&L settlement as settled
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] settlementId (required):
  Future<Response> settleRealizedPnlRecordWithHttpInfo(String settlementId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/realized_pnl_settlements/{settlement_id}'
      .replaceAll('{settlement_id}', settlementId);

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
      abortTrigger: abortTrigger,
    );
  }

  /// Mark a realized P&L settlement as settled
  ///
  /// Parameters:
  ///
  /// * [String] settlementId (required):
  Future<SettleRealizedPnlRecordResponseEnvelope?> settleRealizedPnlRecord(String settlementId, { Future<void>? abortTrigger, }) async {
    final response = await settleRealizedPnlRecordWithHttpInfo(settlementId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SettleRealizedPnlRecordResponseEnvelope',) as SettleRealizedPnlRecordResponseEnvelope;
    
    }
    return null;
  }

  /// Settle multiple transactions settlements in batch
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TransactionsSettlementRequest] transactionsSettlementRequest (required):
  Future<Response> settleTransactionsSettlementsWithHttpInfo(TransactionsSettlementRequest transactionsSettlementRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/transactions/settlements';

    // ignore: prefer_final_locals
    Object? postBody = transactionsSettlementRequest;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Settle multiple transactions settlements in batch
  ///
  /// Parameters:
  ///
  /// * [TransactionsSettlementRequest] transactionsSettlementRequest (required):
  Future<TransactionsSettlementsResponse?> settleTransactionsSettlements(TransactionsSettlementRequest transactionsSettlementRequest, { Future<void>? abortTrigger, }) async {
    final response = await settleTransactionsSettlementsWithHttpInfo(transactionsSettlementRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionsSettlementsResponse',) as TransactionsSettlementsResponse;
    
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
  /// * [String] assetId:
  Future<Response> streamAssetPricesWithHttpInfo({ String? assetId, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prices/stream';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
      abortTrigger: abortTrigger,
    );
  }

  /// Stream real-time asset prices as map objects
  ///
  /// Opens a WebSocket stream for real-time asset price updates. First message contains all current prices, subsequent messages contain only changed prices. Data is sent as JSON objects keyed by asset ID.
  ///
  /// Parameters:
  ///
  /// * [String] assetId:
  Future<Map<String, AssetPrice>?> streamAssetPrices({ String? assetId, Future<void>? abortTrigger, }) async {
    final response = await streamAssetPricesWithHttpInfo(assetId: assetId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, AssetPrice>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, AssetPrice>'),);

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
  Future<Response> streamCandleDataWithHttpInfo(String orderBookId, { DateTime? since, CandleResolution? resolution, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
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
  Future<List<StreamCandlesEntry>?> streamCandleData(String orderBookId, { DateTime? since, CandleResolution? resolution, Future<void>? abortTrigger, }) async {
    final response = await streamCandleDataWithHttpInfo(orderBookId, since: since, resolution: resolution, abortTrigger: abortTrigger,);
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
  Future<Response> streamOrderBookBalancesWithHttpInfo(String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a snapshot of base and quote balances for an order book and open a stream for real-time updates
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamOrderBookBalanceEntry>?> streamOrderBookBalances(String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
    final response = await streamOrderBookBalancesWithHttpInfo(orderBookId, since: since, abortTrigger: abortTrigger,);
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
  Future<Response> streamOrderbookOpenOrdersWithHttpInfo(String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a snapshot of open orders in an order book and open a stream for real-time updates
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<LiveOrderbook?> streamOrderbookOpenOrders(String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
    final response = await streamOrderbookOpenOrdersWithHttpInfo(orderBookId, since: since, abortTrigger: abortTrigger,);
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
  Future<Response> streamTradesWithHttpInfo(String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Get a snapshot of trades executed on the given order book from a specific date and open a stream for real-time updates
  ///
  /// Parameters:
  ///
  /// * [String] orderBookId (required):
  ///
  /// * [DateTime] since:
  Future<List<StreamTradesEntry>?> streamTrades(String orderBookId, { DateTime? since, Future<void>? abortTrigger, }) async {
    final response = await streamTradesWithHttpInfo(orderBookId, since: since, abortTrigger: abortTrigger,);
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

  /// Transfer available balance between a user's accounts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TransferAccountBalancesRequest] transferAccountBalancesRequest (required):
  Future<Response> transferAccountBalancesV2WithHttpInfo(TransferAccountBalancesRequest transferAccountBalancesRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/accounts/transfer_balances';

    // ignore: prefer_final_locals
    Object? postBody = transferAccountBalancesRequest;

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
      abortTrigger: abortTrigger,
    );
  }

  /// Transfer available balance between a user's accounts
  ///
  /// Parameters:
  ///
  /// * [TransferAccountBalancesRequest] transferAccountBalancesRequest (required):
  Future<TransferAccountBalancesResponseEnvelope?> transferAccountBalancesV2(TransferAccountBalancesRequest transferAccountBalancesRequest, { Future<void>? abortTrigger, }) async {
    final response = await transferAccountBalancesV2WithHttpInfo(transferAccountBalancesRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransferAccountBalancesResponseEnvelope',) as TransferAccountBalancesResponseEnvelope;
    
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
  Future<Response> transferAvailableBalancesWithHttpInfo(TransferBalancesRequest transferBalancesRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Transfer available balance between a user's accounts (e.g. global to isolated position)
  ///
  /// Parameters:
  ///
  /// * [TransferBalancesRequest] transferBalancesRequest (required):
  Future<TransferBalancesResponseEnvelope?> transferAvailableBalances(TransferBalancesRequest transferBalancesRequest, { Future<void>? abortTrigger, }) async {
    final response = await transferAvailableBalancesWithHttpInfo(transferBalancesRequest, abortTrigger: abortTrigger,);
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
  Future<Response> updateUserConfigWithHttpInfo(String userId, UpdateUserConfigRequest updateUserConfigRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Update user configuration by ID
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UpdateUserConfigRequest] updateUserConfigRequest (required):
  Future<UserUpdatedResponseEnvelope?> updateUserConfig(String userId, UpdateUserConfigRequest updateUserConfigRequest, { Future<void>? abortTrigger, }) async {
    final response = await updateUserConfigWithHttpInfo(userId, updateUserConfigRequest, abortTrigger: abortTrigger,);
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
  Future<Response> updateUserConfigSelfWithHttpInfo(UpdateUserConfigRequest updateUserConfigRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Update user configuration for the authenticated user
  ///
  /// Parameters:
  ///
  /// * [UpdateUserConfigRequest] updateUserConfigRequest (required):
  Future<UserUpdatedResponseEnvelope?> updateUserConfigSelf(UpdateUserConfigRequest updateUserConfigRequest, { Future<void>? abortTrigger, }) async {
    final response = await updateUserConfigSelfWithHttpInfo(updateUserConfigRequest, abortTrigger: abortTrigger,);
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
  Future<Response> validateSubmitOrderWithHttpInfo(ValidateSubmitOrderRequest validateSubmitOrderRequest, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Validate submit order request data
  ///
  /// Parameters:
  ///
  /// * [ValidateSubmitOrderRequest] validateSubmitOrderRequest (required):
  Future<ValidateSubmitOrderResponse?> validateSubmitOrder(ValidateSubmitOrderRequest validateSubmitOrderRequest, { Future<void>? abortTrigger, }) async {
    final response = await validateSubmitOrderWithHttpInfo(validateSubmitOrderRequest, abortTrigger: abortTrigger,);
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
  Future<Response> verifyUserWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
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
      abortTrigger: abortTrigger,
    );
  }

  /// Verify a user by ID
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserUpdatedResponseEnvelope?> verifyUser(String userId, { Future<void>? abortTrigger, }) async {
    final response = await verifyUserWithHttpInfo(userId, abortTrigger: abortTrigger,);
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
