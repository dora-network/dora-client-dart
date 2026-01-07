//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LiquidationTargetsResponseEnvelope {
  /// Returns a new [LiquidationTargetsResponseEnvelope] instance.
  LiquidationTargetsResponseEnvelope({
    this.data = const [],
    this.error,
    this.metadata,
  });

  List<String> data;

  /// The error message. Present for error (non-2xx) responses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Metadata about the response, including status code and trace information.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Metadata? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LiquidationTargetsResponseEnvelope &&
    _deepEquality.equals(other.data, data) &&
    other.error == error &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'LiquidationTargetsResponseEnvelope[data=$data, error=$error, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [LiquidationTargetsResponseEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LiquidationTargetsResponseEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LiquidationTargetsResponseEnvelope[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LiquidationTargetsResponseEnvelope[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LiquidationTargetsResponseEnvelope(
        data: json[r'data'] is Iterable
            ? (json[r'data'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        error: mapValueOfType<String>(json, r'error'),
        metadata: Metadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<LiquidationTargetsResponseEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LiquidationTargetsResponseEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LiquidationTargetsResponseEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LiquidationTargetsResponseEnvelope> mapFromJson(dynamic json) {
    final map = <String, LiquidationTargetsResponseEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LiquidationTargetsResponseEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LiquidationTargetsResponseEnvelope-objects as value to a dart map
  static Map<String, List<LiquidationTargetsResponseEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LiquidationTargetsResponseEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LiquidationTargetsResponseEnvelope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

