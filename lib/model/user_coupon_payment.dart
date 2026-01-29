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
    this.userId,
    this.positionId,
    this.assetId,
    this.couponPaymentId,
    this.seq,
    this.pending,
    this.completed,
    this.startedAt,
    this.endedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? positionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? couponPaymentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pending;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? completed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endedAt;

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
    (userId == null ? 0 : userId!.hashCode) +
    (positionId == null ? 0 : positionId!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode) +
    (couponPaymentId == null ? 0 : couponPaymentId!.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (pending == null ? 0 : pending!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode);

  @override
  String toString() => 'UserCouponPayment[userId=$userId, positionId=$positionId, assetId=$assetId, couponPaymentId=$couponPaymentId, seq=$seq, pending=$pending, completed=$completed, startedAt=$startedAt, endedAt=$endedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.positionId != null) {
      json[r'position_id'] = this.positionId;
    } else {
      json[r'position_id'] = null;
    }
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.couponPaymentId != null) {
      json[r'coupon_payment_id'] = this.couponPaymentId;
    } else {
      json[r'coupon_payment_id'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.pending != null) {
      json[r'pending'] = this.pending;
    } else {
      json[r'pending'] = null;
    }
    if (this.completed != null) {
      json[r'completed'] = this.completed;
    } else {
      json[r'completed'] = null;
    }
    if (this.startedAt != null) {
      json[r'started_at'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'started_at'] = null;
    }
    if (this.endedAt != null) {
      json[r'ended_at'] = this.endedAt!.toUtc().toIso8601String();
    } else {
      json[r'ended_at'] = null;
    }
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
        userId: mapValueOfType<String>(json, r'user_id'),
        positionId: mapValueOfType<String>(json, r'position_id'),
        assetId: mapValueOfType<String>(json, r'asset_id'),
        couponPaymentId: mapValueOfType<String>(json, r'coupon_payment_id'),
        seq: mapValueOfType<int>(json, r'seq'),
        pending: mapValueOfType<String>(json, r'pending'),
        completed: mapValueOfType<String>(json, r'completed'),
        startedAt: mapDateTime(json, r'started_at', r''),
        endedAt: mapDateTime(json, r'ended_at', r''),
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
  };
}

