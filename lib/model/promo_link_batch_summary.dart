//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PromoLinkBatchSummary {
  /// Returns a new [PromoLinkBatchSummary] instance.
  PromoLinkBatchSummary({
    required this.id,
    required this.sourceType,
    required this.sourceId,
    required this.sourceName,
    required this.allocation,
    required this.issued,
    required this.claimed,
    required this.revoked,
    required this.createdAt,
  });

  String id;

  PromoSourceType sourceType;

  String sourceId;

  String sourceName;

  int allocation;

  int issued;

  int claimed;

  int revoked;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoLinkBatchSummary &&
    other.id == id &&
    other.sourceType == sourceType &&
    other.sourceId == sourceId &&
    other.sourceName == sourceName &&
    other.allocation == allocation &&
    other.issued == issued &&
    other.claimed == claimed &&
    other.revoked == revoked &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (sourceType.hashCode) +
    (sourceId.hashCode) +
    (sourceName.hashCode) +
    (allocation.hashCode) +
    (issued.hashCode) +
    (claimed.hashCode) +
    (revoked.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'PromoLinkBatchSummary[id=$id, sourceType=$sourceType, sourceId=$sourceId, sourceName=$sourceName, allocation=$allocation, issued=$issued, claimed=$claimed, revoked=$revoked, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'source_type'] = this.sourceType;
      json[r'source_id'] = this.sourceId;
      json[r'source_name'] = this.sourceName;
      json[r'allocation'] = this.allocation;
      json[r'issued'] = this.issued;
      json[r'claimed'] = this.claimed;
      json[r'revoked'] = this.revoked;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PromoLinkBatchSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoLinkBatchSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "PromoLinkBatchSummary[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "PromoLinkBatchSummary[id]" has a null value in JSON.');
        assert(json.containsKey(r'source_type'), 'Required key "PromoLinkBatchSummary[source_type]" is missing from JSON.');
        assert(json[r'source_type'] != null, 'Required key "PromoLinkBatchSummary[source_type]" has a null value in JSON.');
        assert(json.containsKey(r'source_id'), 'Required key "PromoLinkBatchSummary[source_id]" is missing from JSON.');
        assert(json[r'source_id'] != null, 'Required key "PromoLinkBatchSummary[source_id]" has a null value in JSON.');
        assert(json.containsKey(r'source_name'), 'Required key "PromoLinkBatchSummary[source_name]" is missing from JSON.');
        assert(json[r'source_name'] != null, 'Required key "PromoLinkBatchSummary[source_name]" has a null value in JSON.');
        assert(json.containsKey(r'allocation'), 'Required key "PromoLinkBatchSummary[allocation]" is missing from JSON.');
        assert(json[r'allocation'] != null, 'Required key "PromoLinkBatchSummary[allocation]" has a null value in JSON.');
        assert(json.containsKey(r'issued'), 'Required key "PromoLinkBatchSummary[issued]" is missing from JSON.');
        assert(json[r'issued'] != null, 'Required key "PromoLinkBatchSummary[issued]" has a null value in JSON.');
        assert(json.containsKey(r'claimed'), 'Required key "PromoLinkBatchSummary[claimed]" is missing from JSON.');
        assert(json[r'claimed'] != null, 'Required key "PromoLinkBatchSummary[claimed]" has a null value in JSON.');
        assert(json.containsKey(r'revoked'), 'Required key "PromoLinkBatchSummary[revoked]" is missing from JSON.');
        assert(json[r'revoked'] != null, 'Required key "PromoLinkBatchSummary[revoked]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "PromoLinkBatchSummary[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "PromoLinkBatchSummary[created_at]" has a null value in JSON.');
        return true;
      }());

      return PromoLinkBatchSummary(
        id: mapValueOfType<String>(json, r'id')!,
        sourceType: PromoSourceType.fromJson(json[r'source_type'])!,
        sourceId: mapValueOfType<String>(json, r'source_id')!,
        sourceName: mapValueOfType<String>(json, r'source_name')!,
        allocation: mapValueOfType<int>(json, r'allocation')!,
        issued: mapValueOfType<int>(json, r'issued')!,
        claimed: mapValueOfType<int>(json, r'claimed')!,
        revoked: mapValueOfType<int>(json, r'revoked')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<PromoLinkBatchSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoLinkBatchSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoLinkBatchSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoLinkBatchSummary> mapFromJson(dynamic json) {
    final map = <String, PromoLinkBatchSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoLinkBatchSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoLinkBatchSummary-objects as value to a dart map
  static Map<String, List<PromoLinkBatchSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoLinkBatchSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoLinkBatchSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'source_type',
    'source_id',
    'source_name',
    'allocation',
    'issued',
    'claimed',
    'revoked',
    'created_at',
  };
}

