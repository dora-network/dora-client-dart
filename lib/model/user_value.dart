//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserValue {
  /// Returns a new [UserValue] instance.
  UserValue({
    this.available = const {},
    this.locked = const {},
    this.borrowed = const {},
    this.supplied = const {},
    this.impendingBorrows = const {},
    this.borrowLimit = const {},
    this.liquidationThreshold = const {},
    this.notionalLong = const {},
    this.notionalShort = const {},
    this.portfolioValue = const {},
    this.netLiquidationValue = const {},
    this.unrealizedPnl = const {},
    this.realizedPnl = const {},
  });

  Map<String, String> available;

  Map<String, String> locked;

  Map<String, String> borrowed;

  Map<String, String> supplied;

  Map<String, String> impendingBorrows;

  Map<String, String> borrowLimit;

  Map<String, String> liquidationThreshold;

  Map<String, String> notionalLong;

  Map<String, String> notionalShort;

  Map<String, String> portfolioValue;

  Map<String, String> netLiquidationValue;

  Map<String, String> unrealizedPnl;

  Map<String, String> realizedPnl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserValue &&
    _deepEquality.equals(other.available, available) &&
    _deepEquality.equals(other.locked, locked) &&
    _deepEquality.equals(other.borrowed, borrowed) &&
    _deepEquality.equals(other.supplied, supplied) &&
    _deepEquality.equals(other.impendingBorrows, impendingBorrows) &&
    _deepEquality.equals(other.borrowLimit, borrowLimit) &&
    _deepEquality.equals(other.liquidationThreshold, liquidationThreshold) &&
    _deepEquality.equals(other.notionalLong, notionalLong) &&
    _deepEquality.equals(other.notionalShort, notionalShort) &&
    _deepEquality.equals(other.portfolioValue, portfolioValue) &&
    _deepEquality.equals(other.netLiquidationValue, netLiquidationValue) &&
    _deepEquality.equals(other.unrealizedPnl, unrealizedPnl) &&
    _deepEquality.equals(other.realizedPnl, realizedPnl);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available.hashCode) +
    (locked.hashCode) +
    (borrowed.hashCode) +
    (supplied.hashCode) +
    (impendingBorrows.hashCode) +
    (borrowLimit.hashCode) +
    (liquidationThreshold.hashCode) +
    (notionalLong.hashCode) +
    (notionalShort.hashCode) +
    (portfolioValue.hashCode) +
    (netLiquidationValue.hashCode) +
    (unrealizedPnl.hashCode) +
    (realizedPnl.hashCode);

  @override
  String toString() => 'UserValue[available=$available, locked=$locked, borrowed=$borrowed, supplied=$supplied, impendingBorrows=$impendingBorrows, borrowLimit=$borrowLimit, liquidationThreshold=$liquidationThreshold, notionalLong=$notionalLong, notionalShort=$notionalShort, portfolioValue=$portfolioValue, netLiquidationValue=$netLiquidationValue, unrealizedPnl=$unrealizedPnl, realizedPnl=$realizedPnl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'available'] = this.available;
      json[r'locked'] = this.locked;
      json[r'borrowed'] = this.borrowed;
      json[r'supplied'] = this.supplied;
      json[r'impending_borrows'] = this.impendingBorrows;
      json[r'borrow_limit'] = this.borrowLimit;
      json[r'liquidation_threshold'] = this.liquidationThreshold;
      json[r'notional_long'] = this.notionalLong;
      json[r'notional_short'] = this.notionalShort;
      json[r'portfolio_value'] = this.portfolioValue;
      json[r'net_liquidation_value'] = this.netLiquidationValue;
      json[r'unrealized_pnl'] = this.unrealizedPnl;
      json[r'realized_pnl'] = this.realizedPnl;
    return json;
  }

  /// Returns a new [UserValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserValue(
        available: mapCastOfType<String, String>(json, r'available') ?? const {},
        locked: mapCastOfType<String, String>(json, r'locked') ?? const {},
        borrowed: mapCastOfType<String, String>(json, r'borrowed') ?? const {},
        supplied: mapCastOfType<String, String>(json, r'supplied') ?? const {},
        impendingBorrows: mapCastOfType<String, String>(json, r'impending_borrows') ?? const {},
        borrowLimit: mapCastOfType<String, String>(json, r'borrow_limit') ?? const {},
        liquidationThreshold: mapCastOfType<String, String>(json, r'liquidation_threshold') ?? const {},
        notionalLong: mapCastOfType<String, String>(json, r'notional_long') ?? const {},
        notionalShort: mapCastOfType<String, String>(json, r'notional_short') ?? const {},
        portfolioValue: mapCastOfType<String, String>(json, r'portfolio_value') ?? const {},
        netLiquidationValue: mapCastOfType<String, String>(json, r'net_liquidation_value') ?? const {},
        unrealizedPnl: mapCastOfType<String, String>(json, r'unrealized_pnl') ?? const {},
        realizedPnl: mapCastOfType<String, String>(json, r'realized_pnl') ?? const {},
      );
    }
    return null;
  }

  static List<UserValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserValue> mapFromJson(dynamic json) {
    final map = <String, UserValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserValue-objects as value to a dart map
  static Map<String, List<UserValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

