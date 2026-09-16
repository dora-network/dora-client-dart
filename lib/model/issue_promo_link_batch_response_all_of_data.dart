//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuePromoLinkBatchResponseAllOfData {
  /// Returns a new [IssuePromoLinkBatchResponseAllOfData] instance.
  IssuePromoLinkBatchResponseAllOfData({
    required this.batchId,
    required this.sourceId,
    required this.allocation,
    this.links = const [],
  });

  String batchId;

  String sourceId;

  int allocation;

  List<IssuedPromoLink> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssuePromoLinkBatchResponseAllOfData &&
    other.batchId == batchId &&
    other.sourceId == sourceId &&
    other.allocation == allocation &&
    _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batchId.hashCode) +
    (sourceId.hashCode) +
    (allocation.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'IssuePromoLinkBatchResponseAllOfData[batchId=$batchId, sourceId=$sourceId, allocation=$allocation, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'batch_id'] = this.batchId;
      json[r'source_id'] = this.sourceId;
      json[r'allocation'] = this.allocation;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [IssuePromoLinkBatchResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuePromoLinkBatchResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'batch_id'), 'Required key "IssuePromoLinkBatchResponseAllOfData[batch_id]" is missing from JSON.');
        assert(json[r'batch_id'] != null, 'Required key "IssuePromoLinkBatchResponseAllOfData[batch_id]" has a null value in JSON.');
        assert(json.containsKey(r'source_id'), 'Required key "IssuePromoLinkBatchResponseAllOfData[source_id]" is missing from JSON.');
        assert(json[r'source_id'] != null, 'Required key "IssuePromoLinkBatchResponseAllOfData[source_id]" has a null value in JSON.');
        assert(json.containsKey(r'allocation'), 'Required key "IssuePromoLinkBatchResponseAllOfData[allocation]" is missing from JSON.');
        assert(json[r'allocation'] != null, 'Required key "IssuePromoLinkBatchResponseAllOfData[allocation]" has a null value in JSON.');
        assert(json.containsKey(r'links'), 'Required key "IssuePromoLinkBatchResponseAllOfData[links]" is missing from JSON.');
        assert(json[r'links'] != null, 'Required key "IssuePromoLinkBatchResponseAllOfData[links]" has a null value in JSON.');
        return true;
      }());

      return IssuePromoLinkBatchResponseAllOfData(
        batchId: mapValueOfType<String>(json, r'batch_id')!,
        sourceId: mapValueOfType<String>(json, r'source_id')!,
        allocation: mapValueOfType<int>(json, r'allocation')!,
        links: IssuedPromoLink.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<IssuePromoLinkBatchResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuePromoLinkBatchResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuePromoLinkBatchResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuePromoLinkBatchResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, IssuePromoLinkBatchResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuePromoLinkBatchResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuePromoLinkBatchResponseAllOfData-objects as value to a dart map
  static Map<String, List<IssuePromoLinkBatchResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuePromoLinkBatchResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuePromoLinkBatchResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'batch_id',
    'source_id',
    'allocation',
    'links',
  };
}

