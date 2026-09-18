//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TenantGuaranteeFundSummary {
  /// Returns a new [TenantGuaranteeFundSummary] instance.
  TenantGuaranteeFundSummary({
    this.totalsByTxKind = const {},
  });

  /// Summed balance movement amounts by tx_kind for the filtered result set.
  Map<String, String> totalsByTxKind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TenantGuaranteeFundSummary &&
    _deepEquality.equals(other.totalsByTxKind, totalsByTxKind);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalsByTxKind.hashCode);

  @override
  String toString() => 'TenantGuaranteeFundSummary[totalsByTxKind=$totalsByTxKind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totals_by_tx_kind'] = this.totalsByTxKind;
    return json;
  }

  /// Returns a new [TenantGuaranteeFundSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TenantGuaranteeFundSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'totals_by_tx_kind'), 'Required key "TenantGuaranteeFundSummary[totals_by_tx_kind]" is missing from JSON.');
        assert(json[r'totals_by_tx_kind'] != null, 'Required key "TenantGuaranteeFundSummary[totals_by_tx_kind]" has a null value in JSON.');
        return true;
      }());

      return TenantGuaranteeFundSummary(
        totalsByTxKind: mapCastOfType<String, String>(json, r'totals_by_tx_kind')!,
      );
    }
    return null;
  }

  static List<TenantGuaranteeFundSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantGuaranteeFundSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantGuaranteeFundSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TenantGuaranteeFundSummary> mapFromJson(dynamic json) {
    final map = <String, TenantGuaranteeFundSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TenantGuaranteeFundSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TenantGuaranteeFundSummary-objects as value to a dart map
  static Map<String, List<TenantGuaranteeFundSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TenantGuaranteeFundSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TenantGuaranteeFundSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totals_by_tx_kind',
  };
}

