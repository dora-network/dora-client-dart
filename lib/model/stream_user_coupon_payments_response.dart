//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamUserCouponPaymentsResponse {
  /// Returns a new [StreamUserCouponPaymentsResponse] instance.
  StreamUserCouponPaymentsResponse({
    this.entries = const [],
    this.summaryByAsset = const [],
  });

  List<StreamUserCouponPaymentsEntry> entries;

  List<UserCouponPaymentAssetSummary> summaryByAsset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamUserCouponPaymentsResponse &&
    _deepEquality.equals(other.entries, entries) &&
    _deepEquality.equals(other.summaryByAsset, summaryByAsset);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entries.hashCode) +
    (summaryByAsset.hashCode);

  @override
  String toString() => 'StreamUserCouponPaymentsResponse[entries=$entries, summaryByAsset=$summaryByAsset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entries'] = this.entries;
      json[r'summary_by_asset'] = this.summaryByAsset;
    return json;
  }

  /// Returns a new [StreamUserCouponPaymentsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamUserCouponPaymentsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamUserCouponPaymentsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamUserCouponPaymentsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamUserCouponPaymentsResponse(
        entries: StreamUserCouponPaymentsEntry.listFromJson(json[r'entries']),
        summaryByAsset: UserCouponPaymentAssetSummary.listFromJson(json[r'summary_by_asset']),
      );
    }
    return null;
  }

  static List<StreamUserCouponPaymentsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamUserCouponPaymentsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamUserCouponPaymentsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamUserCouponPaymentsResponse> mapFromJson(dynamic json) {
    final map = <String, StreamUserCouponPaymentsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamUserCouponPaymentsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamUserCouponPaymentsResponse-objects as value to a dart map
  static Map<String, List<StreamUserCouponPaymentsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamUserCouponPaymentsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamUserCouponPaymentsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

