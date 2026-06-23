//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Margin {
  /// Returns a new [Margin] instance.
  Margin({
    required this.available,
    required this.used,
    required this.remaining,
  });

  /// The total margin available from this position.
  String available;

  /// The amount of margin used from this position.
  String used;

  /// The margin remaining available from this position.
  String remaining;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Margin &&
    other.available == available &&
    other.used == used &&
    other.remaining == remaining;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available.hashCode) +
    (used.hashCode) +
    (remaining.hashCode);

  @override
  String toString() => 'Margin[available=$available, used=$used, remaining=$remaining]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'available'] = this.available;
      json[r'used'] = this.used;
      json[r'remaining'] = this.remaining;
    return json;
  }

  /// Returns a new [Margin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Margin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'available'), 'Required key "Margin[available]" is missing from JSON.');
        assert(json[r'available'] != null, 'Required key "Margin[available]" has a null value in JSON.');
        assert(json.containsKey(r'used'), 'Required key "Margin[used]" is missing from JSON.');
        assert(json[r'used'] != null, 'Required key "Margin[used]" has a null value in JSON.');
        assert(json.containsKey(r'remaining'), 'Required key "Margin[remaining]" is missing from JSON.');
        assert(json[r'remaining'] != null, 'Required key "Margin[remaining]" has a null value in JSON.');
        return true;
      }());

      return Margin(
        available: mapValueOfType<String>(json, r'available')!,
        used: mapValueOfType<String>(json, r'used')!,
        remaining: mapValueOfType<String>(json, r'remaining')!,
      );
    }
    return null;
  }

  static List<Margin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Margin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Margin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Margin> mapFromJson(dynamic json) {
    final map = <String, Margin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Margin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Margin-objects as value to a dart map
  static Map<String, List<Margin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Margin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Margin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'available',
    'used',
    'remaining',
  };
}

