//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamTransactionsResponse {
  /// Returns a new [StreamTransactionsResponse] instance.
  StreamTransactionsResponse({
    this.streamTransactionsEntries = const [],
  });

  List<StreamTransactionsEntry> streamTransactionsEntries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamTransactionsResponse &&
    _deepEquality.equals(other.streamTransactionsEntries, streamTransactionsEntries);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (streamTransactionsEntries.hashCode);

  @override
  String toString() => 'StreamTransactionsResponse[streamTransactionsEntries=$streamTransactionsEntries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'stream_transactions_entries'] = this.streamTransactionsEntries;
    return json;
  }

  /// Returns a new [StreamTransactionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamTransactionsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamTransactionsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamTransactionsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamTransactionsResponse(
        streamTransactionsEntries: StreamTransactionsEntry.listFromJson(json[r'stream_transactions_entries']),
      );
    }
    return null;
  }

  static List<StreamTransactionsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamTransactionsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamTransactionsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamTransactionsResponse> mapFromJson(dynamic json) {
    final map = <String, StreamTransactionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamTransactionsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamTransactionsResponse-objects as value to a dart map
  static Map<String, List<StreamTransactionsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamTransactionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamTransactionsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

