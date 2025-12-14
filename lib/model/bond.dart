//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Bond {
  /// Returns a new [Bond] instance.
  Bond({
    this.id,
    this.kind,
    this.couponStartAt,
    this.createdAt,
    this.finalCouponAt,
    this.isin,
    this.issuedAt,
    this.issuer,
    this.maturityAt,
    this.principalValue,
    this.paymentsPerYear,
    this.paymentsEvery,
    this.nextCouponPayment,
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
  BondKind? kind;

  DateTime? couponStartAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  DateTime? finalCouponAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? issuedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? maturityAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? principalValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paymentsPerYear;

  /// Coupon payment frequency in nanoseconds (minimum 1000 i.e. 1 microsecond)
  ///
  /// Minimum value: 1000
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paymentsEvery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? nextCouponPayment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Bond &&
    other.id == id &&
    other.kind == kind &&
    other.couponStartAt == couponStartAt &&
    other.createdAt == createdAt &&
    other.finalCouponAt == finalCouponAt &&
    other.isin == isin &&
    other.issuedAt == issuedAt &&
    other.issuer == issuer &&
    other.maturityAt == maturityAt &&
    other.principalValue == principalValue &&
    other.paymentsPerYear == paymentsPerYear &&
    other.paymentsEvery == paymentsEvery &&
    other.nextCouponPayment == nextCouponPayment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (couponStartAt == null ? 0 : couponStartAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (finalCouponAt == null ? 0 : finalCouponAt!.hashCode) +
    (isin == null ? 0 : isin!.hashCode) +
    (issuedAt == null ? 0 : issuedAt!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode) +
    (maturityAt == null ? 0 : maturityAt!.hashCode) +
    (principalValue == null ? 0 : principalValue!.hashCode) +
    (paymentsPerYear == null ? 0 : paymentsPerYear!.hashCode) +
    (paymentsEvery == null ? 0 : paymentsEvery!.hashCode) +
    (nextCouponPayment == null ? 0 : nextCouponPayment!.hashCode);

  @override
  String toString() => 'Bond[id=$id, kind=$kind, couponStartAt=$couponStartAt, createdAt=$createdAt, finalCouponAt=$finalCouponAt, isin=$isin, issuedAt=$issuedAt, issuer=$issuer, maturityAt=$maturityAt, principalValue=$principalValue, paymentsPerYear=$paymentsPerYear, paymentsEvery=$paymentsEvery, nextCouponPayment=$nextCouponPayment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.couponStartAt != null) {
      json[r'coupon_start_at'] = this.couponStartAt!.toUtc().toIso8601String();
    } else {
      json[r'coupon_start_at'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.finalCouponAt != null) {
      json[r'final_coupon_at'] = this.finalCouponAt!.toUtc().toIso8601String();
    } else {
      json[r'final_coupon_at'] = null;
    }
    if (this.isin != null) {
      json[r'isin'] = this.isin;
    } else {
      json[r'isin'] = null;
    }
    if (this.issuedAt != null) {
      json[r'issued_at'] = this.issuedAt!.toUtc().toIso8601String();
    } else {
      json[r'issued_at'] = null;
    }
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    if (this.maturityAt != null) {
      json[r'maturity_at'] = this.maturityAt!.toUtc().toIso8601String();
    } else {
      json[r'maturity_at'] = null;
    }
    if (this.principalValue != null) {
      json[r'principal_value'] = this.principalValue;
    } else {
      json[r'principal_value'] = null;
    }
    if (this.paymentsPerYear != null) {
      json[r'payments_per_year'] = this.paymentsPerYear;
    } else {
      json[r'payments_per_year'] = null;
    }
    if (this.paymentsEvery != null) {
      json[r'payments_every'] = this.paymentsEvery;
    } else {
      json[r'payments_every'] = null;
    }
    if (this.nextCouponPayment != null) {
      json[r'next_coupon_payment'] = this.nextCouponPayment!.toUtc().toIso8601String();
    } else {
      json[r'next_coupon_payment'] = null;
    }
    return json;
  }

  /// Returns a new [Bond] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Bond? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Bond[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Bond[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Bond(
        id: mapValueOfType<String>(json, r'id'),
        kind: BondKind.fromJson(json[r'kind']),
        couponStartAt: mapDateTime(json, r'coupon_start_at', r''),
        createdAt: mapDateTime(json, r'created_at', r''),
        finalCouponAt: mapDateTime(json, r'final_coupon_at', r''),
        isin: mapValueOfType<String>(json, r'isin'),
        issuedAt: mapDateTime(json, r'issued_at', r''),
        issuer: mapValueOfType<String>(json, r'issuer'),
        maturityAt: mapDateTime(json, r'maturity_at', r''),
        principalValue: mapValueOfType<double>(json, r'principal_value'),
        paymentsPerYear: mapValueOfType<int>(json, r'payments_per_year'),
        paymentsEvery: mapValueOfType<int>(json, r'payments_every'),
        nextCouponPayment: mapDateTime(json, r'next_coupon_payment', r''),
      );
    }
    return null;
  }

  static List<Bond> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Bond>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Bond.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Bond> mapFromJson(dynamic json) {
    final map = <String, Bond>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Bond.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Bond-objects as value to a dart map
  static Map<String, List<Bond>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Bond>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Bond.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

