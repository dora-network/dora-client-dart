//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Candle {
  /// Returns a new [Candle] instance.
  Candle({
    this.orderBookId,
    this.startTimestamp,
    this.open,
    this.high,
    this.low,
    this.close,
    this.volume,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderBookId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? open;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? high;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? low;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? close;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Candle &&
    other.orderBookId == orderBookId &&
    other.startTimestamp == startTimestamp &&
    other.open == open &&
    other.high == high &&
    other.low == low &&
    other.close == close &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId == null ? 0 : orderBookId!.hashCode) +
    (startTimestamp == null ? 0 : startTimestamp!.hashCode) +
    (open == null ? 0 : open!.hashCode) +
    (high == null ? 0 : high!.hashCode) +
    (low == null ? 0 : low!.hashCode) +
    (close == null ? 0 : close!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'Candle[orderBookId=$orderBookId, startTimestamp=$startTimestamp, open=$open, high=$high, low=$low, close=$close, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orderBookId != null) {
      json[r'order_book_id'] = this.orderBookId;
    } else {
      json[r'order_book_id'] = null;
    }
    if (this.startTimestamp != null) {
      json[r'start_timestamp'] = this.startTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'start_timestamp'] = null;
    }
    if (this.open != null) {
      json[r'open'] = this.open;
    } else {
      json[r'open'] = null;
    }
    if (this.high != null) {
      json[r'high'] = this.high;
    } else {
      json[r'high'] = null;
    }
    if (this.low != null) {
      json[r'low'] = this.low;
    } else {
      json[r'low'] = null;
    }
    if (this.close != null) {
      json[r'close'] = this.close;
    } else {
      json[r'close'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [Candle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Candle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Candle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Candle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Candle(
        orderBookId: mapValueOfType<String>(json, r'order_book_id'),
        startTimestamp: mapDateTime(json, r'start_timestamp', r''),
        open: mapValueOfType<double>(json, r'open'),
        high: mapValueOfType<double>(json, r'high'),
        low: mapValueOfType<double>(json, r'low'),
        close: mapValueOfType<double>(json, r'close'),
        volume: mapValueOfType<double>(json, r'volume'),
      );
    }
    return null;
  }

  static List<Candle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Candle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Candle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Candle> mapFromJson(dynamic json) {
    final map = <String, Candle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Candle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Candle-objects as value to a dart map
  static Map<String, List<Candle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Candle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Candle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

