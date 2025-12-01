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
    this.orderBookId,
    this.baseQuantity,
    this.baseAssetId,
    this.createdAt,
    this.displayName,
    this.feeFactor,
    this.initialAssetsRatio,
    this.maturityAt,
    this.quoteQuantity,
    this.quoteAssetId,
    this.sharesQuantity,
    this.status,
    this.tickSize,
    this.updatedAt,
    this.haltedAt,
    this.terminatedAt,
    this.poolUpdatedAt,
    this.sharesAssetId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderBookId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? baseQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseAssetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? feeFactor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? initialAssetsRatio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? maturityAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? quoteQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? quoteAssetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sharesQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrderBookStatus? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? tickSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sharesAssetId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBook &&
    other.orderBookId == orderBookId &&
    other.baseQuantity == baseQuantity &&
    other.baseAssetId == baseAssetId &&
    other.createdAt == createdAt &&
    other.displayName == displayName &&
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
    (orderBookId == null ? 0 : orderBookId!.hashCode) +
    (baseQuantity == null ? 0 : baseQuantity!.hashCode) +
    (baseAssetId == null ? 0 : baseAssetId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (feeFactor == null ? 0 : feeFactor!.hashCode) +
    (initialAssetsRatio == null ? 0 : initialAssetsRatio!.hashCode) +
    (maturityAt == null ? 0 : maturityAt!.hashCode) +
    (quoteQuantity == null ? 0 : quoteQuantity!.hashCode) +
    (quoteAssetId == null ? 0 : quoteAssetId!.hashCode) +
    (sharesQuantity == null ? 0 : sharesQuantity!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (tickSize == null ? 0 : tickSize!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (haltedAt == null ? 0 : haltedAt!.hashCode) +
    (terminatedAt == null ? 0 : terminatedAt!.hashCode) +
    (poolUpdatedAt == null ? 0 : poolUpdatedAt!.hashCode) +
    (sharesAssetId == null ? 0 : sharesAssetId!.hashCode);

  @override
  String toString() => 'OrderBook[orderBookId=$orderBookId, baseQuantity=$baseQuantity, baseAssetId=$baseAssetId, createdAt=$createdAt, displayName=$displayName, feeFactor=$feeFactor, initialAssetsRatio=$initialAssetsRatio, maturityAt=$maturityAt, quoteQuantity=$quoteQuantity, quoteAssetId=$quoteAssetId, sharesQuantity=$sharesQuantity, status=$status, tickSize=$tickSize, updatedAt=$updatedAt, haltedAt=$haltedAt, terminatedAt=$terminatedAt, poolUpdatedAt=$poolUpdatedAt, sharesAssetId=$sharesAssetId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orderBookId != null) {
      json[r'order_book_id'] = this.orderBookId;
    } else {
      json[r'order_book_id'] = null;
    }
    if (this.baseQuantity != null) {
      json[r'base_quantity'] = this.baseQuantity;
    } else {
      json[r'base_quantity'] = null;
    }
    if (this.baseAssetId != null) {
      json[r'base_asset_id'] = this.baseAssetId;
    } else {
      json[r'base_asset_id'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.displayName != null) {
      json[r'display_name'] = this.displayName;
    } else {
      json[r'display_name'] = null;
    }
    if (this.feeFactor != null) {
      json[r'fee_factor'] = this.feeFactor;
    } else {
      json[r'fee_factor'] = null;
    }
    if (this.initialAssetsRatio != null) {
      json[r'initial_assets_ratio'] = this.initialAssetsRatio;
    } else {
      json[r'initial_assets_ratio'] = null;
    }
    if (this.maturityAt != null) {
      json[r'maturity_at'] = this.maturityAt!.toUtc().toIso8601String();
    } else {
      json[r'maturity_at'] = null;
    }
    if (this.quoteQuantity != null) {
      json[r'quote_quantity'] = this.quoteQuantity;
    } else {
      json[r'quote_quantity'] = null;
    }
    if (this.quoteAssetId != null) {
      json[r'quote_asset_id'] = this.quoteAssetId;
    } else {
      json[r'quote_asset_id'] = null;
    }
    if (this.sharesQuantity != null) {
      json[r'shares_quantity'] = this.sharesQuantity;
    } else {
      json[r'shares_quantity'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.tickSize != null) {
      json[r'tick_size'] = this.tickSize;
    } else {
      json[r'tick_size'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
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
    if (this.sharesAssetId != null) {
      json[r'shares_asset_id'] = this.sharesAssetId;
    } else {
      json[r'shares_asset_id'] = null;
    }
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
        orderBookId: mapValueOfType<String>(json, r'order_book_id'),
        baseQuantity: num.parse('${json[r'base_quantity']}'),
        baseAssetId: mapValueOfType<String>(json, r'base_asset_id'),
        createdAt: mapDateTime(json, r'created_at', r''),
        displayName: mapValueOfType<String>(json, r'display_name'),
        feeFactor: num.parse('${json[r'fee_factor']}'),
        initialAssetsRatio: num.parse('${json[r'initial_assets_ratio']}'),
        maturityAt: mapDateTime(json, r'maturity_at', r''),
        quoteQuantity: num.parse('${json[r'quote_quantity']}'),
        quoteAssetId: mapValueOfType<String>(json, r'quote_asset_id'),
        sharesQuantity: num.parse('${json[r'shares_quantity']}'),
        status: OrderBookStatus.fromJson(json[r'status']),
        tickSize: num.parse('${json[r'tick_size']}'),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        haltedAt: mapDateTime(json, r'halted_at', r''),
        terminatedAt: mapDateTime(json, r'terminated_at', r''),
        poolUpdatedAt: mapDateTime(json, r'pool_updated_at', r''),
        sharesAssetId: mapValueOfType<String>(json, r'shares_asset_id'),
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
  };
}

