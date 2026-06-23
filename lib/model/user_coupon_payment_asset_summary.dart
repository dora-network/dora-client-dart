//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCouponPaymentAssetSummary {
  /// Returns a new [UserCouponPaymentAssetSummary] instance.
  UserCouponPaymentAssetSummary({
    required this.assetId,
    required this.pending,
    required this.completed,
  });

  String assetId;

  String pending;

  String completed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCouponPaymentAssetSummary &&
    other.assetId == assetId &&
    other.pending == pending &&
    other.completed == completed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (pending.hashCode) +
    (completed.hashCode);

  @override
  String toString() => 'UserCouponPaymentAssetSummary[assetId=$assetId, pending=$pending, completed=$completed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'pending'] = this.pending;
      json[r'completed'] = this.completed;
    return json;
  }

  /// Returns a new [UserCouponPaymentAssetSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCouponPaymentAssetSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'asset_id'), 'Required key "UserCouponPaymentAssetSummary[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "UserCouponPaymentAssetSummary[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'pending'), 'Required key "UserCouponPaymentAssetSummary[pending]" is missing from JSON.');
        assert(json[r'pending'] != null, 'Required key "UserCouponPaymentAssetSummary[pending]" has a null value in JSON.');
        assert(json.containsKey(r'completed'), 'Required key "UserCouponPaymentAssetSummary[completed]" is missing from JSON.');
        assert(json[r'completed'] != null, 'Required key "UserCouponPaymentAssetSummary[completed]" has a null value in JSON.');
        return true;
      }());

      return UserCouponPaymentAssetSummary(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        pending: mapValueOfType<String>(json, r'pending')!,
        completed: mapValueOfType<String>(json, r'completed')!,
      );
    }
    return null;
  }

  static List<UserCouponPaymentAssetSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCouponPaymentAssetSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCouponPaymentAssetSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCouponPaymentAssetSummary> mapFromJson(dynamic json) {
    final map = <String, UserCouponPaymentAssetSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCouponPaymentAssetSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCouponPaymentAssetSummary-objects as value to a dart map
  static Map<String, List<UserCouponPaymentAssetSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCouponPaymentAssetSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCouponPaymentAssetSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asset_id',
    'pending',
    'completed',
  };
}

