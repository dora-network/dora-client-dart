//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamCandlesEntry {
  /// Returns a new [StreamCandlesEntry] instance.
  StreamCandlesEntry({
    required this.val,
    required this.time,
  });

  Candle val;

  /// The timestamp when the data was created
  DateTime time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamCandlesEntry &&
    other.val == val &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (val.hashCode) +
    (time.hashCode);

  @override
  String toString() => 'StreamCandlesEntry[val=$val, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Val'] = this.val;
      json[r'Time'] = this.time.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StreamCandlesEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamCandlesEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'Val'), 'Required key "StreamCandlesEntry[Val]" is missing from JSON.');
        assert(json[r'Val'] != null, 'Required key "StreamCandlesEntry[Val]" has a null value in JSON.');
        assert(json.containsKey(r'Time'), 'Required key "StreamCandlesEntry[Time]" is missing from JSON.');
        assert(json[r'Time'] != null, 'Required key "StreamCandlesEntry[Time]" has a null value in JSON.');
        return true;
      }());

      return StreamCandlesEntry(
        val: Candle.fromJson(json[r'Val'])!,
        time: mapDateTime(json, r'Time', r'')!,
      );
    }
    return null;
  }

  static List<StreamCandlesEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamCandlesEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamCandlesEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamCandlesEntry> mapFromJson(dynamic json) {
    final map = <String, StreamCandlesEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamCandlesEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamCandlesEntry-objects as value to a dart map
  static Map<String, List<StreamCandlesEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamCandlesEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamCandlesEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Val',
    'Time',
  };
}

