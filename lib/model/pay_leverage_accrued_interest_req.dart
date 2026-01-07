//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayLeverageAccruedInterestReq {
  /// Returns a new [PayLeverageAccruedInterestReq] instance.
  PayLeverageAccruedInterestReq({
    required this.positionId,
    required this.assetId,
    required this.quantity,
  });

  String positionId;

  String assetId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PayLeverageAccruedInterestReq &&
    other.positionId == positionId &&
    other.assetId == assetId &&
    other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (positionId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'PayLeverageAccruedInterestReq[positionId=$positionId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [PayLeverageAccruedInterestReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayLeverageAccruedInterestReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PayLeverageAccruedInterestReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PayLeverageAccruedInterestReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PayLeverageAccruedInterestReq(
        positionId: mapValueOfType<String>(json, r'position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<PayLeverageAccruedInterestReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PayLeverageAccruedInterestReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayLeverageAccruedInterestReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayLeverageAccruedInterestReq> mapFromJson(dynamic json) {
    final map = <String, PayLeverageAccruedInterestReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayLeverageAccruedInterestReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayLeverageAccruedInterestReq-objects as value to a dart map
  static Map<String, List<PayLeverageAccruedInterestReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PayLeverageAccruedInterestReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayLeverageAccruedInterestReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position_id',
    'asset_id',
    'quantity',
  };
}

