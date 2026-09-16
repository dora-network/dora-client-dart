//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateProgramListEnvelope {
  /// Returns a new [AffiliateProgramListEnvelope] instance.
  AffiliateProgramListEnvelope({
    this.data = const [],
    required this.metadata,
  });

  List<AffiliateProgram> data;

  Metadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateProgramListEnvelope &&
    _deepEquality.equals(other.data, data) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'AffiliateProgramListEnvelope[data=$data, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [AffiliateProgramListEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateProgramListEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'), 'Required key "AffiliateProgramListEnvelope[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "AffiliateProgramListEnvelope[data]" has a null value in JSON.');
        assert(json.containsKey(r'metadata'), 'Required key "AffiliateProgramListEnvelope[metadata]" is missing from JSON.');
        assert(json[r'metadata'] != null, 'Required key "AffiliateProgramListEnvelope[metadata]" has a null value in JSON.');
        return true;
      }());

      return AffiliateProgramListEnvelope(
        data: AffiliateProgram.listFromJson(json[r'data']),
        metadata: Metadata.fromJson(json[r'metadata'])!,
      );
    }
    return null;
  }

  static List<AffiliateProgramListEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateProgramListEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateProgramListEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateProgramListEnvelope> mapFromJson(dynamic json) {
    final map = <String, AffiliateProgramListEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateProgramListEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateProgramListEnvelope-objects as value to a dart map
  static Map<String, List<AffiliateProgramListEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateProgramListEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateProgramListEnvelope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'metadata',
  };
}

