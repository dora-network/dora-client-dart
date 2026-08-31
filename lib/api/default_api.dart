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

  /// Add users to a trading challenge
  ///
  /// Add existing users to a trading challenge. For COMPETITION_MANAGER, the challenge must be assigned in managed_competition_ids. A user must have an empty ledger to join: deposits and withdrawals are barred from enrolment until the challenge is over, so that challenge credits are the only thing a participant holds and the teardown sweep cannot destroy funds of their own.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddTradingChallengeUsersRequest] addTradingChallengeUsersRequest (required):
  Future<Response> addTradingChallengeUsersWithHttpInfo(AddTradingChallengeUsersRequest addTradingChallengeUsersRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/add_users';

    // ignore: prefer_final_locals
    Object? postBody = addTradingChallengeUsersRequest;

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

  /// Add users to a trading challenge
  ///
  /// Add existing users to a trading challenge. For COMPETITION_MANAGER, the challenge must be assigned in managed_competition_ids. A user must have an empty ledger to join: deposits and withdrawals are barred from enrolment until the challenge is over, so that challenge credits are the only thing a participant holds and the teardown sweep cannot destroy funds of their own.
  ///
  /// Parameters:
  ///
  /// * [AddTradingChallengeUsersRequest] addTradingChallengeUsersRequest (required):
  Future<TradingChallengeResponseEnvelope?> addTradingChallengeUsers(AddTradingChallengeUsersRequest addTradingChallengeUsersRequest, { Future<void>? abortTrigger, }) async {
    final response = await addTradingChallengeUsersWithHttpInfo(addTradingChallengeUsersRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeResponseEnvelope',) as TradingChallengeResponseEnvelope;
    
    }
    return null;
  }

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

  /// Approve a trading challenge registration request
  ///
  /// Accessible to admins (any challenge), integrators (their own tenant only) and competition managers (their assigned challenges only). Enrolment runs the same checks as add_users, so a challenge that filled up, now overlaps another of the user's challenges, or whose applicant no longer has an empty ledger is rejected with a 409 and the request stays open.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///
  /// * [ReviewTradingChallengeRegistrationRequest] reviewTradingChallengeRegistrationRequest:
  Future<Response> approveTradingChallengeRegistrationRequestWithHttpInfo(String requestId, { ReviewTradingChallengeRegistrationRequest? reviewTradingChallengeRegistrationRequest, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/registration_requests/{request_id}/approve'
      .replaceAll('{request_id}', requestId);

    // ignore: prefer_final_locals
    Object? postBody = reviewTradingChallengeRegistrationRequest;

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

  /// Approve a trading challenge registration request
  ///
  /// Accessible to admins (any challenge), integrators (their own tenant only) and competition managers (their assigned challenges only). Enrolment runs the same checks as add_users, so a challenge that filled up, now overlaps another of the user's challenges, or whose applicant no longer has an empty ledger is rejected with a 409 and the request stays open.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///
  /// * [ReviewTradingChallengeRegistrationRequest] reviewTradingChallengeRegistrationRequest:
  Future<TradingChallengeRegistrationRequestResponseEnvelope?> approveTradingChallengeRegistrationRequest(String requestId, { ReviewTradingChallengeRegistrationRequest? reviewTradingChallengeRegistrationRequest, Future<void>? abortTrigger, }) async {
    final response = await approveTradingChallengeRegistrationRequestWithHttpInfo(requestId, reviewTradingChallengeRegistrationRequest: reviewTradingChallengeRegistrationRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeRegistrationRequestResponseEnvelope',) as TradingChallengeRegistrationRequestResponseEnvelope;
    
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

  /// Claim challenge prize
  ///
  /// Claim the prize of a challenge the caller is eligible for. A TOURNAMENT claim credits the prize matching the crown and reactivates the account. A CASH claim winds the account down, sweeps every remaining challenge credit and awards the CASH_CROWN: the account is left deactivated with a zero balance, and the reward is redeemed out of band. Both mark the participation PRIZE_CLAIMED.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<Response> claimTradingChallengePrizeWithHttpInfo(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/{trading_challenge_id}/claim'
      .replaceAll('{trading_challenge_id}', tradingChallengeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Claim challenge prize
  ///
  /// Claim the prize of a challenge the caller is eligible for. A TOURNAMENT claim credits the prize matching the crown and reactivates the account. A CASH claim winds the account down, sweeps every remaining challenge credit and awards the CASH_CROWN: the account is left deactivated with a zero balance, and the reward is redeemed out of band. Both mark the participation PRIZE_CLAIMED.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<ClaimTradingChallengeResponseEnvelope?> claimTradingChallengePrize(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    final response = await claimTradingChallengePrizeWithHttpInfo(tradingChallengeId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimTradingChallengeResponseEnvelope',) as ClaimTradingChallengeResponseEnvelope;
    
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

  /// Create a trading challenge
  ///
  /// Create a new trading challenge. Allowed for ADMIN and INTEGRATOR only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTradingChallengeRequest] createTradingChallengeRequest (required):
  Future<Response> createTradingChallengeWithHttpInfo(CreateTradingChallengeRequest createTradingChallengeRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges';

    // ignore: prefer_final_locals
    Object? postBody = createTradingChallengeRequest;

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

  /// Create a trading challenge
  ///
  /// Create a new trading challenge. Allowed for ADMIN and INTEGRATOR only.
  ///
  /// Parameters:
  ///
  /// * [CreateTradingChallengeRequest] createTradingChallengeRequest (required):
  Future<TradingChallengeResponseEnvelope?> createTradingChallenge(CreateTradingChallengeRequest createTradingChallengeRequest, { Future<void>? abortTrigger, }) async {
    final response = await createTradingChallengeWithHttpInfo(createTradingChallengeRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeResponseEnvelope',) as TradingChallengeResponseEnvelope;
    
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
  /// Returns complete yield buckets starting at `start`; `end` is exclusive and a trailing partial bucket is omitted. Requests are limited to 10,000 complete buckets.
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
  /// Returns complete yield buckets starting at `start`; `end` is exclusive and a trailing partial bucket is omitted. Requests are limited to 10,000 complete buckets.
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

  /// Get the minimum USD cash reserve requirement for the given user
  ///
  /// Returns the user's available Global Account USD balance alongside their minimum cash reserve requirement and its breakdown. While available_usd is below required_usd the user may not open new leveraged positions, submit buy orders, transfer assets out of their Global Account or withdraw.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getCashReserveByUserIDWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts/{user_id}/cash_reserve'
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

  /// Get the minimum USD cash reserve requirement for the given user
  ///
  /// Returns the user's available Global Account USD balance alongside their minimum cash reserve requirement and its breakdown. While available_usd is below required_usd the user may not open new leveraged positions, submit buy orders, transfer assets out of their Global Account or withdraw.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<CashReserveResponseEnvelope?> getCashReserveByUserID(String userId, { Future<void>? abortTrigger, }) async {
    final response = await getCashReserveByUserIDWithHttpInfo(userId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CashReserveResponseEnvelope',) as CashReserveResponseEnvelope;
    
    }
    return null;
  }

  /// Get the minimum USD cash reserve requirement for the logged in user
  ///
  /// Returns the user's available Global Account USD balance alongside their minimum cash reserve requirement and its breakdown. While available_usd is below required_usd the user may not open new leveraged positions, submit buy orders, transfer assets out of their Global Account or withdraw.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCashReserveSelfWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts/self/cash_reserve';

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

  /// Get the minimum USD cash reserve requirement for the logged in user
  ///
  /// Returns the user's available Global Account USD balance alongside their minimum cash reserve requirement and its breakdown. While available_usd is below required_usd the user may not open new leveraged positions, submit buy orders, transfer assets out of their Global Account or withdraw.
  Future<CashReserveResponseEnvelope?> getCashReserveSelf({ Future<void>? abortTrigger, }) async {
    final response = await getCashReserveSelfWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CashReserveResponseEnvelope',) as CashReserveResponseEnvelope;
    
    }
    return null;
  }

  /// Get list of users with copy trading enabled
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> getCopyTradersWithHttpInfo({ int? page, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/copy_traders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get list of users with copy trading enabled
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<GetCopyTradersResponse?> getCopyTraders({ int? page, int? limit, Future<void>? abortTrigger, }) async {
    final response = await getCopyTradersWithHttpInfo(page: page, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetCopyTradersResponse',) as GetCopyTradersResponse;
    
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

  /// Get per-chain instructions for depositing USDC into the Dora vault
  ///
  /// Returns everything the caller needs to deposit USDC into the Dora vault with a single signature and a single transaction: an EIP-712 (EIP-2612 permit) typed-data payload to sign with eth_signTypedData_v4, and the descriptor of the vault deposit() call. The client splits the permit signature into v/r/s and ABI-encodes the deposit function with the returned args plus (v, r, s); no separate approve transaction is needed. Only a single chain is currently supported: the provided nonce belongs to it, and the chains array holds at most one entry. Restricted to DORA tenant users whose native asset is USDC.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] quantity (required):
  ///   Human-decimal USDC quantity to deposit, e.g. '100.50'. Must be positive, with at most 6 decimal places.
  ///
  /// * [String] ownerAddress (required):
  ///   The user's wallet address as a 0x-prefixed 20-byte hex string. Used as the permit owner.
  ///
  /// * [String] nonce (required):
  ///   The owner's current USDC permit nonce (read client-side), as a non-negative decimal string. It belongs to the single supported chain.
  ///
  /// * [String] clientReferenceId:
  ///   Optional client-supplied reference as a hex string (0x prefix optional), at most 32 bytes. Left-aligned into the deposit call's bytes32 argument.
  Future<Response> getDepositInstructionsWithHttpInfo(String quantity, String ownerAddress, String nonce, { String? clientReferenceId, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/web3/deposit-instructions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'quantity', quantity));
      queryParams.addAll(_queryParams('', 'owner_address', ownerAddress));
      queryParams.addAll(_queryParams('', 'nonce', nonce));
    if (clientReferenceId != null) {
      queryParams.addAll(_queryParams('', 'client_reference_id', clientReferenceId));
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

  /// Get per-chain instructions for depositing USDC into the Dora vault
  ///
  /// Returns everything the caller needs to deposit USDC into the Dora vault with a single signature and a single transaction: an EIP-712 (EIP-2612 permit) typed-data payload to sign with eth_signTypedData_v4, and the descriptor of the vault deposit() call. The client splits the permit signature into v/r/s and ABI-encodes the deposit function with the returned args plus (v, r, s); no separate approve transaction is needed. Only a single chain is currently supported: the provided nonce belongs to it, and the chains array holds at most one entry. Restricted to DORA tenant users whose native asset is USDC.
  ///
  /// Parameters:
  ///
  /// * [String] quantity (required):
  ///   Human-decimal USDC quantity to deposit, e.g. '100.50'. Must be positive, with at most 6 decimal places.
  ///
  /// * [String] ownerAddress (required):
  ///   The user's wallet address as a 0x-prefixed 20-byte hex string. Used as the permit owner.
  ///
  /// * [String] nonce (required):
  ///   The owner's current USDC permit nonce (read client-side), as a non-negative decimal string. It belongs to the single supported chain.
  ///
  /// * [String] clientReferenceId:
  ///   Optional client-supplied reference as a hex string (0x prefix optional), at most 32 bytes. Left-aligned into the deposit call's bytes32 argument.
  Future<DepositInstructionsResponseEnvelope?> getDepositInstructions(String quantity, String ownerAddress, String nonce, { String? clientReferenceId, Future<void>? abortTrigger, }) async {
    final response = await getDepositInstructionsWithHttpInfo(quantity, ownerAddress, nonce, clientReferenceId: clientReferenceId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DepositInstructionsResponseEnvelope',) as DepositInstructionsResponseEnvelope;
    
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
  /// Get details of a specific order. Traders can only view their own orders. Admins can view any order. Integrators can view orders for users within their tenant.
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
  /// Get details of a specific order. Traders can only view their own orders. Admins can view any order. Integrators can view orders for users within their tenant.
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

  /// Get top traders by PnL
  ///
  /// Returns user PnL ranking for the provided time range. By default only users with allow_copy_trading=true are included. Set all=true to include all users; this requires an admin role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] start (required):
  ///   Start timestamp (inclusive) in RFC3339 format.
  ///
  /// * [DateTime] end (required):
  ///   End timestamp (exclusive) in RFC3339 format.
  ///
  /// * [int] page:
  ///   1-based page number for pagination.
  ///
  /// * [int] limit:
  ///   Number of records per page (max 100). Defaults to 100.
  ///
  /// * [bool] all:
  ///   When true, includes users with allow_copy_trading=false. Requires admin role.
  Future<Response> getTopTradersByPnLWithHttpInfo(DateTime start, DateTime end, { int? page, int? limit, bool? all, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/ranking';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'end', end));
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
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

  /// Get top traders by PnL
  ///
  /// Returns user PnL ranking for the provided time range. By default only users with allow_copy_trading=true are included. Set all=true to include all users; this requires an admin role.
  ///
  /// Parameters:
  ///
  /// * [DateTime] start (required):
  ///   Start timestamp (inclusive) in RFC3339 format.
  ///
  /// * [DateTime] end (required):
  ///   End timestamp (exclusive) in RFC3339 format.
  ///
  /// * [int] page:
  ///   1-based page number for pagination.
  ///
  /// * [int] limit:
  ///   Number of records per page (max 100). Defaults to 100.
  ///
  /// * [bool] all:
  ///   When true, includes users with allow_copy_trading=false. Requires admin role.
  Future<GetPnLRankingResponse?> getTopTradersByPnL(DateTime start, DateTime end, { int? page, int? limit, bool? all, Future<void>? abortTrigger, }) async {
    final response = await getTopTradersByPnLWithHttpInfo(start, end, page: page, limit: limit, all: all, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetPnLRankingResponse',) as GetPnLRankingResponse;
    
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

  /// Get trading challenge by ID
  ///
  /// Fetch one trading challenge. COMPETITION_MANAGER can access only assigned challenge IDs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<Response> getTradingChallengeByIDWithHttpInfo(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/{trading_challenge_id}'
      .replaceAll('{trading_challenge_id}', tradingChallengeId);

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

  /// Get trading challenge by ID
  ///
  /// Fetch one trading challenge. COMPETITION_MANAGER can access only assigned challenge IDs.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<TradingChallengeResponseEnvelope?> getTradingChallengeByID(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    final response = await getTradingChallengeByIDWithHttpInfo(tradingChallengeId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeResponseEnvelope',) as TradingChallengeResponseEnvelope;
    
    }
    return null;
  }

  /// Get trading challenge daily snapshots
  ///
  /// List participant daily snapshots for a challenge. COMPETITION_MANAGER can access only assigned challenge IDs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<Response> getTradingChallengeDailySnapshotsWithHttpInfo(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/{trading_challenge_id}/daily_snapshots'
      .replaceAll('{trading_challenge_id}', tradingChallengeId);

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

  /// Get trading challenge daily snapshots
  ///
  /// List participant daily snapshots for a challenge. COMPETITION_MANAGER can access only assigned challenge IDs.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<TradingChallengeDailySnapshotsResponseEnvelope?> getTradingChallengeDailySnapshots(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    final response = await getTradingChallengeDailySnapshotsWithHttpInfo(tradingChallengeId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeDailySnapshotsResponseEnvelope',) as TradingChallengeDailySnapshotsResponseEnvelope;
    
    }
    return null;
  }

  /// Get trading challenge results
  ///
  /// List challenge leaderboard/results. COMPETITION_MANAGER can access only assigned challenge IDs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  ///
  /// * [String] board:
  ///   Leaderboard board selector. Defaults to TOP_PNL.
  Future<Response> getTradingChallengeResultsWithHttpInfo(String tradingChallengeId, { String? board, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/{trading_challenge_id}/results'
      .replaceAll('{trading_challenge_id}', tradingChallengeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (board != null) {
      queryParams.addAll(_queryParams('', 'board', board));
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

  /// Get trading challenge results
  ///
  /// List challenge leaderboard/results. COMPETITION_MANAGER can access only assigned challenge IDs.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  ///
  /// * [String] board:
  ///   Leaderboard board selector. Defaults to TOP_PNL.
  Future<TradingChallengeResultsResponseEnvelope?> getTradingChallengeResults(String tradingChallengeId, { String? board, Future<void>? abortTrigger, }) async {
    final response = await getTradingChallengeResultsWithHttpInfo(tradingChallengeId, board: board, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeResultsResponseEnvelope',) as TradingChallengeResultsResponseEnvelope;
    
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

  /// Get the latest account deactivation request for a user
  ///
  /// Returns the user's latest deactivation request, i.e. their current deactivation status. Integrators may only request users belonging to their own tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserDeactivationWithHttpInfo(String userId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/{user_id}/deactivation'
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

  /// Get the latest account deactivation request for a user
  ///
  /// Returns the user's latest deactivation request, i.e. their current deactivation status. Integrators may only request users belonging to their own tenant.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserDeactivationResponseEnvelope?> getUserDeactivation(String userId, { Future<void>? abortTrigger, }) async {
    final response = await getUserDeactivationWithHttpInfo(userId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDeactivationResponseEnvelope',) as UserDeactivationResponseEnvelope;
    
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

  /// List USDC deposits
  ///
  /// Lists USDC deposits ordered by observed_at descending. Admin users may list deposits for any user (or all users); non-admin users may only list their own deposits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId:
  ///   Filter by user ID. Non-admin callers may only specify their own user ID.
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<Response> listDepositsWithHttpInfo({ String? userId, int? page, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/web3/deposits';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
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

  /// List USDC deposits
  ///
  /// Lists USDC deposits ordered by observed_at descending. Admin users may list deposits for any user (or all users); non-admin users may only list their own deposits.
  ///
  /// Parameters:
  ///
  /// * [String] userId:
  ///   Filter by user ID. Non-admin callers may only specify their own user ID.
  ///
  /// * [int] page:
  ///
  /// * [int] limit:
  Future<ListDepositsResponseEnvelope?> listDeposits({ String? userId, int? page, int? limit, Future<void>? abortTrigger, }) async {
    final response = await listDepositsWithHttpInfo(userId: userId, page: page, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListDepositsResponseEnvelope',) as ListDepositsResponseEnvelope;
    
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
  /// * [String] userId:
  ///   Filter by user ID (only allowed if the user has copy trading enabled, or if the requester is an Admin or Integrator within the same tenant)
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
  ///
  /// * [String] clientOrderId:
  ///   Filter by client order ID prefix (max 256 characters)
  Future<Response> listOrdersWithHttpInfo({ String? userId, List<String>? orderBookId, List<OrderKind>? kind, List<OrderStatus>? status, Side? side, DateTime? from, DateTime? to, int? page, int? limit, String? clientOrderId, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
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
    if (clientOrderId != null) {
      queryParams.addAll(_queryParams('', 'client_order_id', clientOrderId));
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
  /// * [String] userId:
  ///   Filter by user ID (only allowed if the user has copy trading enabled, or if the requester is an Admin or Integrator within the same tenant)
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
  ///
  /// * [String] clientOrderId:
  ///   Filter by client order ID prefix (max 256 characters)
  Future<ListOrdersResponseEnvelope?> listOrders({ String? userId, List<String>? orderBookId, List<OrderKind>? kind, List<OrderStatus>? status, Side? side, DateTime? from, DateTime? to, int? page, int? limit, String? clientOrderId, Future<void>? abortTrigger, }) async {
    final response = await listOrdersWithHttpInfo(userId: userId, orderBookId: orderBookId, kind: kind, status: status, side: side, from: from, to: to, page: page, limit: limit, clientOrderId: clientOrderId, abortTrigger: abortTrigger,);
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

  /// List trading challenge registration requests
  ///
  /// The review queue. Admins see every tenant and may filter to one, an integrator is pinned to their own tenant, and a competition manager only sees the requests of the challenges assigned to them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId:
  ///   Only requests for this challenge.
  ///
  /// * [String] userId:
  ///   Only requests from this user.
  ///
  /// * [String] status:
  ///   Only requests in this state.
  ///
  /// * [String] tenantId:
  ///   Admins only; an integrator may only name their own tenant.
  ///
  /// * [int] limit:
  ///   Page size, capped at 1000.
  ///
  /// * [int] offset:
  ///   Rows to skip.
  Future<Response> listTradingChallengeRegistrationRequestsWithHttpInfo({ String? tradingChallengeId, String? userId, String? status, String? tenantId, int? limit, int? offset, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/registration_requests';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tradingChallengeId != null) {
      queryParams.addAll(_queryParams('', 'trading_challenge_id', tradingChallengeId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (tenantId != null) {
      queryParams.addAll(_queryParams('', 'tenant_id', tenantId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// List trading challenge registration requests
  ///
  /// The review queue. Admins see every tenant and may filter to one, an integrator is pinned to their own tenant, and a competition manager only sees the requests of the challenges assigned to them.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId:
  ///   Only requests for this challenge.
  ///
  /// * [String] userId:
  ///   Only requests from this user.
  ///
  /// * [String] status:
  ///   Only requests in this state.
  ///
  /// * [String] tenantId:
  ///   Admins only; an integrator may only name their own tenant.
  ///
  /// * [int] limit:
  ///   Page size, capped at 1000.
  ///
  /// * [int] offset:
  ///   Rows to skip.
  Future<TradingChallengeRegistrationRequestListResponseEnvelope?> listTradingChallengeRegistrationRequests({ String? tradingChallengeId, String? userId, String? status, String? tenantId, int? limit, int? offset, Future<void>? abortTrigger, }) async {
    final response = await listTradingChallengeRegistrationRequestsWithHttpInfo(tradingChallengeId: tradingChallengeId, userId: userId, status: status, tenantId: tenantId, limit: limit, offset: offset, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeRegistrationRequestListResponseEnvelope',) as TradingChallengeRegistrationRequestListResponseEnvelope;
    
    }
    return null;
  }

  /// List trading challenges
  ///
  /// List trading challenges. COMPETITION_MANAGER callers only receive challenges present in their managed_competition_ids.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tenantId:
  ///
  /// * [TradingChallengeType] type:
  ///
  /// * [TradingChallengeStatus] status:
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  Future<Response> listTradingChallengesWithHttpInfo({ String? tenantId, TradingChallengeType? type, TradingChallengeStatus? status, DateTime? start, DateTime? end, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tenantId != null) {
      queryParams.addAll(_queryParams('', 'tenant_id', tenantId));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
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

  /// List trading challenges
  ///
  /// List trading challenges. COMPETITION_MANAGER callers only receive challenges present in their managed_competition_ids.
  ///
  /// Parameters:
  ///
  /// * [String] tenantId:
  ///
  /// * [TradingChallengeType] type:
  ///
  /// * [TradingChallengeStatus] status:
  ///
  /// * [DateTime] start:
  ///
  /// * [DateTime] end:
  Future<TradingChallengeListResponseEnvelope?> listTradingChallenges({ String? tenantId, TradingChallengeType? type, TradingChallengeStatus? status, DateTime? start, DateTime? end, Future<void>? abortTrigger, }) async {
    final response = await listTradingChallengesWithHttpInfo(tenantId: tenantId, type: type, status: status, start: start, end: end, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeListResponseEnvelope',) as TradingChallengeListResponseEnvelope;
    
    }
    return null;
  }

  /// Get the current deactivation status across all users
  ///
  /// Returns each user's latest deactivation request, i.e. their current status. Users with no deactivation history are absent. Ordered by request creation time, newest first. Integrators only see users of their own tenant, unless that tenant is global.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Only return users whose latest request has this status.
  ///
  /// * [String] tenantId:
  ///   Only return users belonging to this tenant. At most one of tenant_id, trading_challenge_id and user_ids may be passed; combining them is rejected. An integrator whose tenant is not global may only pass their own tenant.
  ///
  /// * [String] tradingChallengeId:
  ///   Only return participants of this trading challenge. Mutually exclusive with tenant_id and user_ids.
  ///
  /// * [String] userIds:
  ///   Comma-separated user IDs to return. Mutually exclusive with tenant_id and trading_challenge_id.
  Future<Response> listUserDeactivationsWithHttpInfo({ String? status, String? tenantId, String? tradingChallengeId, String? userIds, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/deactivations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (tenantId != null) {
      queryParams.addAll(_queryParams('', 'tenant_id', tenantId));
    }
    if (tradingChallengeId != null) {
      queryParams.addAll(_queryParams('', 'trading_challenge_id', tradingChallengeId));
    }
    if (userIds != null) {
      queryParams.addAll(_queryParams('', 'user_ids', userIds));
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

  /// Get the current deactivation status across all users
  ///
  /// Returns each user's latest deactivation request, i.e. their current status. Users with no deactivation history are absent. Ordered by request creation time, newest first. Integrators only see users of their own tenant, unless that tenant is global.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Only return users whose latest request has this status.
  ///
  /// * [String] tenantId:
  ///   Only return users belonging to this tenant. At most one of tenant_id, trading_challenge_id and user_ids may be passed; combining them is rejected. An integrator whose tenant is not global may only pass their own tenant.
  ///
  /// * [String] tradingChallengeId:
  ///   Only return participants of this trading challenge. Mutually exclusive with tenant_id and user_ids.
  ///
  /// * [String] userIds:
  ///   Comma-separated user IDs to return. Mutually exclusive with tenant_id and trading_challenge_id.
  Future<UserDeactivationListResponseEnvelope?> listUserDeactivations({ String? status, String? tenantId, String? tradingChallengeId, String? userIds, Future<void>? abortTrigger, }) async {
    final response = await listUserDeactivationsWithHttpInfo(status: status, tenantId: tenantId, tradingChallengeId: tradingChallengeId, userIds: userIds, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDeactivationListResponseEnvelope',) as UserDeactivationListResponseEnvelope;
    
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

  /// Reject a trading challenge registration request
  ///
  /// Accessible to admins (any challenge), integrators (their own tenant only) and competition managers (their assigned challenges only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///
  /// * [ReviewTradingChallengeRegistrationRequest] reviewTradingChallengeRegistrationRequest:
  Future<Response> rejectTradingChallengeRegistrationRequestWithHttpInfo(String requestId, { ReviewTradingChallengeRegistrationRequest? reviewTradingChallengeRegistrationRequest, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/registration_requests/{request_id}/reject'
      .replaceAll('{request_id}', requestId);

    // ignore: prefer_final_locals
    Object? postBody = reviewTradingChallengeRegistrationRequest;

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

  /// Reject a trading challenge registration request
  ///
  /// Accessible to admins (any challenge), integrators (their own tenant only) and competition managers (their assigned challenges only).
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///
  /// * [ReviewTradingChallengeRegistrationRequest] reviewTradingChallengeRegistrationRequest:
  Future<TradingChallengeRegistrationRequestResponseEnvelope?> rejectTradingChallengeRegistrationRequest(String requestId, { ReviewTradingChallengeRegistrationRequest? reviewTradingChallengeRegistrationRequest, Future<void>? abortTrigger, }) async {
    final response = await rejectTradingChallengeRegistrationRequestWithHttpInfo(requestId, reviewTradingChallengeRegistrationRequest: reviewTradingChallengeRegistrationRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeRegistrationRequestResponseEnvelope',) as TradingChallengeRegistrationRequestResponseEnvelope;
    
    }
    return null;
  }

  /// Remove users from a trading challenge
  ///
  /// Remove users from a trading challenge. For COMPETITION_MANAGER, the challenge must be assigned in managed_competition_ids.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RemoveTradingChallengeUsersRequest] removeTradingChallengeUsersRequest (required):
  Future<Response> removeTradingChallengeUsersWithHttpInfo(RemoveTradingChallengeUsersRequest removeTradingChallengeUsersRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/remove_users';

    // ignore: prefer_final_locals
    Object? postBody = removeTradingChallengeUsersRequest;

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

  /// Remove users from a trading challenge
  ///
  /// Remove users from a trading challenge. For COMPETITION_MANAGER, the challenge must be assigned in managed_competition_ids.
  ///
  /// Parameters:
  ///
  /// * [RemoveTradingChallengeUsersRequest] removeTradingChallengeUsersRequest (required):
  Future<TradingChallengeResponseEnvelope?> removeTradingChallengeUsers(RemoveTradingChallengeUsersRequest removeTradingChallengeUsersRequest, { Future<void>? abortTrigger, }) async {
    final response = await removeTradingChallengeUsersWithHttpInfo(removeTradingChallengeUsersRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeResponseEnvelope',) as TradingChallengeResponseEnvelope;
    
    }
    return null;
  }

  /// Repay borrowed USD, then accrue and pay leverage interest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RepayUSDRequest] repayUSDRequest (required):
  Future<Response> repayUSDWithHttpInfo(RepayUSDRequest repayUSDRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/positions/repay_usd';

    // ignore: prefer_final_locals
    Object? postBody = repayUSDRequest;

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

  /// Repay borrowed USD, then accrue and pay leverage interest
  ///
  /// Parameters:
  ///
  /// * [RepayUSDRequest] repayUSDRequest (required):
  Future<RepayUSDResponseEnvelope?> repayUSD(RepayUSDRequest repayUSDRequest, { Future<void>? abortTrigger, }) async {
    final response = await repayUSDWithHttpInfo(repayUSDRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RepayUSDResponseEnvelope',) as RepayUSDResponseEnvelope;
    
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

  /// Leave a trading challenge
  ///
  /// Convenience alias that terminates the caller's own participation; redirects to /v1/trading_challenges/{trading_challenge_id}/participants/{user_id}/terminate. End a participant's run in a challenge before its own rules would: the participant leaves, or an operator removes them. No prize is paid, even to a participant who could have claimed one -- claim the prize first if that is what you want. The account is wound down, every remaining challenge credit is swept, and the participation is marked TERMINATED and frozen: from then on it takes no further daily snapshots and never appears in the results ranking again. The user is left deactivated with no challenge balance, and is free to register for another challenge. Participants may only terminate their own run; terminating someone else's requires admin, integrator (same tenant) or challenge manager (assigned challenge) rights.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<Response> terminateOwnTradingChallengeParticipationWithHttpInfo(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/{trading_challenge_id}/participants/self/terminate'
      .replaceAll('{trading_challenge_id}', tradingChallengeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Leave a trading challenge
  ///
  /// Convenience alias that terminates the caller's own participation; redirects to /v1/trading_challenges/{trading_challenge_id}/participants/{user_id}/terminate. End a participant's run in a challenge before its own rules would: the participant leaves, or an operator removes them. No prize is paid, even to a participant who could have claimed one -- claim the prize first if that is what you want. The account is wound down, every remaining challenge credit is swept, and the participation is marked TERMINATED and frozen: from then on it takes no further daily snapshots and never appears in the results ranking again. The user is left deactivated with no challenge balance, and is free to register for another challenge. Participants may only terminate their own run; terminating someone else's requires admin, integrator (same tenant) or challenge manager (assigned challenge) rights.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  Future<TerminateTradingChallengeResponseEnvelope?> terminateOwnTradingChallengeParticipation(String tradingChallengeId, { Future<void>? abortTrigger, }) async {
    final response = await terminateOwnTradingChallengeParticipationWithHttpInfo(tradingChallengeId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TerminateTradingChallengeResponseEnvelope',) as TerminateTradingChallengeResponseEnvelope;
    
    }
    return null;
  }

  /// Terminate a participation in a trading challenge
  ///
  /// End a participant's run in a challenge before its own rules would: the participant leaves, or an operator removes them. No prize is paid, even to a participant who could have claimed one -- claim the prize first if that is what you want. The account is wound down, every remaining challenge credit is swept, and the participation is marked TERMINATED and frozen: from then on it takes no further daily snapshots and never appears in the results ranking again. The user is left deactivated with no challenge balance, and is free to register for another challenge. Participants may only terminate their own run; terminating someone else's requires admin, integrator (same tenant) or challenge manager (assigned challenge) rights.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  ///
  /// * [String] userId (required):
  Future<Response> terminateTradingChallengeParticipationWithHttpInfo(String tradingChallengeId, String userId, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/{trading_challenge_id}/participants/{user_id}/terminate'
      .replaceAll('{trading_challenge_id}', tradingChallengeId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Terminate a participation in a trading challenge
  ///
  /// End a participant's run in a challenge before its own rules would: the participant leaves, or an operator removes them. No prize is paid, even to a participant who could have claimed one -- claim the prize first if that is what you want. The account is wound down, every remaining challenge credit is swept, and the participation is marked TERMINATED and frozen: from then on it takes no further daily snapshots and never appears in the results ranking again. The user is left deactivated with no challenge balance, and is free to register for another challenge. Participants may only terminate their own run; terminating someone else's requires admin, integrator (same tenant) or challenge manager (assigned challenge) rights.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  ///
  /// * [String] userId (required):
  Future<TerminateTradingChallengeResponseEnvelope?> terminateTradingChallengeParticipation(String tradingChallengeId, String userId, { Future<void>? abortTrigger, }) async {
    final response = await terminateTradingChallengeParticipationWithHttpInfo(tradingChallengeId, userId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TerminateTradingChallengeResponseEnvelope',) as TerminateTradingChallengeResponseEnvelope;
    
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

  /// Update a trading challenge
  ///
  /// Partially update a trading challenge: a field that is absent from the body is left unchanged. Which fields may be updated depends on the challenge status. PENDING accepts every field. ACTIVE accepts only name, max_users, end and the three prize quantities, because participants are already funded and being measured. COMPLETED accepts none. A request that touches a field the current status does not allow is rejected as a whole with 409. ADMIN may update any challenge, INTEGRATOR only challenges of its own tenant, and COMPETITION_MANAGER only assigned challenge IDs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  ///
  /// * [UpdateTradingChallengeRequest] updateTradingChallengeRequest (required):
  Future<Response> updateTradingChallengeWithHttpInfo(String tradingChallengeId, UpdateTradingChallengeRequest updateTradingChallengeRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trading_challenges/{trading_challenge_id}'
      .replaceAll('{trading_challenge_id}', tradingChallengeId);

    // ignore: prefer_final_locals
    Object? postBody = updateTradingChallengeRequest;

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

  /// Update a trading challenge
  ///
  /// Partially update a trading challenge: a field that is absent from the body is left unchanged. Which fields may be updated depends on the challenge status. PENDING accepts every field. ACTIVE accepts only name, max_users, end and the three prize quantities, because participants are already funded and being measured. COMPLETED accepts none. A request that touches a field the current status does not allow is rejected as a whole with 409. ADMIN may update any challenge, INTEGRATOR only challenges of its own tenant, and COMPETITION_MANAGER only assigned challenge IDs.
  ///
  /// Parameters:
  ///
  /// * [String] tradingChallengeId (required):
  ///
  /// * [UpdateTradingChallengeRequest] updateTradingChallengeRequest (required):
  Future<TradingChallengeResponseEnvelope?> updateTradingChallenge(String tradingChallengeId, UpdateTradingChallengeRequest updateTradingChallengeRequest, { Future<void>? abortTrigger, }) async {
    final response = await updateTradingChallengeWithHttpInfo(tradingChallengeId, updateTradingChallengeRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TradingChallengeResponseEnvelope',) as TradingChallengeResponseEnvelope;
    
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

  /// Set or clear a user's KYC completion timestamp
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UpdateUserKYCRequest] updateUserKYCRequest (required):
  Future<Response> updateUserKYCWithHttpInfo(String userId, UpdateUserKYCRequest updateUserKYCRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrators/user/{user_id}/kyc'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserKYCRequest;

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

  /// Set or clear a user's KYC completion timestamp
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UpdateUserKYCRequest] updateUserKYCRequest (required):
  Future<UpdateUserKYCResponseEnvelope?> updateUserKYC(String userId, UpdateUserKYCRequest updateUserKYCRequest, { Future<void>? abortTrigger, }) async {
    final response = await updateUserKYCWithHttpInfo(userId, updateUserKYCRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateUserKYCResponseEnvelope',) as UpdateUserKYCResponseEnvelope;
    
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
