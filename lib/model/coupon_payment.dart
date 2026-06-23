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
    required this.id,
    required this.assetId,
    required this.yield_,
    required this.startAt,
    required this.endAt,
    required this.payAt,
    required this.availableToPay,
    required this.completedAt,
    required this.createdAt,
    required this.processEvery,
    required this.lastProcessedAt,
  });

  String id;

  String assetId;

  /// Minimum value: 0
  num yield_;

  DateTime startAt;

  DateTime endAt;

  DateTime payAt;

  String availableToPay;

  DateTime completedAt;

  DateTime createdAt;

  /// Number of nanoseconds to wait between coupon payment processing, must be at least 1000 (1 microsecond)
  ///
  /// Minimum value: 1000
  int processEvery;

  DateTime lastProcessedAt;

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
    (id.hashCode) +
    (assetId.hashCode) +
    (yield_.hashCode) +
    (startAt.hashCode) +
    (endAt.hashCode) +
    (payAt.hashCode) +
    (availableToPay.hashCode) +
    (completedAt.hashCode) +
    (createdAt.hashCode) +
    (processEvery.hashCode) +
    (lastProcessedAt.hashCode);

  @override
  String toString() => 'CouponPayment[id=$id, assetId=$assetId, yield_=$yield_, startAt=$startAt, endAt=$endAt, payAt=$payAt, availableToPay=$availableToPay, completedAt=$completedAt, createdAt=$createdAt, processEvery=$processEvery, lastProcessedAt=$lastProcessedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'asset_id'] = this.assetId;
      json[r'yield'] = this.yield_;
      json[r'start_at'] = this.startAt.toUtc().toIso8601String();
      json[r'end_at'] = this.endAt.toUtc().toIso8601String();
      json[r'pay_at'] = this.payAt.toUtc().toIso8601String();
      json[r'available_to_pay'] = this.availableToPay;
      json[r'completed_at'] = this.completedAt.toUtc().toIso8601String();
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'process_every'] = this.processEvery;
      json[r'last_processed_at'] = this.lastProcessedAt.toUtc().toIso8601String();
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
        assert(json.containsKey(r'id'), 'Required key "CouponPayment[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "CouponPayment[id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "CouponPayment[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "CouponPayment[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'yield'), 'Required key "CouponPayment[yield]" is missing from JSON.');
        assert(json[r'yield'] != null, 'Required key "CouponPayment[yield]" has a null value in JSON.');
        assert(json.containsKey(r'start_at'), 'Required key "CouponPayment[start_at]" is missing from JSON.');
        assert(json[r'start_at'] != null, 'Required key "CouponPayment[start_at]" has a null value in JSON.');
        assert(json.containsKey(r'end_at'), 'Required key "CouponPayment[end_at]" is missing from JSON.');
        assert(json[r'end_at'] != null, 'Required key "CouponPayment[end_at]" has a null value in JSON.');
        assert(json.containsKey(r'pay_at'), 'Required key "CouponPayment[pay_at]" is missing from JSON.');
        assert(json[r'pay_at'] != null, 'Required key "CouponPayment[pay_at]" has a null value in JSON.');
        assert(json.containsKey(r'available_to_pay'), 'Required key "CouponPayment[available_to_pay]" is missing from JSON.');
        assert(json[r'available_to_pay'] != null, 'Required key "CouponPayment[available_to_pay]" has a null value in JSON.');
        assert(json.containsKey(r'completed_at'), 'Required key "CouponPayment[completed_at]" is missing from JSON.');
        assert(json[r'completed_at'] != null, 'Required key "CouponPayment[completed_at]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "CouponPayment[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "CouponPayment[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'process_every'), 'Required key "CouponPayment[process_every]" is missing from JSON.');
        assert(json[r'process_every'] != null, 'Required key "CouponPayment[process_every]" has a null value in JSON.');
        assert(json.containsKey(r'last_processed_at'), 'Required key "CouponPayment[last_processed_at]" is missing from JSON.');
        assert(json[r'last_processed_at'] != null, 'Required key "CouponPayment[last_processed_at]" has a null value in JSON.');
        return true;
      }());

      return CouponPayment(
        id: mapValueOfType<String>(json, r'id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        yield_: num.parse('${json[r'yield']}'),
        startAt: mapDateTime(json, r'start_at', r'')!,
        endAt: mapDateTime(json, r'end_at', r'')!,
        payAt: mapDateTime(json, r'pay_at', r'')!,
        availableToPay: mapValueOfType<String>(json, r'available_to_pay')!,
        completedAt: mapDateTime(json, r'completed_at', r'')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        processEvery: mapValueOfType<int>(json, r'process_every')!,
        lastProcessedAt: mapDateTime(json, r'last_processed_at', r'')!,
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
    'id',
    'asset_id',
    'yield',
    'start_at',
    'end_at',
    'pay_at',
    'available_to_pay',
    'completed_at',
    'created_at',
    'process_every',
    'last_processed_at',
  };
}

