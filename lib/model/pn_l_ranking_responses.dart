//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PnLRankingResponses {
  /// Returns a new [PnLRankingResponses] instance.
  PnLRankingResponses({
    required this.summary,
    this.rankings = const [],
  });

  PnLRankingSummary summary;

  List<PnLRankingResponse> rankings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PnLRankingResponses &&
    other.summary == summary &&
    _deepEquality.equals(other.rankings, rankings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (summary.hashCode) +
    (rankings.hashCode);

  @override
  String toString() => 'PnLRankingResponses[summary=$summary, rankings=$rankings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'summary'] = this.summary;
      json[r'rankings'] = this.rankings;
    return json;
  }

  /// Returns a new [PnLRankingResponses] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PnLRankingResponses? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'summary'), 'Required key "PnLRankingResponses[summary]" is missing from JSON.');
        assert(json[r'summary'] != null, 'Required key "PnLRankingResponses[summary]" has a null value in JSON.');
        assert(json.containsKey(r'rankings'), 'Required key "PnLRankingResponses[rankings]" is missing from JSON.');
        assert(json[r'rankings'] != null, 'Required key "PnLRankingResponses[rankings]" has a null value in JSON.');
        return true;
      }());

      return PnLRankingResponses(
        summary: PnLRankingSummary.fromJson(json[r'summary'])!,
        rankings: PnLRankingResponse.listFromJson(json[r'rankings']),
      );
    }
    return null;
  }

  static List<PnLRankingResponses> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PnLRankingResponses>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PnLRankingResponses.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PnLRankingResponses> mapFromJson(dynamic json) {
    final map = <String, PnLRankingResponses>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PnLRankingResponses.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PnLRankingResponses-objects as value to a dart map
  static Map<String, List<PnLRankingResponses>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PnLRankingResponses>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PnLRankingResponses.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'summary',
    'rankings',
  };
}

