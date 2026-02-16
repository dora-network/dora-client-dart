//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderBook {
  /// Returns a new [OrderBook] instance.
  OrderBook({
    required this.orderBookId,
    this.orderBookSeq,
    required this.baseQuantity,
    required this.baseAssetId,
    required this.createdAt,
    required this.displayName,
    required this.baseAssetFractionalizedUnits,
    required this.quoteAssetFractionalizedUnits,
    required this.feeFactor,
    required this.initialAssetsRatio,
    required this.maturityAt,
    required this.quoteQuantity,
    required this.quoteAssetId,
    required this.sharesQuantity,
    required this.status,
    required this.tickSize,
    required this.updatedAt,
    this.haltedAt,
    this.terminatedAt,
    this.poolUpdatedAt,
    required this.sharesAssetId,
  });

  String orderBookId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderBookSeq;

  /// Minimum value: 0
  num baseQuantity;

  String baseAssetId;

  DateTime createdAt;

  String displayName;

  /// Minimum value: 0
  int baseAssetFractionalizedUnits;

  /// Minimum value: 0
  int quoteAssetFractionalizedUnits;

  /// Minimum value: 0
  /// Maximum value: 1
  num feeFactor;

  /// Minimum value: 0
  /// Maximum value: 1
  num initialAssetsRatio;

  DateTime maturityAt;

  /// Minimum value: 0
  num quoteQuantity;

  String quoteAssetId;

  /// Minimum value: 0
  num sharesQuantity;

  OrderBookStatus status;

  /// Minimum value: 0
  num tickSize;

  DateTime updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? haltedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? terminatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? poolUpdatedAt;

  String sharesAssetId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBook &&
    other.orderBookId == orderBookId &&
    other.orderBookSeq == orderBookSeq &&
    other.baseQuantity == baseQuantity &&
    other.baseAssetId == baseAssetId &&
    other.createdAt == createdAt &&
    other.displayName == displayName &&
    other.baseAssetFractionalizedUnits == baseAssetFractionalizedUnits &&
    other.quoteAssetFractionalizedUnits == quoteAssetFractionalizedUnits &&
    other.feeFactor == feeFactor &&
    other.initialAssetsRatio == initialAssetsRatio &&
    other.maturityAt == maturityAt &&
    other.quoteQuantity == quoteQuantity &&
    other.quoteAssetId == quoteAssetId &&
    other.sharesQuantity == sharesQuantity &&
    other.status == status &&
    other.tickSize == tickSize &&
    other.updatedAt == updatedAt &&
    other.haltedAt == haltedAt &&
    other.terminatedAt == terminatedAt &&
    other.poolUpdatedAt == poolUpdatedAt &&
    other.sharesAssetId == sharesAssetId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (orderBookSeq == null ? 0 : orderBookSeq!.hashCode) +
    (baseQuantity.hashCode) +
    (baseAssetId.hashCode) +
    (createdAt.hashCode) +
    (displayName.hashCode) +
    (baseAssetFractionalizedUnits.hashCode) +
    (quoteAssetFractionalizedUnits.hashCode) +
    (feeFactor.hashCode) +
    (initialAssetsRatio.hashCode) +
    (maturityAt.hashCode) +
    (quoteQuantity.hashCode) +
    (quoteAssetId.hashCode) +
    (sharesQuantity.hashCode) +
    (status.hashCode) +
    (tickSize.hashCode) +
    (updatedAt.hashCode) +
    (haltedAt == null ? 0 : haltedAt!.hashCode) +
    (terminatedAt == null ? 0 : terminatedAt!.hashCode) +
    (poolUpdatedAt == null ? 0 : poolUpdatedAt!.hashCode) +
    (sharesAssetId.hashCode);

  @override
  String toString() => 'OrderBook[orderBookId=$orderBookId, orderBookSeq=$orderBookSeq, baseQuantity=$baseQuantity, baseAssetId=$baseAssetId, createdAt=$createdAt, displayName=$displayName, baseAssetFractionalizedUnits=$baseAssetFractionalizedUnits, quoteAssetFractionalizedUnits=$quoteAssetFractionalizedUnits, feeFactor=$feeFactor, initialAssetsRatio=$initialAssetsRatio, maturityAt=$maturityAt, quoteQuantity=$quoteQuantity, quoteAssetId=$quoteAssetId, sharesQuantity=$sharesQuantity, status=$status, tickSize=$tickSize, updatedAt=$updatedAt, haltedAt=$haltedAt, terminatedAt=$terminatedAt, poolUpdatedAt=$poolUpdatedAt, sharesAssetId=$sharesAssetId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
    if (this.orderBookSeq != null) {
      json[r'order_book_seq'] = this.orderBookSeq;
    } else {
      json[r'order_book_seq'] = null;
    }
      json[r'base_quantity'] = this.baseQuantity;
      json[r'base_asset_id'] = this.baseAssetId;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'display_name'] = this.displayName;
      json[r'base_asset_fractionalized_units'] = this.baseAssetFractionalizedUnits;
      json[r'quote_asset_fractionalized_units'] = this.quoteAssetFractionalizedUnits;
      json[r'fee_factor'] = this.feeFactor;
      json[r'initial_assets_ratio'] = this.initialAssetsRatio;
      json[r'maturity_at'] = this.maturityAt.toUtc().toIso8601String();
      json[r'quote_quantity'] = this.quoteQuantity;
      json[r'quote_asset_id'] = this.quoteAssetId;
      json[r'shares_quantity'] = this.sharesQuantity;
      json[r'status'] = this.status;
      json[r'tick_size'] = this.tickSize;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    if (this.haltedAt != null) {
      json[r'halted_at'] = this.haltedAt!.toUtc().toIso8601String();
    } else {
      json[r'halted_at'] = null;
    }
    if (this.terminatedAt != null) {
      json[r'terminated_at'] = this.terminatedAt!.toUtc().toIso8601String();
    } else {
      json[r'terminated_at'] = null;
    }
    if (this.poolUpdatedAt != null) {
      json[r'pool_updated_at'] = this.poolUpdatedAt!.toUtc().toIso8601String();
    } else {
      json[r'pool_updated_at'] = null;
    }
      json[r'shares_asset_id'] = this.sharesAssetId;
    return json;
  }

  /// Returns a new [OrderBook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderBook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderBook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderBook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderBook(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        orderBookSeq: mapValueOfType<int>(json, r'order_book_seq'),
        baseQuantity: num.parse('${json[r'base_quantity']}'),
        baseAssetId: mapValueOfType<String>(json, r'base_asset_id')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        baseAssetFractionalizedUnits: mapValueOfType<int>(json, r'base_asset_fractionalized_units')!,
        quoteAssetFractionalizedUnits: mapValueOfType<int>(json, r'quote_asset_fractionalized_units')!,
        feeFactor: num.parse('${json[r'fee_factor']}'),
        initialAssetsRatio: num.parse('${json[r'initial_assets_ratio']}'),
        maturityAt: mapDateTime(json, r'maturity_at', r'')!,
        quoteQuantity: num.parse('${json[r'quote_quantity']}'),
        quoteAssetId: mapValueOfType<String>(json, r'quote_asset_id')!,
        sharesQuantity: num.parse('${json[r'shares_quantity']}'),
        status: OrderBookStatus.fromJson(json[r'status'])!,
        tickSize: num.parse('${json[r'tick_size']}'),
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        haltedAt: mapDateTime(json, r'halted_at', r''),
        terminatedAt: mapDateTime(json, r'terminated_at', r''),
        poolUpdatedAt: mapDateTime(json, r'pool_updated_at', r''),
        sharesAssetId: mapValueOfType<String>(json, r'shares_asset_id')!,
      );
    }
    return null;
  }

  static List<OrderBook> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderBook> mapFromJson(dynamic json) {
    final map = <String, OrderBook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderBook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderBook-objects as value to a dart map
  static Map<String, List<OrderBook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderBook>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderBook.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_book_id',
    'base_quantity',
    'base_asset_id',
    'created_at',
    'display_name',
    'base_asset_fractionalized_units',
    'quote_asset_fractionalized_units',
    'fee_factor',
    'initial_assets_ratio',
    'maturity_at',
    'quote_quantity',
    'quote_asset_id',
    'shares_quantity',
    'status',
    'tick_size',
    'updated_at',
    'shares_asset_id',
  };
}

