//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateMembershipListEnvelope {
  /// Returns a new [AffiliateMembershipListEnvelope] instance.
  AffiliateMembershipListEnvelope({
    this.data = const [],
    required this.metadata,
  });

  List<AffiliateMembership> data;

  Metadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateMembershipListEnvelope &&
    _deepEquality.equals(other.data, data) &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'AffiliateMembershipListEnvelope[data=$data, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [AffiliateMembershipListEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateMembershipListEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'), 'Required key "AffiliateMembershipListEnvelope[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "AffiliateMembershipListEnvelope[data]" has a null value in JSON.');
        assert(json.containsKey(r'metadata'), 'Required key "AffiliateMembershipListEnvelope[metadata]" is missing from JSON.');
        assert(json[r'metadata'] != null, 'Required key "AffiliateMembershipListEnvelope[metadata]" has a null value in JSON.');
        return true;
      }());

      return AffiliateMembershipListEnvelope(
        data: AffiliateMembership.listFromJson(json[r'data']),
        metadata: Metadata.fromJson(json[r'metadata'])!,
      );
    }
    return null;
  }

  static List<AffiliateMembershipListEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateMembershipListEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateMembershipListEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateMembershipListEnvelope> mapFromJson(dynamic json) {
    final map = <String, AffiliateMembershipListEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateMembershipListEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateMembershipListEnvelope-objects as value to a dart map
  static Map<String, List<AffiliateMembershipListEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateMembershipListEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateMembershipListEnvelope.listFromJson(entry.value, growable: growable,);
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

