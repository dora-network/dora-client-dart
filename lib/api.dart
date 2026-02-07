//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/default_api.dart';

part 'model/api_key_response.dart';
part 'model/api_key_response_envelope.dart';
part 'model/api_keys.dart';
part 'model/asset.dart';
part 'model/asset_config.dart';
part 'model/asset_kind.dart';
part 'model/asset_price.dart';
part 'model/asset_price_response_envelope.dart';
part 'model/asset_request_error.dart';
part 'model/asset_ytm.dart';
part 'model/balance_transfer.dart';
part 'model/balances_response.dart';
part 'model/bond.dart';
part 'model/bond_kind.dart';
part 'model/cancel_order_response_envelope.dart';
part 'model/candle.dart';
part 'model/candle_resolution.dart';
part 'model/claim_leverage_accrued_interest.dart';
part 'model/claim_leverage_accrued_interest_request.dart';
part 'model/claim_leverage_accrued_interest_response_envelope.dart';
part 'model/close_position_request.dart';
part 'model/close_position_resp.dart';
part 'model/close_position_response_envelope.dart';
part 'model/collateral.dart';
part 'model/coupon_payment.dart';
part 'model/create_api_key_data.dart';
part 'model/create_api_key_request.dart';
part 'model/create_api_key_response_envelope.dart';
part 'model/create_integrator_user_request.dart';
part 'model/create_or_update_user_response.dart';
part 'model/create_order_request.dart';
part 'model/create_order_response_envelope.dart';
part 'model/current_leverage_accrued_interest.dart';
part 'model/current_leverage_accrued_interest_response_envelope.dart';
part 'model/defund_user_request.dart';
part 'model/email_exists_response_envelope.dart';
part 'model/fund_user.dart';
part 'model/fund_user_request.dart';
part 'model/fund_user_response_envelope.dart';
part 'model/get_asset_by_id_response_envelope.dart';
part 'model/get_asset_ytmby_id_response_envelope.dart';
part 'model/get_top_of_book_response_envelope.dart';
part 'model/isolate_collateral_request.dart';
part 'model/isolate_collateral_response.dart';
part 'model/isolated_collateral.dart';
part 'model/isolated_position.dart';
part 'model/ledger_module_by_asset_response_envelope.dart';
part 'model/ledger_module_response_envelope.dart';
part 'model/leverage_balance_response.dart';
part 'model/leverage_module_response.dart';
part 'model/leverage_request_error.dart';
part 'model/leverage_type.dart';
part 'model/liquidation_targets_response_envelope.dart';
part 'model/liquidity.dart';
part 'model/liquidity_request.dart';
part 'model/liquidity_response_envelope.dart';
part 'model/list_asset_price_response_envelope.dart';
part 'model/list_candles_response_envelope.dart';
part 'model/list_coupon_payments_response_envelope.dart';
part 'model/list_order_book_depth_response_envelope.dart';
part 'model/list_orderbook_response_envelope.dart';
part 'model/list_orders_response_envelope.dart';
part 'model/list_position_accounts_response_envelope.dart';
part 'model/list_positions_response.dart';
part 'model/list_trade_response_envelope.dart';
part 'model/list_transactions_response_envelope.dart';
part 'model/list_user_coupon_payments_response_envelope.dart';
part 'model/live_orderbook.dart';
part 'model/margin.dart';
part 'model/metadata.dart';
part 'model/module_balance.dart';
part 'model/order.dart';
part 'model/order_book.dart';
part 'model/order_book_balance.dart';
part 'model/order_book_depth.dart';
part 'model/order_book_halt_response_envelope.dart';
part 'model/order_book_response_envelope.dart';
part 'model/order_book_resume_response_envelope.dart';
part 'model/order_book_status.dart';
part 'model/order_book_summary.dart';
part 'model/order_book_summary_response_envelope.dart';
part 'model/order_book_terminate_response_envelope.dart';
part 'model/order_book_top.dart';
part 'model/order_id.dart';
part 'model/order_kind.dart';
part 'model/order_modifier_kind.dart';
part 'model/order_response_envelope.dart';
part 'model/order_status.dart';
part 'model/orderbook_stats.dart';
part 'model/orderbook_stats_response_envelope.dart';
part 'model/pl_account.dart';
part 'model/pl_asset.dart';
part 'model/pl_response_envelope.dart';
part 'model/pl_summary.dart';
part 'model/pay_leverage_accrued_interest.dart';
part 'model/pay_leverage_accrued_interest_request.dart';
part 'model/pay_leverage_accrued_interest_response_envelope.dart';
part 'model/pool_price.dart';
part 'model/pool_price_response_envelope.dart';
part 'model/pool_request_error.dart';
part 'model/portfolio.dart';
part 'model/position.dart';
part 'model/position_account.dart';
part 'model/position_asset.dart';
part 'model/position_response.dart';
part 'model/position_type.dart';
part 'model/price_level.dart';
part 'model/response_envelope.dart';
part 'model/response_envelope_of_list_assets.dart';
part 'model/revoke_api_key_data.dart';
part 'model/revoke_api_key_response_envelope.dart';
part 'model/settle_leverage_accrued_interest.dart';
part 'model/settle_leverage_accrued_interest_request.dart';
part 'model/settle_leverage_accrued_interest_response_envelope.dart';
part 'model/side.dart';
part 'model/stream_assets_entry.dart';
part 'model/stream_candles_entry.dart';
part 'model/stream_entry.dart';
part 'model/stream_order_book_balance_entry.dart';
part 'model/stream_order_updates_entry.dart';
part 'model/stream_orders_entry.dart';
part 'model/stream_positions_entry.dart';
part 'model/stream_trades_entry.dart';
part 'model/stream_transactions_entry.dart';
part 'model/stream_user_coupon_payments_entry.dart';
part 'model/stream_user_coupon_payments_response.dart';
part 'model/supply.dart';
part 'model/supply_request.dart';
part 'model/supply_response_envelope.dart';
part 'model/trade.dart';
part 'model/trade_request_error.dart';
part 'model/trade_response_envelope.dart';
part 'model/transaction.dart';
part 'model/transaction_kind.dart';
part 'model/transaction_request_error.dart';
part 'model/transaction_response_envelope.dart';
part 'model/transfer_balances_request.dart';
part 'model/transfer_balances_response_envelope.dart';
part 'model/transformed_assets.dart';
part 'model/trigger_type.dart';
part 'model/unite_position_request.dart';
part 'model/unite_position_response_envelope.dart';
part 'model/united_position.dart';
part 'model/update_field_boolean.dart';
part 'model/update_field_string.dart';
part 'model/update_roles_string.dart';
part 'model/update_user_config_request.dart';
part 'model/user.dart';
part 'model/user_balance_response_envelope.dart';
part 'model/user_config.dart';
part 'model/user_config_response_envelope.dart';
part 'model/user_coupon_payment.dart';
part 'model/user_coupon_payment_asset_summary.dart';
part 'model/user_coupon_payments_response_data.dart';
part 'model/user_created_response_envelope.dart';
part 'model/user_deleted_response_envelope.dart';
part 'model/user_envelope.dart';
part 'model/user_exists_response.dart';
part 'model/user_interest.dart';
part 'model/user_interest_response_envelope.dart';
part 'model/user_position_response_envelope.dart';
part 'model/user_role.dart';
part 'model/user_updated_response_envelope.dart';
part 'model/user_value.dart';
part 'model/user_value_response_envelope.dart';
part 'model/validate_submit_order_request.dart';
part 'model/validate_submit_order_response.dart';
part 'model/withdraw.dart';
part 'model/withdraw_request.dart';
part 'model/withdraw_response_envelope.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
