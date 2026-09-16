//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PromoLinkBatchListResponseAllOfData {
  /// Returns a new [PromoLinkBatchListResponseAllOfData] instance.
  PromoLinkBatchListResponseAllOfData({
    this.batches = const [],
  });

  List<PromoLinkBatchSummary> batches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoLinkBatchListResponseAllOfData &&
    _deepEquality.equals(other.batches, batches);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batches.hashCode);

  @override
  String toString() => 'PromoLinkBatchListResponseAllOfData[batches=$batches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'batches'] = this.batches;
    return json;
  }

  /// Returns a new [PromoLinkBatchListResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoLinkBatchListResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'batches'), 'Required key "PromoLinkBatchListResponseAllOfData[batches]" is missing from JSON.');
        assert(json[r'batches'] != null, 'Required key "PromoLinkBatchListResponseAllOfData[batches]" has a null value in JSON.');
        return true;
      }());

      return PromoLinkBatchListResponseAllOfData(
        batches: PromoLinkBatchSummary.listFromJson(json[r'batches']),
      );
    }
    return null;
  }

  static List<PromoLinkBatchListResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoLinkBatchListResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoLinkBatchListResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoLinkBatchListResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, PromoLinkBatchListResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoLinkBatchListResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoLinkBatchListResponseAllOfData-objects as value to a dart map
  static Map<String, List<PromoLinkBatchListResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoLinkBatchListResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoLinkBatchListResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'batches',
  };
}

