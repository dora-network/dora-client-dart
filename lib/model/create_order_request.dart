//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateOrderRequest {
  /// Returns a new [CreateOrderRequest] instance.
  CreateOrderRequest({
    required this.quantity,
    required this.inverseLeverage,
    this.price,
    required this.kind,
    required this.side,
    required this.fromGlobalPosition,
    required this.orderBookId,
    this.orderModifiers = const [],
    this.goodTillDate,
    this.clientOrderId,
    this.stopLossPrice,
    this.takeProfitPrice,
  });

  String quantity;

  String inverseLeverage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? price;

  OrderKind kind;

  /// Required: Must be either 'BUY' or 'SELL'
  Side side;

  /// use global position for the order or isolated. required.
  bool fromGlobalPosition;

  /// Required: the order book to submit the order to
  String orderBookId;

  List<OrderModifierKind> orderModifiers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? goodTillDate;

  /// An optional client-provided identifier for the order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientOrderId;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateOrderRequest &&
    other.quantity == quantity &&
    other.inverseLeverage == inverseLeverage &&
    other.price == price &&
    other.kind == kind &&
    other.side == side &&
    other.fromGlobalPosition == fromGlobalPosition &&
    other.orderBookId == orderBookId &&
    _deepEquality.equals(other.orderModifiers, orderModifiers) &&
    other.goodTillDate == goodTillDate &&
    other.clientOrderId == clientOrderId &&
    other.stopLossPrice == stopLossPrice &&
    other.takeProfitPrice == takeProfitPrice;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quantity.hashCode) +
    (inverseLeverage.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (kind.hashCode) +
    (side.hashCode) +
    (fromGlobalPosition.hashCode) +
    (orderBookId.hashCode) +
    (orderModifiers.hashCode) +
    (goodTillDate == null ? 0 : goodTillDate!.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId!.hashCode) +
    (stopLossPrice == null ? 0 : stopLossPrice!.hashCode) +
    (takeProfitPrice == null ? 0 : takeProfitPrice!.hashCode);

  @override
  String toString() => 'CreateOrderRequest[quantity=$quantity, inverseLeverage=$inverseLeverage, price=$price, kind=$kind, side=$side, fromGlobalPosition=$fromGlobalPosition, orderBookId=$orderBookId, orderModifiers=$orderModifiers, goodTillDate=$goodTillDate, clientOrderId=$clientOrderId, stopLossPrice=$stopLossPrice, takeProfitPrice=$takeProfitPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quantity'] = this.quantity;
      json[r'inverse_leverage'] = this.inverseLeverage;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
      json[r'kind'] = this.kind;
      json[r'side'] = this.side;
      json[r'from_global_position'] = this.fromGlobalPosition;
      json[r'order_book_id'] = this.orderBookId;
      json[r'order_modifiers'] = this.orderModifiers;
    if (this.goodTillDate != null) {
      json[r'good_till_date'] = this.goodTillDate!.toUtc().toIso8601String();
    } else {
      json[r'good_till_date'] = null;
    }
    if (this.clientOrderId != null) {
      json[r'client_order_id'] = this.clientOrderId;
    } else {
      json[r'client_order_id'] = null;
    }
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
    return json;
  }

  /// Returns a new [CreateOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateOrderRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateOrderRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateOrderRequest(
        quantity: mapValueOfType<String>(json, r'quantity')!,
        inverseLeverage: mapValueOfType<String>(json, r'inverse_leverage')!,
        price: mapValueOfType<String>(json, r'price'),
        kind: OrderKind.fromJson(json[r'kind'])!,
        side: Side.fromJson(json[r'side'])!,
        fromGlobalPosition: mapValueOfType<bool>(json, r'from_global_position')!,
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        orderModifiers: OrderModifierKind.listFromJson(json[r'order_modifiers']),
        goodTillDate: mapDateTime(json, r'good_till_date', r''),
        clientOrderId: mapValueOfType<String>(json, r'client_order_id'),
        stopLossPrice: mapValueOfType<String>(json, r'stop_loss_price'),
        takeProfitPrice: mapValueOfType<String>(json, r'take_profit_price'),
      );
    }
    return null;
  }

  static List<CreateOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateOrderRequest> mapFromJson(dynamic json) {
    final map = <String, CreateOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateOrderRequest-objects as value to a dart map
  static Map<String, List<CreateOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quantity',
    'inverse_leverage',
    'kind',
    'side',
    'from_global_position',
    'order_book_id',
  };
}

