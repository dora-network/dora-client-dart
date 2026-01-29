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
    this.leverage,
    this.accountEquity,
    this.available,
    this.health,
    this.ltv,
  });

  /// The leverage used to obtain the position on the isolated account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? leverage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountEquity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? available;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? health;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ltv;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PLSummary &&
    other.leverage == leverage &&
    other.accountEquity == accountEquity &&
    other.available == available &&
    other.health == health &&
    other.ltv == ltv;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leverage == null ? 0 : leverage!.hashCode) +
    (accountEquity == null ? 0 : accountEquity!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (health == null ? 0 : health!.hashCode) +
    (ltv == null ? 0 : ltv!.hashCode);

  @override
  String toString() => 'PLSummary[leverage=$leverage, accountEquity=$accountEquity, available=$available, health=$health, ltv=$ltv]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.leverage != null) {
      json[r'leverage'] = this.leverage;
    } else {
      json[r'leverage'] = null;
    }
    if (this.accountEquity != null) {
      json[r'account_equity'] = this.accountEquity;
    } else {
      json[r'account_equity'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
    if (this.ltv != null) {
      json[r'ltv'] = this.ltv;
    } else {
      json[r'ltv'] = null;
    }
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PLSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PLSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PLSummary(
        leverage: mapValueOfType<String>(json, r'leverage'),
        accountEquity: mapValueOfType<String>(json, r'account_equity'),
        available: mapValueOfType<String>(json, r'available'),
        health: mapValueOfType<String>(json, r'health'),
        ltv: mapValueOfType<String>(json, r'ltv'),
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
  };
}

