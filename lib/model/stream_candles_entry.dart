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
    this.val,
    this.time,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Candle? val;

  /// The timestamp when the data was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamCandlesEntry &&
    other.val == val &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (val == null ? 0 : val!.hashCode) +
    (time == null ? 0 : time!.hashCode);

  @override
  String toString() => 'StreamCandlesEntry[val=$val, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.val != null) {
      json[r'Val'] = this.val;
    } else {
      json[r'Val'] = null;
    }
    if (this.time != null) {
      json[r'Time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'Time'] = null;
    }
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamCandlesEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamCandlesEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamCandlesEntry(
        val: Candle.fromJson(json[r'Val']),
        time: mapDateTime(json, r'Time', r''),
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
  };
}

