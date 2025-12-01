//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CouponPayment {
  /// Returns a new [CouponPayment] instance.
  CouponPayment({
    this.id,
    this.assetId,
    this.yield_,
    this.startAt,
    this.endAt,
    this.payAt,
    this.availableToPay,
    this.completedAt,
    this.createdAt,
    this.processEvery,
    this.lastProcessedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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
  num? yield_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? payAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? availableToPay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? completedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Number of nanoseconds to wait between coupon payment processing, must be at least 1000 (1 microsecond)
  ///
  /// Minimum value: 1000
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processEvery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastProcessedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CouponPayment &&
    other.id == id &&
    other.assetId == assetId &&
    other.yield_ == yield_ &&
    other.startAt == startAt &&
    other.endAt == endAt &&
    other.payAt == payAt &&
    other.availableToPay == availableToPay &&
    other.completedAt == completedAt &&
    other.createdAt == createdAt &&
    other.processEvery == processEvery &&
    other.lastProcessedAt == lastProcessedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode) +
    (yield_ == null ? 0 : yield_!.hashCode) +
    (startAt == null ? 0 : startAt!.hashCode) +
    (endAt == null ? 0 : endAt!.hashCode) +
    (payAt == null ? 0 : payAt!.hashCode) +
    (availableToPay == null ? 0 : availableToPay!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (processEvery == null ? 0 : processEvery!.hashCode) +
    (lastProcessedAt == null ? 0 : lastProcessedAt!.hashCode);

  @override
  String toString() => 'CouponPayment[id=$id, assetId=$assetId, yield_=$yield_, startAt=$startAt, endAt=$endAt, payAt=$payAt, availableToPay=$availableToPay, completedAt=$completedAt, createdAt=$createdAt, processEvery=$processEvery, lastProcessedAt=$lastProcessedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.yield_ != null) {
      json[r'yield'] = this.yield_;
    } else {
      json[r'yield'] = null;
    }
    if (this.startAt != null) {
      json[r'start_at'] = this.startAt!.toUtc().toIso8601String();
    } else {
      json[r'start_at'] = null;
    }
    if (this.endAt != null) {
      json[r'end_at'] = this.endAt!.toUtc().toIso8601String();
    } else {
      json[r'end_at'] = null;
    }
    if (this.payAt != null) {
      json[r'pay_at'] = this.payAt!.toUtc().toIso8601String();
    } else {
      json[r'pay_at'] = null;
    }
    if (this.availableToPay != null) {
      json[r'available_to_pay'] = this.availableToPay;
    } else {
      json[r'available_to_pay'] = null;
    }
    if (this.completedAt != null) {
      json[r'completed_at'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completed_at'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.processEvery != null) {
      json[r'process_every'] = this.processEvery;
    } else {
      json[r'process_every'] = null;
    }
    if (this.lastProcessedAt != null) {
      json[r'last_processed_at'] = this.lastProcessedAt!.toUtc().toIso8601String();
    } else {
      json[r'last_processed_at'] = null;
    }
    return json;
  }

  /// Returns a new [CouponPayment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CouponPayment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CouponPayment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CouponPayment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CouponPayment(
        id: mapValueOfType<String>(json, r'id'),
        assetId: mapValueOfType<String>(json, r'asset_id'),
        yield_: num.parse('${json[r'yield']}'),
        startAt: mapDateTime(json, r'start_at', r''),
        endAt: mapDateTime(json, r'end_at', r''),
        payAt: mapDateTime(json, r'pay_at', r''),
        availableToPay: mapValueOfType<double>(json, r'available_to_pay'),
        completedAt: mapDateTime(json, r'completed_at', r''),
        createdAt: mapDateTime(json, r'created_at', r''),
        processEvery: mapValueOfType<int>(json, r'process_every'),
        lastProcessedAt: mapDateTime(json, r'last_processed_at', r''),
      );
    }
    return null;
  }

  static List<CouponPayment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponPayment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponPayment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CouponPayment> mapFromJson(dynamic json) {
    final map = <String, CouponPayment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CouponPayment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CouponPayment-objects as value to a dart map
  static Map<String, List<CouponPayment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CouponPayment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CouponPayment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

