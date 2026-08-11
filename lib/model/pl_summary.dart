//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PLSummary {
  /// Returns a new [PLSummary] instance.
  PLSummary({
    required this.leverage,
    required this.accountEquity,
    required this.available,
    required this.health,
    required this.ltv,
    required this.realizedPl,
    required this.unrealizedPl,
  });

  /// The leverage used to obtain the position on the isolated account
  String leverage;

  String accountEquity;

  String available;

  String health;

  String ltv;

  /// The realized profit or loss since account inception
  String realizedPl;

  /// The unrealized profit or loss for the account's current open positions
  String unrealizedPl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PLSummary &&
    other.leverage == leverage &&
    other.accountEquity == accountEquity &&
    other.available == available &&
    other.health == health &&
    other.ltv == ltv &&
    other.realizedPl == realizedPl &&
    other.unrealizedPl == unrealizedPl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leverage.hashCode) +
    (accountEquity.hashCode) +
    (available.hashCode) +
    (health.hashCode) +
    (ltv.hashCode) +
    (realizedPl.hashCode) +
    (unrealizedPl.hashCode);

  @override
  String toString() => 'PLSummary[leverage=$leverage, accountEquity=$accountEquity, available=$available, health=$health, ltv=$ltv, realizedPl=$realizedPl, unrealizedPl=$unrealizedPl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'leverage'] = this.leverage;
      json[r'account_equity'] = this.accountEquity;
      json[r'available'] = this.available;
      json[r'health'] = this.health;
      json[r'ltv'] = this.ltv;
      json[r'realized_pl'] = this.realizedPl;
      json[r'unrealized_pl'] = this.unrealizedPl;
    return json;
  }

  /// Returns a new [PLSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PLSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'leverage'), 'Required key "PLSummary[leverage]" is missing from JSON.');
        assert(json[r'leverage'] != null, 'Required key "PLSummary[leverage]" has a null value in JSON.');
        assert(json.containsKey(r'account_equity'), 'Required key "PLSummary[account_equity]" is missing from JSON.');
        assert(json[r'account_equity'] != null, 'Required key "PLSummary[account_equity]" has a null value in JSON.');
        assert(json.containsKey(r'available'), 'Required key "PLSummary[available]" is missing from JSON.');
        assert(json[r'available'] != null, 'Required key "PLSummary[available]" has a null value in JSON.');
        assert(json.containsKey(r'health'), 'Required key "PLSummary[health]" is missing from JSON.');
        assert(json[r'health'] != null, 'Required key "PLSummary[health]" has a null value in JSON.');
        assert(json.containsKey(r'ltv'), 'Required key "PLSummary[ltv]" is missing from JSON.');
        assert(json[r'ltv'] != null, 'Required key "PLSummary[ltv]" has a null value in JSON.');
        assert(json.containsKey(r'realized_pl'), 'Required key "PLSummary[realized_pl]" is missing from JSON.');
        assert(json[r'realized_pl'] != null, 'Required key "PLSummary[realized_pl]" has a null value in JSON.');
        assert(json.containsKey(r'unrealized_pl'), 'Required key "PLSummary[unrealized_pl]" is missing from JSON.');
        assert(json[r'unrealized_pl'] != null, 'Required key "PLSummary[unrealized_pl]" has a null value in JSON.');
        return true;
      }());

      return PLSummary(
        leverage: mapValueOfType<String>(json, r'leverage')!,
        accountEquity: mapValueOfType<String>(json, r'account_equity')!,
        available: mapValueOfType<String>(json, r'available')!,
        health: mapValueOfType<String>(json, r'health')!,
        ltv: mapValueOfType<String>(json, r'ltv')!,
        realizedPl: mapValueOfType<String>(json, r'realized_pl')!,
        unrealizedPl: mapValueOfType<String>(json, r'unrealized_pl')!,
      );
    }
    return null;
  }

  static List<PLSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PLSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PLSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PLSummary> mapFromJson(dynamic json) {
    final map = <String, PLSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PLSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PLSummary-objects as value to a dart map
  static Map<String, List<PLSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PLSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PLSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'leverage',
    'account_equity',
    'available',
    'health',
    'ltv',
    'realized_pl',
    'unrealized_pl',
  };
}

