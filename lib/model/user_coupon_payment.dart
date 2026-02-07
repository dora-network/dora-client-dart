//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCouponPayment {
  /// Returns a new [UserCouponPayment] instance.
  UserCouponPayment({
    required this.userId,
    required this.positionId,
    required this.assetId,
    required this.couponPaymentId,
    required this.seq,
    required this.pending,
    required this.completed,
    required this.startedAt,
    required this.endedAt,
  });

  String userId;

  String positionId;

  String assetId;

  String couponPaymentId;

  /// Minimum value: 0
  int seq;

  String pending;

  String completed;

  DateTime startedAt;

  DateTime endedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCouponPayment &&
    other.userId == userId &&
    other.positionId == positionId &&
    other.assetId == assetId &&
    other.couponPaymentId == couponPaymentId &&
    other.seq == seq &&
    other.pending == pending &&
    other.completed == completed &&
    other.startedAt == startedAt &&
    other.endedAt == endedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (positionId.hashCode) +
    (assetId.hashCode) +
    (couponPaymentId.hashCode) +
    (seq.hashCode) +
    (pending.hashCode) +
    (completed.hashCode) +
    (startedAt.hashCode) +
    (endedAt.hashCode);

  @override
  String toString() => 'UserCouponPayment[userId=$userId, positionId=$positionId, assetId=$assetId, couponPaymentId=$couponPaymentId, seq=$seq, pending=$pending, completed=$completed, startedAt=$startedAt, endedAt=$endedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'position_id'] = this.positionId;
      json[r'asset_id'] = this.assetId;
      json[r'coupon_payment_id'] = this.couponPaymentId;
      json[r'seq'] = this.seq;
      json[r'pending'] = this.pending;
      json[r'completed'] = this.completed;
      json[r'started_at'] = this.startedAt.toUtc().toIso8601String();
      json[r'ended_at'] = this.endedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserCouponPayment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCouponPayment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserCouponPayment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserCouponPayment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCouponPayment(
        userId: mapValueOfType<String>(json, r'user_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        couponPaymentId: mapValueOfType<String>(json, r'coupon_payment_id')!,
        seq: mapValueOfType<int>(json, r'seq')!,
        pending: mapValueOfType<String>(json, r'pending')!,
        completed: mapValueOfType<String>(json, r'completed')!,
        startedAt: mapDateTime(json, r'started_at', r'')!,
        endedAt: mapDateTime(json, r'ended_at', r'')!,
      );
    }
    return null;
  }

  static List<UserCouponPayment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCouponPayment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCouponPayment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCouponPayment> mapFromJson(dynamic json) {
    final map = <String, UserCouponPayment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCouponPayment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCouponPayment-objects as value to a dart map
  static Map<String, List<UserCouponPayment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCouponPayment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCouponPayment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'position_id',
    'asset_id',
    'coupon_payment_id',
    'seq',
    'pending',
    'completed',
    'started_at',
    'ended_at',
  };
}

