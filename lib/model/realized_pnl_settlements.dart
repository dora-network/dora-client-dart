//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RealizedPnlSettlements {
  /// Returns a new [RealizedPnlSettlements] instance.
  RealizedPnlSettlements({
    this.settlements = const [],
    this.userTotals = const {},
    this.tenantTotals = const {},
    this.userTotalsUnsettled = const {},
    this.tenantTotalsUnsettled = const {},
  });

  /// A list of realized PnL settlements matching the query parameters of the request
  List<RealizedPnlSettlement> settlements;

  /// A map of user IDs to their total realized PnL in USD across all settlements included in the response
  Map<String, String> userTotals;

  /// A map of tenant IDs to their total realized PnL in USD across all settlements included in the response
  Map<String, String> tenantTotals;

  /// A map of user IDs to their total realized PnL in USD across unsettled settlements (where settled_at is null) included in the response
  Map<String, String> userTotalsUnsettled;

  /// A map of tenant IDs to their total realized PnL in USD across unsettled settlements (where settled_at is null) included in the response
  Map<String, String> tenantTotalsUnsettled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RealizedPnlSettlements &&
    _deepEquality.equals(other.settlements, settlements) &&
    _deepEquality.equals(other.userTotals, userTotals) &&
    _deepEquality.equals(other.tenantTotals, tenantTotals) &&
    _deepEquality.equals(other.userTotalsUnsettled, userTotalsUnsettled) &&
    _deepEquality.equals(other.tenantTotalsUnsettled, tenantTotalsUnsettled);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (settlements.hashCode) +
    (userTotals.hashCode) +
    (tenantTotals.hashCode) +
    (userTotalsUnsettled.hashCode) +
    (tenantTotalsUnsettled.hashCode);

  @override
  String toString() => 'RealizedPnlSettlements[settlements=$settlements, userTotals=$userTotals, tenantTotals=$tenantTotals, userTotalsUnsettled=$userTotalsUnsettled, tenantTotalsUnsettled=$tenantTotalsUnsettled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'settlements'] = this.settlements;
      json[r'user_totals'] = this.userTotals;
      json[r'tenant_totals'] = this.tenantTotals;
      json[r'user_totals_unsettled'] = this.userTotalsUnsettled;
      json[r'tenant_totals_unsettled'] = this.tenantTotalsUnsettled;
    return json;
  }

  /// Returns a new [RealizedPnlSettlements] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RealizedPnlSettlements? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return RealizedPnlSettlements(
        settlements: RealizedPnlSettlement.listFromJson(json[r'settlements']),
        userTotals: mapCastOfType<String, String>(json, r'user_totals') ?? const {},
        tenantTotals: mapCastOfType<String, String>(json, r'tenant_totals') ?? const {},
        userTotalsUnsettled: mapCastOfType<String, String>(json, r'user_totals_unsettled') ?? const {},
        tenantTotalsUnsettled: mapCastOfType<String, String>(json, r'tenant_totals_unsettled') ?? const {},
      );
    }
    return null;
  }

  static List<RealizedPnlSettlements> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RealizedPnlSettlements>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RealizedPnlSettlements.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RealizedPnlSettlements> mapFromJson(dynamic json) {
    final map = <String, RealizedPnlSettlements>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RealizedPnlSettlements.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RealizedPnlSettlements-objects as value to a dart map
  static Map<String, List<RealizedPnlSettlements>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RealizedPnlSettlements>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RealizedPnlSettlements.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

