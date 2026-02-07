//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayLeverageAccruedInterestRequest {
  /// Returns a new [PayLeverageAccruedInterestRequest] instance.
  PayLeverageAccruedInterestRequest({
    required this.positionId,
    required this.assetId,
    required this.quantity,
  });

  String positionId;

  String assetId;

  String quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PayLeverageAccruedInterestRequest &&
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
  String toString() => 'PayLeverageAccruedInterestRequest[positionId=$positionId, assetId=$assetId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [PayLeverageAccruedInterestRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayLeverageAccruedInterestRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PayLeverageAccruedInterestRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PayLeverageAccruedInterestRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PayLeverageAccruedInterestRequest(
        positionId: mapValueOfType<String>(json, r'position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<PayLeverageAccruedInterestRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PayLeverageAccruedInterestRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayLeverageAccruedInterestRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayLeverageAccruedInterestRequest> mapFromJson(dynamic json) {
    final map = <String, PayLeverageAccruedInterestRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayLeverageAccruedInterestRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayLeverageAccruedInterestRequest-objects as value to a dart map
  static Map<String, List<PayLeverageAccruedInterestRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PayLeverageAccruedInterestRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayLeverageAccruedInterestRequest.listFromJson(entry.value, growable: growable,);
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

