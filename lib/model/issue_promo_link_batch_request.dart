//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuePromoLinkBatchRequest {
  /// Returns a new [IssuePromoLinkBatchRequest] instance.
  IssuePromoLinkBatchRequest({
    required this.sourceType,
    required this.sourceId,
    this.sourceName,
    required this.allocation,
    this.note,
    this.expiresAt,
  });

  PromoSourceType sourceType;

  String sourceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceName;

  /// Cannot exceed the configured max_links_per_batch or remaining campaign capacity.
  ///
  /// Minimum value: 1
  int allocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Defaults to challenge end and must fall between challenge start and end in the future.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssuePromoLinkBatchRequest &&
    other.sourceType == sourceType &&
    other.sourceId == sourceId &&
    other.sourceName == sourceName &&
    other.allocation == allocation &&
    other.note == note &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceType.hashCode) +
    (sourceId.hashCode) +
    (sourceName == null ? 0 : sourceName!.hashCode) +
    (allocation.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'IssuePromoLinkBatchRequest[sourceType=$sourceType, sourceId=$sourceId, sourceName=$sourceName, allocation=$allocation, note=$note, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source_type'] = this.sourceType;
      json[r'source_id'] = this.sourceId;
    if (this.sourceName != null) {
      json[r'source_name'] = this.sourceName;
    } else {
      json[r'source_name'] = null;
    }
      json[r'allocation'] = this.allocation;
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    return json;
  }

  /// Returns a new [IssuePromoLinkBatchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuePromoLinkBatchRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'source_type'), 'Required key "IssuePromoLinkBatchRequest[source_type]" is missing from JSON.');
        assert(json[r'source_type'] != null, 'Required key "IssuePromoLinkBatchRequest[source_type]" has a null value in JSON.');
        assert(json.containsKey(r'source_id'), 'Required key "IssuePromoLinkBatchRequest[source_id]" is missing from JSON.');
        assert(json[r'source_id'] != null, 'Required key "IssuePromoLinkBatchRequest[source_id]" has a null value in JSON.');
        assert(json.containsKey(r'allocation'), 'Required key "IssuePromoLinkBatchRequest[allocation]" is missing from JSON.');
        assert(json[r'allocation'] != null, 'Required key "IssuePromoLinkBatchRequest[allocation]" has a null value in JSON.');
        return true;
      }());

      return IssuePromoLinkBatchRequest(
        sourceType: PromoSourceType.fromJson(json[r'source_type'])!,
        sourceId: mapValueOfType<String>(json, r'source_id')!,
        sourceName: mapValueOfType<String>(json, r'source_name'),
        allocation: mapValueOfType<int>(json, r'allocation')!,
        note: mapValueOfType<String>(json, r'note'),
        expiresAt: mapDateTime(json, r'expires_at', r''),
      );
    }
    return null;
  }

  static List<IssuePromoLinkBatchRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuePromoLinkBatchRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuePromoLinkBatchRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuePromoLinkBatchRequest> mapFromJson(dynamic json) {
    final map = <String, IssuePromoLinkBatchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuePromoLinkBatchRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuePromoLinkBatchRequest-objects as value to a dart map
  static Map<String, List<IssuePromoLinkBatchRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuePromoLinkBatchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuePromoLinkBatchRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source_type',
    'source_id',
    'allocation',
  };
}

