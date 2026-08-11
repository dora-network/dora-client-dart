//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CashReserveBreakdown {
  /// Returns a new [CashReserveBreakdown] instance.
  CashReserveBreakdown({
    required this.completedPac,
    required this.outstandingLai,
    required this.estimatedFees,
    required this.borrowedPortion,
    required this.floor,
    required this.total,
  });

  /// Completed PAC (partially accrued coupon) obligations the user owes, in USD.
  String completedPac;

  /// Outstanding LAI (leverage accrued interest) the user owes, in USD.
  String outstandingLai;

  /// Estimated trading fees for the current settlement period, capped at a configured fraction (1% by default) of the user's traded USD volume since 00:00:00 UTC.
  String estimatedFees;

  /// Configured fraction (10% by default) of the user's total outstanding borrowed value, in USD.
  String borrowedPortion;

  /// Configured absolute minimum requirement, in USD.
  String floor;

  /// The amount of USD the user must keep available in their Global Account.
  String total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CashReserveBreakdown &&
    other.completedPac == completedPac &&
    other.outstandingLai == outstandingLai &&
    other.estimatedFees == estimatedFees &&
    other.borrowedPortion == borrowedPortion &&
    other.floor == floor &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completedPac.hashCode) +
    (outstandingLai.hashCode) +
    (estimatedFees.hashCode) +
    (borrowedPortion.hashCode) +
    (floor.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'CashReserveBreakdown[completedPac=$completedPac, outstandingLai=$outstandingLai, estimatedFees=$estimatedFees, borrowedPortion=$borrowedPortion, floor=$floor, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'completed_pac'] = this.completedPac;
      json[r'outstanding_lai'] = this.outstandingLai;
      json[r'estimated_fees'] = this.estimatedFees;
      json[r'borrowed_portion'] = this.borrowedPortion;
      json[r'floor'] = this.floor;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [CashReserveBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CashReserveBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'completed_pac'), 'Required key "CashReserveBreakdown[completed_pac]" is missing from JSON.');
        assert(json[r'completed_pac'] != null, 'Required key "CashReserveBreakdown[completed_pac]" has a null value in JSON.');
        assert(json.containsKey(r'outstanding_lai'), 'Required key "CashReserveBreakdown[outstanding_lai]" is missing from JSON.');
        assert(json[r'outstanding_lai'] != null, 'Required key "CashReserveBreakdown[outstanding_lai]" has a null value in JSON.');
        assert(json.containsKey(r'estimated_fees'), 'Required key "CashReserveBreakdown[estimated_fees]" is missing from JSON.');
        assert(json[r'estimated_fees'] != null, 'Required key "CashReserveBreakdown[estimated_fees]" has a null value in JSON.');
        assert(json.containsKey(r'borrowed_portion'), 'Required key "CashReserveBreakdown[borrowed_portion]" is missing from JSON.');
        assert(json[r'borrowed_portion'] != null, 'Required key "CashReserveBreakdown[borrowed_portion]" has a null value in JSON.');
        assert(json.containsKey(r'floor'), 'Required key "CashReserveBreakdown[floor]" is missing from JSON.');
        assert(json[r'floor'] != null, 'Required key "CashReserveBreakdown[floor]" has a null value in JSON.');
        assert(json.containsKey(r'total'), 'Required key "CashReserveBreakdown[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "CashReserveBreakdown[total]" has a null value in JSON.');
        return true;
      }());

      return CashReserveBreakdown(
        completedPac: mapValueOfType<String>(json, r'completed_pac')!,
        outstandingLai: mapValueOfType<String>(json, r'outstanding_lai')!,
        estimatedFees: mapValueOfType<String>(json, r'estimated_fees')!,
        borrowedPortion: mapValueOfType<String>(json, r'borrowed_portion')!,
        floor: mapValueOfType<String>(json, r'floor')!,
        total: mapValueOfType<String>(json, r'total')!,
      );
    }
    return null;
  }

  static List<CashReserveBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CashReserveBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CashReserveBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CashReserveBreakdown> mapFromJson(dynamic json) {
    final map = <String, CashReserveBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CashReserveBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CashReserveBreakdown-objects as value to a dart map
  static Map<String, List<CashReserveBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CashReserveBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CashReserveBreakdown.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'completed_pac',
    'outstanding_lai',
    'estimated_fees',
    'borrowed_portion',
    'floor',
    'total',
  };
}

