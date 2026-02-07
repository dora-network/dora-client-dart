//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SettleLeverageAccruedInterest {
  /// Returns a new [SettleLeverageAccruedInterest] instance.
  SettleLeverageAccruedInterest({
    required this.transactionId,
    required this.assetId,
    required this.positionId,
    required this.currentAccruedInterestUsd,
  });

  String transactionId;

  String assetId;

  String positionId;

  String currentAccruedInterestUsd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SettleLeverageAccruedInterest &&
    other.transactionId == transactionId &&
    other.assetId == assetId &&
    other.positionId == positionId &&
    other.currentAccruedInterestUsd == currentAccruedInterestUsd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (transactionId.hashCode) +
    (assetId.hashCode) +
    (positionId.hashCode) +
    (currentAccruedInterestUsd.hashCode);

  @override
  String toString() => 'SettleLeverageAccruedInterest[transactionId=$transactionId, assetId=$assetId, positionId=$positionId, currentAccruedInterestUsd=$currentAccruedInterestUsd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_id'] = this.transactionId;
      json[r'asset_id'] = this.assetId;
      json[r'position_id'] = this.positionId;
      json[r'current_accrued_interest_usd'] = this.currentAccruedInterestUsd;
    return json;
  }

  /// Returns a new [SettleLeverageAccruedInterest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SettleLeverageAccruedInterest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SettleLeverageAccruedInterest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SettleLeverageAccruedInterest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SettleLeverageAccruedInterest(
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        currentAccruedInterestUsd: mapValueOfType<String>(json, r'current_accrued_interest_usd')!,
      );
    }
    return null;
  }

  static List<SettleLeverageAccruedInterest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SettleLeverageAccruedInterest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettleLeverageAccruedInterest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SettleLeverageAccruedInterest> mapFromJson(dynamic json) {
    final map = <String, SettleLeverageAccruedInterest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SettleLeverageAccruedInterest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SettleLeverageAccruedInterest-objects as value to a dart map
  static Map<String, List<SettleLeverageAccruedInterest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SettleLeverageAccruedInterest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SettleLeverageAccruedInterest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'transaction_id',
    'asset_id',
    'position_id',
    'current_accrued_interest_usd',
  };
}

