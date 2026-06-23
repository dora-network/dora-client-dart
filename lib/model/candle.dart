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
    required this.orderBookId,
    required this.startTimestamp,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    this.ytm,
    required this.openYtm,
    required this.closeYtm,
    required this.highYtm,
    required this.lowYtm,
    required this.volume,
  });

  String orderBookId;

  DateTime startTimestamp;

  String open;

  String high;

  String low;

  String close;

  /// DEPRECATED: Use close_ytm instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ytm;

  String openYtm;

  String closeYtm;

  String highYtm;

  String lowYtm;

  String volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Candle &&
    other.orderBookId == orderBookId &&
    other.startTimestamp == startTimestamp &&
    other.open == open &&
    other.high == high &&
    other.low == low &&
    other.close == close &&
    other.ytm == ytm &&
    other.openYtm == openYtm &&
    other.closeYtm == closeYtm &&
    other.highYtm == highYtm &&
    other.lowYtm == lowYtm &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (startTimestamp.hashCode) +
    (open.hashCode) +
    (high.hashCode) +
    (low.hashCode) +
    (close.hashCode) +
    (ytm == null ? 0 : ytm!.hashCode) +
    (openYtm.hashCode) +
    (closeYtm.hashCode) +
    (highYtm.hashCode) +
    (lowYtm.hashCode) +
    (volume.hashCode);

  @override
  String toString() => 'Candle[orderBookId=$orderBookId, startTimestamp=$startTimestamp, open=$open, high=$high, low=$low, close=$close, ytm=$ytm, openYtm=$openYtm, closeYtm=$closeYtm, highYtm=$highYtm, lowYtm=$lowYtm, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
      json[r'start_timestamp'] = this.startTimestamp.toUtc().toIso8601String();
      json[r'open'] = this.open;
      json[r'high'] = this.high;
      json[r'low'] = this.low;
      json[r'close'] = this.close;
    if (this.ytm != null) {
      json[r'ytm'] = this.ytm;
    } else {
      json[r'ytm'] = null;
    }
      json[r'open_ytm'] = this.openYtm;
      json[r'close_ytm'] = this.closeYtm;
      json[r'high_ytm'] = this.highYtm;
      json[r'low_ytm'] = this.lowYtm;
      json[r'volume'] = this.volume;
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
        assert(json.containsKey(r'order_book_id'), 'Required key "Candle[order_book_id]" is missing from JSON.');
        assert(json[r'order_book_id'] != null, 'Required key "Candle[order_book_id]" has a null value in JSON.');
        assert(json.containsKey(r'start_timestamp'), 'Required key "Candle[start_timestamp]" is missing from JSON.');
        assert(json[r'start_timestamp'] != null, 'Required key "Candle[start_timestamp]" has a null value in JSON.');
        assert(json.containsKey(r'open'), 'Required key "Candle[open]" is missing from JSON.');
        assert(json[r'open'] != null, 'Required key "Candle[open]" has a null value in JSON.');
        assert(json.containsKey(r'high'), 'Required key "Candle[high]" is missing from JSON.');
        assert(json[r'high'] != null, 'Required key "Candle[high]" has a null value in JSON.');
        assert(json.containsKey(r'low'), 'Required key "Candle[low]" is missing from JSON.');
        assert(json[r'low'] != null, 'Required key "Candle[low]" has a null value in JSON.');
        assert(json.containsKey(r'close'), 'Required key "Candle[close]" is missing from JSON.');
        assert(json[r'close'] != null, 'Required key "Candle[close]" has a null value in JSON.');
        assert(json.containsKey(r'open_ytm'), 'Required key "Candle[open_ytm]" is missing from JSON.');
        assert(json[r'open_ytm'] != null, 'Required key "Candle[open_ytm]" has a null value in JSON.');
        assert(json.containsKey(r'close_ytm'), 'Required key "Candle[close_ytm]" is missing from JSON.');
        assert(json[r'close_ytm'] != null, 'Required key "Candle[close_ytm]" has a null value in JSON.');
        assert(json.containsKey(r'high_ytm'), 'Required key "Candle[high_ytm]" is missing from JSON.');
        assert(json[r'high_ytm'] != null, 'Required key "Candle[high_ytm]" has a null value in JSON.');
        assert(json.containsKey(r'low_ytm'), 'Required key "Candle[low_ytm]" is missing from JSON.');
        assert(json[r'low_ytm'] != null, 'Required key "Candle[low_ytm]" has a null value in JSON.');
        assert(json.containsKey(r'volume'), 'Required key "Candle[volume]" is missing from JSON.');
        assert(json[r'volume'] != null, 'Required key "Candle[volume]" has a null value in JSON.');
        return true;
      }());

      return Candle(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        startTimestamp: mapDateTime(json, r'start_timestamp', r'')!,
        open: mapValueOfType<String>(json, r'open')!,
        high: mapValueOfType<String>(json, r'high')!,
        low: mapValueOfType<String>(json, r'low')!,
        close: mapValueOfType<String>(json, r'close')!,
        ytm: mapValueOfType<String>(json, r'ytm'),
        openYtm: mapValueOfType<String>(json, r'open_ytm')!,
        closeYtm: mapValueOfType<String>(json, r'close_ytm')!,
        highYtm: mapValueOfType<String>(json, r'high_ytm')!,
        lowYtm: mapValueOfType<String>(json, r'low_ytm')!,
        volume: mapValueOfType<String>(json, r'volume')!,
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
    'order_book_id',
    'start_timestamp',
    'open',
    'high',
    'low',
    'close',
    'open_ytm',
    'close_ytm',
    'high_ytm',
    'low_ytm',
    'volume',
  };
}

