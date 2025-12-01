//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Position {
  /// Returns a new [Position] instance.
  Position({
    this.id,
    this.assetId,
    this.seq,
    this.isGlobal,
    this.available,
    this.locked,
    this.supplied,
    this.collateral,
    this.suppliedCollateral,
    this.borrowed,
    this.impendingBorrows,
    this.avgEntryPrice,
    this.borrowLimit,
    this.liquidationThreshold,
    this.createdAt,
    this.positionName,
  });

  /// The unique identifier for the position. Used, for example, when creating an order from a position, or deciding collateral should be transferred from position A to position B.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGlobal;

  /// The available balance in the position for this asset that are not locked, supplied, or used as collateral
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? available;

  /// The balance that has been reserved for a current order. If spent by the order, they are removed. If the order is cancelled, they are returned to the position's available balance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? locked;

  /// The balance that user has supplied to the leverage module. The user remains entitled to these assets and can withdraw them into their available balance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? supplied;

  /// The balance that has been locked or supplied, but are marked as collateral to support borrow limits and can be consumed in case of liquidation. When unmarked as collateral, the balance returns to the available balance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? collateral;

  /// The balance that have been supplied to the leverage module and marked as collateral. The user remains entitled to this balance and can withdraw it into the collateral balance, or unmark them as collateral and move them to the supplied balance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? suppliedCollateral;

  /// The total amount of debt outstanding for this position. The position's collateral + supplied_collateral must support a borrow limit sufficient to cover all borrowed assets. This position cannot be closed until all debt is fully repaid, i.e. borrowed = 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? borrowed;

  /// The equivalent of locked balances, but for leveraged orders. If a user has an active order that would borrow assets as part of its input, then their borrow limit must be reduced until the order is executed or cancelled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? impendingBorrows;

  /// average cost per unit quantity that was paid (long positions) or received (short positions) for this asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? avgEntryPrice;

  /// The borrow limit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? borrowLimit;

  /// The borrow limit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? liquidationThreshold;

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
  String? positionName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Position &&
    other.id == id &&
    other.assetId == assetId &&
    other.seq == seq &&
    other.isGlobal == isGlobal &&
    other.available == available &&
    other.locked == locked &&
    other.supplied == supplied &&
    other.collateral == collateral &&
    other.suppliedCollateral == suppliedCollateral &&
    other.borrowed == borrowed &&
    other.impendingBorrows == impendingBorrows &&
    other.avgEntryPrice == avgEntryPrice &&
    other.borrowLimit == borrowLimit &&
    other.liquidationThreshold == liquidationThreshold &&
    other.createdAt == createdAt &&
    other.positionName == positionName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (isGlobal == null ? 0 : isGlobal!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (supplied == null ? 0 : supplied!.hashCode) +
    (collateral == null ? 0 : collateral!.hashCode) +
    (suppliedCollateral == null ? 0 : suppliedCollateral!.hashCode) +
    (borrowed == null ? 0 : borrowed!.hashCode) +
    (impendingBorrows == null ? 0 : impendingBorrows!.hashCode) +
    (avgEntryPrice == null ? 0 : avgEntryPrice!.hashCode) +
    (borrowLimit == null ? 0 : borrowLimit!.hashCode) +
    (liquidationThreshold == null ? 0 : liquidationThreshold!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (positionName == null ? 0 : positionName!.hashCode);

  @override
  String toString() => 'Position[id=$id, assetId=$assetId, seq=$seq, isGlobal=$isGlobal, available=$available, locked=$locked, supplied=$supplied, collateral=$collateral, suppliedCollateral=$suppliedCollateral, borrowed=$borrowed, impendingBorrows=$impendingBorrows, avgEntryPrice=$avgEntryPrice, borrowLimit=$borrowLimit, liquidationThreshold=$liquidationThreshold, createdAt=$createdAt, positionName=$positionName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.isGlobal != null) {
      json[r'is_global'] = this.isGlobal;
    } else {
      json[r'is_global'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.supplied != null) {
      json[r'supplied'] = this.supplied;
    } else {
      json[r'supplied'] = null;
    }
    if (this.collateral != null) {
      json[r'collateral'] = this.collateral;
    } else {
      json[r'collateral'] = null;
    }
    if (this.suppliedCollateral != null) {
      json[r'supplied_collateral'] = this.suppliedCollateral;
    } else {
      json[r'supplied_collateral'] = null;
    }
    if (this.borrowed != null) {
      json[r'borrowed'] = this.borrowed;
    } else {
      json[r'borrowed'] = null;
    }
    if (this.impendingBorrows != null) {
      json[r'impending_borrows'] = this.impendingBorrows;
    } else {
      json[r'impending_borrows'] = null;
    }
    if (this.avgEntryPrice != null) {
      json[r'avg_entry_price'] = this.avgEntryPrice;
    } else {
      json[r'avg_entry_price'] = null;
    }
    if (this.borrowLimit != null) {
      json[r'borrow_limit'] = this.borrowLimit;
    } else {
      json[r'borrow_limit'] = null;
    }
    if (this.liquidationThreshold != null) {
      json[r'liquidation_threshold'] = this.liquidationThreshold;
    } else {
      json[r'liquidation_threshold'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.positionName != null) {
      json[r'position_name'] = this.positionName;
    } else {
      json[r'position_name'] = null;
    }
    return json;
  }

  /// Returns a new [Position] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Position? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Position[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Position[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Position(
        id: mapValueOfType<String>(json, r'id'),
        assetId: mapValueOfType<String>(json, r'asset_id'),
        seq: mapValueOfType<int>(json, r'seq'),
        isGlobal: mapValueOfType<bool>(json, r'is_global'),
        available: mapValueOfType<double>(json, r'available'),
        locked: mapValueOfType<double>(json, r'locked'),
        supplied: mapValueOfType<double>(json, r'supplied'),
        collateral: mapValueOfType<double>(json, r'collateral'),
        suppliedCollateral: mapValueOfType<double>(json, r'supplied_collateral'),
        borrowed: mapValueOfType<double>(json, r'borrowed'),
        impendingBorrows: mapValueOfType<double>(json, r'impending_borrows'),
        avgEntryPrice: mapValueOfType<double>(json, r'avg_entry_price'),
        borrowLimit: mapValueOfType<double>(json, r'borrow_limit'),
        liquidationThreshold: mapValueOfType<double>(json, r'liquidation_threshold'),
        createdAt: mapDateTime(json, r'created_at', r''),
        positionName: mapValueOfType<String>(json, r'position_name'),
      );
    }
    return null;
  }

  static List<Position> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Position>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Position.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Position> mapFromJson(dynamic json) {
    final map = <String, Position>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Position.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Position-objects as value to a dart map
  static Map<String, List<Position>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Position>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Position.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

