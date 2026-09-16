//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateReferralReport {
  /// Returns a new [AffiliateReferralReport] instance.
  AffiliateReferralReport({
    required this.date,
    this.referrals = const [],
    required this.hasMore,
  });

  DateTime date;

  List<AffiliateReferral> referrals;

  bool hasMore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateReferralReport &&
    other.date == date &&
    _deepEquality.equals(other.referrals, referrals) &&
    other.hasMore == hasMore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (referrals.hashCode) +
    (hasMore.hashCode);

  @override
  String toString() => 'AffiliateReferralReport[date=$date, referrals=$referrals, hasMore=$hasMore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'referrals'] = this.referrals;
      json[r'has_more'] = this.hasMore;
    return json;
  }

  /// Returns a new [AffiliateReferralReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateReferralReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'date'), 'Required key "AffiliateReferralReport[date]" is missing from JSON.');
        assert(json[r'date'] != null, 'Required key "AffiliateReferralReport[date]" has a null value in JSON.');
        assert(json.containsKey(r'referrals'), 'Required key "AffiliateReferralReport[referrals]" is missing from JSON.');
        assert(json[r'referrals'] != null, 'Required key "AffiliateReferralReport[referrals]" has a null value in JSON.');
        assert(json.containsKey(r'has_more'), 'Required key "AffiliateReferralReport[has_more]" is missing from JSON.');
        assert(json[r'has_more'] != null, 'Required key "AffiliateReferralReport[has_more]" has a null value in JSON.');
        return true;
      }());

      return AffiliateReferralReport(
        date: mapDateTime(json, r'date', r'')!,
        referrals: AffiliateReferral.listFromJson(json[r'referrals']),
        hasMore: mapValueOfType<bool>(json, r'has_more')!,
      );
    }
    return null;
  }

  static List<AffiliateReferralReport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateReferralReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateReferralReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateReferralReport> mapFromJson(dynamic json) {
    final map = <String, AffiliateReferralReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateReferralReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateReferralReport-objects as value to a dart map
  static Map<String, List<AffiliateReferralReport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateReferralReport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateReferralReport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'referrals',
    'has_more',
  };
}

