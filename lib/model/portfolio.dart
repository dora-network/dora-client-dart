//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Portfolio {
  /// Returns a new [Portfolio] instance.
  Portfolio({
    this.userId,
    this.position = const {},
    this.netStablecoinEquivalence,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  Map<String, Map<String, Position>> position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TransformedAssets? netStablecoinEquivalence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Portfolio &&
    other.userId == userId &&
    _deepEquality.equals(other.position, position) &&
    other.netStablecoinEquivalence == netStablecoinEquivalence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (position.hashCode) +
    (netStablecoinEquivalence == null ? 0 : netStablecoinEquivalence!.hashCode);

  @override
  String toString() => 'Portfolio[userId=$userId, position=$position, netStablecoinEquivalence=$netStablecoinEquivalence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
      json[r'position'] = this.position;
    if (this.netStablecoinEquivalence != null) {
      json[r'net_stablecoin_equivalence'] = this.netStablecoinEquivalence;
    } else {
      json[r'net_stablecoin_equivalence'] = null;
    }
    return json;
  }

  /// Returns a new [Portfolio] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Portfolio? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Portfolio[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Portfolio[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Portfolio(
        userId: mapValueOfType<String>(json, r'user_id'),
        position: Position.mapFromJson(json[r'position']),
        netStablecoinEquivalence: TransformedAssets.fromJson(json[r'net_stablecoin_equivalence']),
      );
    }
    return null;
  }

  static List<Portfolio> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Portfolio>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Portfolio.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Portfolio> mapFromJson(dynamic json) {
    final map = <String, Portfolio>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Portfolio.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Portfolio-objects as value to a dart map
  static Map<String, List<Portfolio>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Portfolio>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Portfolio.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

