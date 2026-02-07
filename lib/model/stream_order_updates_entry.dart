//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamOrderUpdatesEntry {
  /// Returns a new [StreamOrderUpdatesEntry] instance.
  StreamOrderUpdatesEntry({
    required this.val,
    required this.time,
  });

  Order val;

  /// The timestamp when the data was created
  DateTime time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamOrderUpdatesEntry &&
    other.val == val &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (val.hashCode) +
    (time.hashCode);

  @override
  String toString() => 'StreamOrderUpdatesEntry[val=$val, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Val'] = this.val;
      json[r'Time'] = this.time.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StreamOrderUpdatesEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamOrderUpdatesEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamOrderUpdatesEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamOrderUpdatesEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamOrderUpdatesEntry(
        val: Order.fromJson(json[r'Val'])!,
        time: mapDateTime(json, r'Time', r'')!,
      );
    }
    return null;
  }

  static List<StreamOrderUpdatesEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamOrderUpdatesEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamOrderUpdatesEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamOrderUpdatesEntry> mapFromJson(dynamic json) {
    final map = <String, StreamOrderUpdatesEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamOrderUpdatesEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamOrderUpdatesEntry-objects as value to a dart map
  static Map<String, List<StreamOrderUpdatesEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamOrderUpdatesEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamOrderUpdatesEntry.listFromJson(entry.value, growable: growable,);
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

