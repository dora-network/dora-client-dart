//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamOrderUpdatesResponse {
  /// Returns a new [StreamOrderUpdatesResponse] instance.
  StreamOrderUpdatesResponse({
    this.streamOrderUpdateEntries = const [],
  });

  List<StreamOrderUpdatesEntry> streamOrderUpdateEntries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamOrderUpdatesResponse &&
    _deepEquality.equals(other.streamOrderUpdateEntries, streamOrderUpdateEntries);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (streamOrderUpdateEntries.hashCode);

  @override
  String toString() => 'StreamOrderUpdatesResponse[streamOrderUpdateEntries=$streamOrderUpdateEntries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'stream_order_update_entries'] = this.streamOrderUpdateEntries;
    return json;
  }

  /// Returns a new [StreamOrderUpdatesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamOrderUpdatesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamOrderUpdatesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamOrderUpdatesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamOrderUpdatesResponse(
        streamOrderUpdateEntries: StreamOrderUpdatesEntry.listFromJson(json[r'stream_order_update_entries']),
      );
    }
    return null;
  }

  static List<StreamOrderUpdatesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamOrderUpdatesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamOrderUpdatesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamOrderUpdatesResponse> mapFromJson(dynamic json) {
    final map = <String, StreamOrderUpdatesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamOrderUpdatesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamOrderUpdatesResponse-objects as value to a dart map
  static Map<String, List<StreamOrderUpdatesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamOrderUpdatesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamOrderUpdatesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

