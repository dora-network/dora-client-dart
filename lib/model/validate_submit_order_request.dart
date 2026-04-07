//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateSubmitOrderRequest {
  /// Returns a new [ValidateSubmitOrderRequest] instance.
  ValidateSubmitOrderRequest({
    required this.quantity,
    required this.tick,
    required this.kind,
    this.side,
    required this.price,
    this.goodTillDate,
    required this.inverseLeverage,
    required this.userBalance,
    this.baseAssetId,
    this.quoteAssetId,
    this.clientOrderId,
    this.positionAssets = const [],
    this.assetsConfig = const [],
    this.stopLossPrice,
    this.takeProfitPrice,
    this.restrictions,
    this.initialCapital,
  });

  String quantity;

  /// Minimum tradable increment for the selected order book
  String tick;

  /// Must be LIMIT or MARKET
  OrderKind kind;

  /// Must be BUY or SELL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Side? side;

  /// If kind is LIMIT, must be > 0; if MARKET it must be 0 or omitted
  String price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? goodTillDate;

  String inverseLeverage;

  /// User balance used to ensure they can afford the requested quantity
  String userBalance;

  /// base asset of orderbook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseAssetId;

  /// quote asset of orderbook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? quoteAssetId;

  /// An optional client-provided identifier for the order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientOrderId;

  /// Full list of assets in the position with their price and collateral weight, required when inverse_leverage < 1 for leverage health checks
  List<PositionAsset> positionAssets;

  /// Configuration for the assets in the order
  List<AssetConfig> assetsConfig;

  /// Stop loss price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stopLossPrice;

  /// Take profit price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? takeProfitPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TenantRestrictions? restrictions;

  /// Initial capital value in USD only used to validate sells with leverage
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? initialCapital;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateSubmitOrderRequest &&
    other.quantity == quantity &&
    other.tick == tick &&
    other.kind == kind &&
    other.side == side &&
    other.price == price &&
    other.goodTillDate == goodTillDate &&
    other.inverseLeverage == inverseLeverage &&
    other.userBalance == userBalance &&
    other.baseAssetId == baseAssetId &&
    other.quoteAssetId == quoteAssetId &&
    other.clientOrderId == clientOrderId &&
    _deepEquality.equals(other.positionAssets, positionAssets) &&
    _deepEquality.equals(other.assetsConfig, assetsConfig) &&
    other.stopLossPrice == stopLossPrice &&
    other.takeProfitPrice == takeProfitPrice &&
    other.restrictions == restrictions &&
    other.initialCapital == initialCapital;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quantity.hashCode) +
    (tick.hashCode) +
    (kind.hashCode) +
    (side == null ? 0 : side!.hashCode) +
    (price.hashCode) +
    (goodTillDate == null ? 0 : goodTillDate!.hashCode) +
    (inverseLeverage.hashCode) +
    (userBalance.hashCode) +
    (baseAssetId == null ? 0 : baseAssetId!.hashCode) +
    (quoteAssetId == null ? 0 : quoteAssetId!.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId!.hashCode) +
    (positionAssets.hashCode) +
    (assetsConfig.hashCode) +
    (stopLossPrice == null ? 0 : stopLossPrice!.hashCode) +
    (takeProfitPrice == null ? 0 : takeProfitPrice!.hashCode) +
    (restrictions == null ? 0 : restrictions!.hashCode) +
    (initialCapital == null ? 0 : initialCapital!.hashCode);

  @override
  String toString() => 'ValidateSubmitOrderRequest[quantity=$quantity, tick=$tick, kind=$kind, side=$side, price=$price, goodTillDate=$goodTillDate, inverseLeverage=$inverseLeverage, userBalance=$userBalance, baseAssetId=$baseAssetId, quoteAssetId=$quoteAssetId, clientOrderId=$clientOrderId, positionAssets=$positionAssets, assetsConfig=$assetsConfig, stopLossPrice=$stopLossPrice, takeProfitPrice=$takeProfitPrice, restrictions=$restrictions, initialCapital=$initialCapital]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quantity'] = this.quantity;
      json[r'tick'] = this.tick;
      json[r'kind'] = this.kind;
    if (this.side != null) {
      json[r'side'] = this.side;
    } else {
      json[r'side'] = null;
    }
      json[r'price'] = this.price;
    if (this.goodTillDate != null) {
      json[r'good_till_date'] = this.goodTillDate!.toUtc().toIso8601String();
    } else {
      json[r'good_till_date'] = null;
    }
      json[r'inverse_leverage'] = this.inverseLeverage;
      json[r'user_balance'] = this.userBalance;
    if (this.baseAssetId != null) {
      json[r'base_asset_id'] = this.baseAssetId;
    } else {
      json[r'base_asset_id'] = null;
    }
    if (this.quoteAssetId != null) {
      json[r'quote_asset_id'] = this.quoteAssetId;
    } else {
      json[r'quote_asset_id'] = null;
    }
    if (this.clientOrderId != null) {
      json[r'client_order_id'] = this.clientOrderId;
    } else {
      json[r'client_order_id'] = null;
    }
      json[r'position_assets'] = this.positionAssets;
      json[r'assets_config'] = this.assetsConfig;
    if (this.stopLossPrice != null) {
      json[r'stop_loss_price'] = this.stopLossPrice;
    } else {
      json[r'stop_loss_price'] = null;
    }
    if (this.takeProfitPrice != null) {
      json[r'take_profit_price'] = this.takeProfitPrice;
    } else {
      json[r'take_profit_price'] = null;
    }
    if (this.restrictions != null) {
      json[r'restrictions'] = this.restrictions;
    } else {
      json[r'restrictions'] = null;
    }
    if (this.initialCapital != null) {
      json[r'initial_capital'] = this.initialCapital;
    } else {
      json[r'initial_capital'] = null;
    }
    return json;
  }

  /// Returns a new [ValidateSubmitOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateSubmitOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateSubmitOrderRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateSubmitOrderRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateSubmitOrderRequest(
        quantity: mapValueOfType<String>(json, r'quantity')!,
        tick: mapValueOfType<String>(json, r'tick')!,
        kind: OrderKind.fromJson(json[r'kind'])!,
        side: Side.fromJson(json[r'side']),
        price: mapValueOfType<String>(json, r'price')!,
        goodTillDate: mapDateTime(json, r'good_till_date', r''),
        inverseLeverage: mapValueOfType<String>(json, r'inverse_leverage')!,
        userBalance: mapValueOfType<String>(json, r'user_balance')!,
        baseAssetId: mapValueOfType<String>(json, r'base_asset_id'),
        quoteAssetId: mapValueOfType<String>(json, r'quote_asset_id'),
        clientOrderId: mapValueOfType<String>(json, r'client_order_id'),
        positionAssets: PositionAsset.listFromJson(json[r'position_assets']),
        assetsConfig: AssetConfig.listFromJson(json[r'assets_config']),
        stopLossPrice: mapValueOfType<String>(json, r'stop_loss_price'),
        takeProfitPrice: mapValueOfType<String>(json, r'take_profit_price'),
        restrictions: TenantRestrictions.fromJson(json[r'restrictions']),
        initialCapital: mapValueOfType<String>(json, r'initial_capital'),
      );
    }
    return null;
  }

  static List<ValidateSubmitOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateSubmitOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateSubmitOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateSubmitOrderRequest> mapFromJson(dynamic json) {
    final map = <String, ValidateSubmitOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateSubmitOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateSubmitOrderRequest-objects as value to a dart map
  static Map<String, List<ValidateSubmitOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateSubmitOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateSubmitOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quantity',
    'tick',
    'kind',
    'price',
    'inverse_leverage',
    'user_balance',
  };
}

