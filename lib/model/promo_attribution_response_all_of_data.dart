//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PromoAttributionResponseAllOfData {
  /// Returns a new [PromoAttributionResponseAllOfData] instance.
  PromoAttributionResponseAllOfData({
    this.sources = const [],
  });

  List<PromoAttributionSource> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoAttributionResponseAllOfData &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sources.hashCode);

  @override
  String toString() => 'PromoAttributionResponseAllOfData[sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [PromoAttributionResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoAttributionResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'sources'), 'Required key "PromoAttributionResponseAllOfData[sources]" is missing from JSON.');
        assert(json[r'sources'] != null, 'Required key "PromoAttributionResponseAllOfData[sources]" has a null value in JSON.');
        return true;
      }());

      return PromoAttributionResponseAllOfData(
        sources: PromoAttributionSource.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<PromoAttributionResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoAttributionResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoAttributionResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoAttributionResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, PromoAttributionResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoAttributionResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoAttributionResponseAllOfData-objects as value to a dart map
  static Map<String, List<PromoAttributionResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoAttributionResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoAttributionResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sources',
  };
}

