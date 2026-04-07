//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamAssetsResponse {
  /// Returns a new [StreamAssetsResponse] instance.
  StreamAssetsResponse({
  });

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamAssetsResponse &&

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis

  @override
  String toString() => 'StreamAssetsResponse[]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    return json;
  }

  /// Returns a new [StreamAssetsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamAssetsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamAssetsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamAssetsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamAssetsResponse(
      );
    }
    return null;
  }

  static List<StreamAssetsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamAssetsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamAssetsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamAssetsResponse> mapFromJson(dynamic json) {
    final map = <String, StreamAssetsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamAssetsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamAssetsResponse-objects as value to a dart map
  static Map<String, List<StreamAssetsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamAssetsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamAssetsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

