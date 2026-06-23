//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamUserCouponPaymentsEntry {
  /// Returns a new [StreamUserCouponPaymentsEntry] instance.
  StreamUserCouponPaymentsEntry({
    required this.val,
    required this.time,
  });

  UserCouponPayment val;

  /// The timestamp when the data was created
  DateTime time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamUserCouponPaymentsEntry &&
    other.val == val &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (val.hashCode) +
    (time.hashCode);

  @override
  String toString() => 'StreamUserCouponPaymentsEntry[val=$val, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Val'] = this.val;
      json[r'Time'] = this.time.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StreamUserCouponPaymentsEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamUserCouponPaymentsEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'Val'), 'Required key "StreamUserCouponPaymentsEntry[Val]" is missing from JSON.');
        assert(json[r'Val'] != null, 'Required key "StreamUserCouponPaymentsEntry[Val]" has a null value in JSON.');
        assert(json.containsKey(r'Time'), 'Required key "StreamUserCouponPaymentsEntry[Time]" is missing from JSON.');
        assert(json[r'Time'] != null, 'Required key "StreamUserCouponPaymentsEntry[Time]" has a null value in JSON.');
        return true;
      }());

      return StreamUserCouponPaymentsEntry(
        val: UserCouponPayment.fromJson(json[r'Val'])!,
        time: mapDateTime(json, r'Time', r'')!,
      );
    }
    return null;
  }

  static List<StreamUserCouponPaymentsEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamUserCouponPaymentsEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamUserCouponPaymentsEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamUserCouponPaymentsEntry> mapFromJson(dynamic json) {
    final map = <String, StreamUserCouponPaymentsEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamUserCouponPaymentsEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamUserCouponPaymentsEntry-objects as value to a dart map
  static Map<String, List<StreamUserCouponPaymentsEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamUserCouponPaymentsEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamUserCouponPaymentsEntry.listFromJson(entry.value, growable: growable,);
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

