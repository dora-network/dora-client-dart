//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCouponPaymentsResponseData {
  /// Returns a new [UserCouponPaymentsResponseData] instance.
  UserCouponPaymentsResponseData({
    this.couponPayments = const [],
    this.summaryByAsset = const [],
  });

  List<UserCouponPayment> couponPayments;

  List<UserCouponPaymentAssetSummary> summaryByAsset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCouponPaymentsResponseData &&
    _deepEquality.equals(other.couponPayments, couponPayments) &&
    _deepEquality.equals(other.summaryByAsset, summaryByAsset);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (couponPayments.hashCode) +
    (summaryByAsset.hashCode);

  @override
  String toString() => 'UserCouponPaymentsResponseData[couponPayments=$couponPayments, summaryByAsset=$summaryByAsset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'coupon_payments'] = this.couponPayments;
      json[r'summary_by_asset'] = this.summaryByAsset;
    return json;
  }

  /// Returns a new [UserCouponPaymentsResponseData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCouponPaymentsResponseData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UserCouponPaymentsResponseData(
        couponPayments: UserCouponPayment.listFromJson(json[r'coupon_payments']),
        summaryByAsset: UserCouponPaymentAssetSummary.listFromJson(json[r'summary_by_asset']),
      );
    }
    return null;
  }

  static List<UserCouponPaymentsResponseData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCouponPaymentsResponseData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCouponPaymentsResponseData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCouponPaymentsResponseData> mapFromJson(dynamic json) {
    final map = <String, UserCouponPaymentsResponseData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCouponPaymentsResponseData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCouponPaymentsResponseData-objects as value to a dart map
  static Map<String, List<UserCouponPaymentsResponseData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCouponPaymentsResponseData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCouponPaymentsResponseData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

