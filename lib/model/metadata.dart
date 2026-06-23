//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Metadata {
  /// Returns a new [Metadata] instance.
  Metadata({
    required this.statusCode,
    required this.traceId,
    required this.requestId,
  });

  /// HTTP status code for the response.
  int statusCode;

  /// Trace ID for distributed tracing.
  String traceId;

  /// Request ID for correlating logs and debugging.
  String requestId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Metadata &&
    other.statusCode == statusCode &&
    other.traceId == traceId &&
    other.requestId == requestId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (statusCode.hashCode) +
    (traceId.hashCode) +
    (requestId.hashCode);

  @override
  String toString() => 'Metadata[statusCode=$statusCode, traceId=$traceId, requestId=$requestId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status_code'] = this.statusCode;
      json[r'trace_id'] = this.traceId;
      json[r'request_id'] = this.requestId;
    return json;
  }

  /// Returns a new [Metadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Metadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'status_code'), 'Required key "Metadata[status_code]" is missing from JSON.');
        assert(json[r'status_code'] != null, 'Required key "Metadata[status_code]" has a null value in JSON.');
        assert(json.containsKey(r'trace_id'), 'Required key "Metadata[trace_id]" is missing from JSON.');
        assert(json[r'trace_id'] != null, 'Required key "Metadata[trace_id]" has a null value in JSON.');
        assert(json.containsKey(r'request_id'), 'Required key "Metadata[request_id]" is missing from JSON.');
        assert(json[r'request_id'] != null, 'Required key "Metadata[request_id]" has a null value in JSON.');
        return true;
      }());

      return Metadata(
        statusCode: mapValueOfType<int>(json, r'status_code')!,
        traceId: mapValueOfType<String>(json, r'trace_id')!,
        requestId: mapValueOfType<String>(json, r'request_id')!,
      );
    }
    return null;
  }

  static List<Metadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Metadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Metadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Metadata> mapFromJson(dynamic json) {
    final map = <String, Metadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Metadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Metadata-objects as value to a dart map
  static Map<String, List<Metadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Metadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Metadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status_code',
    'trace_id',
    'request_id',
  };
}

