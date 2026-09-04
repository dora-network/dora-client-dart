//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CashReserveResponse {
  /// Returns a new [CashReserveResponse] instance.
  CashReserveResponse({
    required this.enforced,
    required this.availableUsd,
    required this.committedUsd,
    required this.requiredUsd,
    required this.satisfied,
    required this.maxVolumeUsd,
    required this.maxBorrowUsd,
    required this.breakdown,
  });

  /// Whether the minimum cash reserve guard is active in this environment.
  bool enforced;

  /// The user's currently available USD balance in their Global Account.
  String availableUsd;

  /// USD still counted in available_usd but already claimed by the user's open market buy orders on the Global Account, which reserve no funds at submission time. The reserve is evaluated against available_usd minus committed_usd.
  String committedUsd;

  /// The user's minimum USD cash reserve requirement.
  String requiredUsd;

  /// Whether available_usd minus committed_usd is at least required_usd.
  bool satisfied;

  /// How much more traded USD notional the user can add to the current settlement period before the reserve stops being covered, for an order that borrows nothing. Null means the fee leg does not constrain the user, because the guard is disabled or the trading fee volume cap is zero.
  String maxVolumeUsd;

  /// How much more the user can borrow before the reserve stops being covered, for an order that adds no traded volume. Null means the borrow leg does not constrain the user, because the guard is disabled or the borrowed fraction is zero. The two caps are single axis: a leveraged order consumes both at once and is admissible when notional/max_volume_usd + borrowed/max_borrow_usd <= 1.
  String maxBorrowUsd;

  CashReserveBreakdown breakdown;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CashReserveResponse &&
    other.enforced == enforced &&
    other.availableUsd == availableUsd &&
    other.committedUsd == committedUsd &&
    other.requiredUsd == requiredUsd &&
    other.satisfied == satisfied &&
    other.maxVolumeUsd == maxVolumeUsd &&
    other.maxBorrowUsd == maxBorrowUsd &&
    other.breakdown == breakdown;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enforced.hashCode) +
    (availableUsd.hashCode) +
    (committedUsd.hashCode) +
    (requiredUsd.hashCode) +
    (satisfied.hashCode) +
    (maxVolumeUsd.hashCode) +
    (maxBorrowUsd.hashCode) +
    (breakdown.hashCode);

  @override
  String toString() => 'CashReserveResponse[enforced=$enforced, availableUsd=$availableUsd, committedUsd=$committedUsd, requiredUsd=$requiredUsd, satisfied=$satisfied, maxVolumeUsd=$maxVolumeUsd, maxBorrowUsd=$maxBorrowUsd, breakdown=$breakdown]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enforced'] = this.enforced;
      json[r'available_usd'] = this.availableUsd;
      json[r'committed_usd'] = this.committedUsd;
      json[r'required_usd'] = this.requiredUsd;
      json[r'satisfied'] = this.satisfied;
      json[r'max_volume_usd'] = this.maxVolumeUsd;
      json[r'max_borrow_usd'] = this.maxBorrowUsd;
      json[r'breakdown'] = this.breakdown;
    return json;
  }

  /// Returns a new [CashReserveResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CashReserveResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'enforced'), 'Required key "CashReserveResponse[enforced]" is missing from JSON.');
        assert(json[r'enforced'] != null, 'Required key "CashReserveResponse[enforced]" has a null value in JSON.');
        assert(json.containsKey(r'available_usd'), 'Required key "CashReserveResponse[available_usd]" is missing from JSON.');
        assert(json[r'available_usd'] != null, 'Required key "CashReserveResponse[available_usd]" has a null value in JSON.');
        assert(json.containsKey(r'committed_usd'), 'Required key "CashReserveResponse[committed_usd]" is missing from JSON.');
        assert(json[r'committed_usd'] != null, 'Required key "CashReserveResponse[committed_usd]" has a null value in JSON.');
        assert(json.containsKey(r'required_usd'), 'Required key "CashReserveResponse[required_usd]" is missing from JSON.');
        assert(json[r'required_usd'] != null, 'Required key "CashReserveResponse[required_usd]" has a null value in JSON.');
        assert(json.containsKey(r'satisfied'), 'Required key "CashReserveResponse[satisfied]" is missing from JSON.');
        assert(json[r'satisfied'] != null, 'Required key "CashReserveResponse[satisfied]" has a null value in JSON.');
        assert(json.containsKey(r'max_volume_usd'), 'Required key "CashReserveResponse[max_volume_usd]" is missing from JSON.');
        assert(json[r'max_volume_usd'] != null, 'Required key "CashReserveResponse[max_volume_usd]" has a null value in JSON.');
        assert(json.containsKey(r'max_borrow_usd'), 'Required key "CashReserveResponse[max_borrow_usd]" is missing from JSON.');
        assert(json[r'max_borrow_usd'] != null, 'Required key "CashReserveResponse[max_borrow_usd]" has a null value in JSON.');
        assert(json.containsKey(r'breakdown'), 'Required key "CashReserveResponse[breakdown]" is missing from JSON.');
        assert(json[r'breakdown'] != null, 'Required key "CashReserveResponse[breakdown]" has a null value in JSON.');
        return true;
      }());

      return CashReserveResponse(
        enforced: mapValueOfType<bool>(json, r'enforced')!,
        availableUsd: mapValueOfType<String>(json, r'available_usd')!,
        committedUsd: mapValueOfType<String>(json, r'committed_usd')!,
        requiredUsd: mapValueOfType<String>(json, r'required_usd')!,
        satisfied: mapValueOfType<bool>(json, r'satisfied')!,
        maxVolumeUsd: mapValueOfType<String>(json, r'max_volume_usd')!,
        maxBorrowUsd: mapValueOfType<String>(json, r'max_borrow_usd')!,
        breakdown: CashReserveBreakdown.fromJson(json[r'breakdown'])!,
      );
    }
    return null;
  }

  static List<CashReserveResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CashReserveResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CashReserveResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CashReserveResponse> mapFromJson(dynamic json) {
    final map = <String, CashReserveResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CashReserveResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CashReserveResponse-objects as value to a dart map
  static Map<String, List<CashReserveResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CashReserveResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CashReserveResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enforced',
    'available_usd',
    'committed_usd',
    'required_usd',
    'satisfied',
    'max_volume_usd',
    'max_borrow_usd',
    'breakdown',
  };
}

