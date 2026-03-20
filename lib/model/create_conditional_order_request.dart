//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConditionalOrderRequest {
  /// Returns a new [CreateConditionalOrderRequest] instance.
  CreateConditionalOrderRequest({
    required this.price,
    required this.orderBookId,
    required this.positionId,
    required this.assetId,
    this.stopLossPrice,
    this.takeProfitPrice,
  });

  double price;

  /// Required: the order book to submit the order to
  String orderBookId;

  /// Required: the position to submit the order to
  String positionId;

  /// Required: the asset to submit the order to
  String assetId;

  /// Stop loss price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? stopLossPrice;

  /// Take profit price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? takeProfitPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConditionalOrderRequest &&
    other.price == price &&
    other.orderBookId == orderBookId &&
    other.positionId == positionId &&
    other.assetId == assetId &&
    other.stopLossPrice == stopLossPrice &&
    other.takeProfitPrice == takeProfitPrice;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (price.hashCode) +
    (orderBookId.hashCode) +
    (positionId.hashCode) +
    (assetId.hashCode) +
    (stopLossPrice == null ? 0 : stopLossPrice!.hashCode) +
    (takeProfitPrice == null ? 0 : takeProfitPrice!.hashCode);

  @override
  String toString() => 'CreateConditionalOrderRequest[price=$price, orderBookId=$orderBookId, positionId=$positionId, assetId=$assetId, stopLossPrice=$stopLossPrice, takeProfitPrice=$takeProfitPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'price'] = this.price;
      json[r'order_book_id'] = this.orderBookId;
      json[r'position_id'] = this.positionId;
      json[r'asset_id'] = this.assetId;
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

  /// Returns a new [CreateConditionalOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConditionalOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConditionalOrderRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConditionalOrderRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConditionalOrderRequest(
        price: mapValueOfType<double>(json, r'price')!,
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        stopLossPrice: mapValueOfType<double>(json, r'stop_loss_price'),
        takeProfitPrice: mapValueOfType<double>(json, r'take_profit_price'),
      );
    }
    return null;
  }

  static List<CreateConditionalOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConditionalOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConditionalOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConditionalOrderRequest> mapFromJson(dynamic json) {
    final map = <String, CreateConditionalOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConditionalOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConditionalOrderRequest-objects as value to a dart map
  static Map<String, List<CreateConditionalOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConditionalOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConditionalOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'price',
    'order_book_id',
    'position_id',
    'asset_id',
  };
}

