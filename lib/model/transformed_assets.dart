//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransformedAssets {
  /// Returns a new [TransformedAssets] instance.
  TransformedAssets({
    this.gained = const {},
    this.lost = const {},
  });

  /// Assets that have been gained by stablecoin equivalence transformations. They cannot be withdrawn from the platform until converted back to the original asset.
  Map<String, String> gained;

  /// Assets that have been lost by stablecoin equivalence transformations. They can be recovered by converting back any assets gained by stablecoin equivalence transformations.
  Map<String, String> lost;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransformedAssets &&
    _deepEquality.equals(other.gained, gained) &&
    _deepEquality.equals(other.lost, lost);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gained.hashCode) +
    (lost.hashCode);

  @override
  String toString() => 'TransformedAssets[gained=$gained, lost=$lost]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gained'] = this.gained;
      json[r'lost'] = this.lost;
    return json;
  }

  /// Returns a new [TransformedAssets] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransformedAssets? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TransformedAssets[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TransformedAssets[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TransformedAssets(
        gained: mapCastOfType<String, String>(json, r'gained') ?? const {},
        lost: mapCastOfType<String, String>(json, r'lost') ?? const {},
      );
    }
    return null;
  }

  static List<TransformedAssets> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransformedAssets>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransformedAssets.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransformedAssets> mapFromJson(dynamic json) {
    final map = <String, TransformedAssets>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransformedAssets.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransformedAssets-objects as value to a dart map
  static Map<String, List<TransformedAssets>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TransformedAssets>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TransformedAssets.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

