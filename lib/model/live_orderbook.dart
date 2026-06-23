//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LiveOrderbook {
  /// Returns a new [LiveOrderbook] instance.
  LiveOrderbook({
    this.bids = const [],
    this.asks = const [],
  });

  /// sorted in desc order by price
  List<PriceLevel> bids;

  /// sorted in asc order by price
  List<PriceLevel> asks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LiveOrderbook &&
    _deepEquality.equals(other.bids, bids) &&
    _deepEquality.equals(other.asks, asks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bids.hashCode) +
    (asks.hashCode);

  @override
  String toString() => 'LiveOrderbook[bids=$bids, asks=$asks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bids'] = this.bids;
      json[r'asks'] = this.asks;
    return json;
  }

  /// Returns a new [LiveOrderbook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LiveOrderbook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'bids'), 'Required key "LiveOrderbook[bids]" is missing from JSON.');
        assert(json[r'bids'] != null, 'Required key "LiveOrderbook[bids]" has a null value in JSON.');
        assert(json.containsKey(r'asks'), 'Required key "LiveOrderbook[asks]" is missing from JSON.');
        assert(json[r'asks'] != null, 'Required key "LiveOrderbook[asks]" has a null value in JSON.');
        return true;
      }());

      return LiveOrderbook(
        bids: PriceLevel.listFromJson(json[r'bids']),
        asks: PriceLevel.listFromJson(json[r'asks']),
      );
    }
    return null;
  }

  static List<LiveOrderbook> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LiveOrderbook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LiveOrderbook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LiveOrderbook> mapFromJson(dynamic json) {
    final map = <String, LiveOrderbook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LiveOrderbook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LiveOrderbook-objects as value to a dart map
  static Map<String, List<LiveOrderbook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LiveOrderbook>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LiveOrderbook.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bids',
    'asks',
  };
}

