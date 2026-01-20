//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClaimLeverageAccruedInterest {
  /// Returns a new [ClaimLeverageAccruedInterest] instance.
  ClaimLeverageAccruedInterest({
    this.transactionId,
    this.assetId,
    this.positionId,
    this.currentAccruedInterestUsd,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

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
  String? positionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentAccruedInterestUsd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimLeverageAccruedInterest &&
    other.transactionId == transactionId &&
    other.assetId == assetId &&
    other.positionId == positionId &&
    other.currentAccruedInterestUsd == currentAccruedInterestUsd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode) +
    (positionId == null ? 0 : positionId!.hashCode) +
    (currentAccruedInterestUsd == null ? 0 : currentAccruedInterestUsd!.hashCode);

  @override
  String toString() => 'ClaimLeverageAccruedInterest[transactionId=$transactionId, assetId=$assetId, positionId=$positionId, currentAccruedInterestUsd=$currentAccruedInterestUsd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.transactionId != null) {
      json[r'transaction_id'] = this.transactionId;
    } else {
      json[r'transaction_id'] = null;
    }
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.positionId != null) {
      json[r'position_id'] = this.positionId;
    } else {
      json[r'position_id'] = null;
    }
    if (this.currentAccruedInterestUsd != null) {
      json[r'current_accrued_interest_usd'] = this.currentAccruedInterestUsd;
    } else {
      json[r'current_accrued_interest_usd'] = null;
    }
    return json;
  }

  /// Returns a new [ClaimLeverageAccruedInterest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimLeverageAccruedInterest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClaimLeverageAccruedInterest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClaimLeverageAccruedInterest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClaimLeverageAccruedInterest(
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
        assetId: mapValueOfType<String>(json, r'asset_id'),
        positionId: mapValueOfType<String>(json, r'position_id'),
        currentAccruedInterestUsd: mapValueOfType<String>(json, r'current_accrued_interest_usd'),
      );
    }
    return null;
  }

  static List<ClaimLeverageAccruedInterest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimLeverageAccruedInterest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimLeverageAccruedInterest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimLeverageAccruedInterest> mapFromJson(dynamic json) {
    final map = <String, ClaimLeverageAccruedInterest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimLeverageAccruedInterest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimLeverageAccruedInterest-objects as value to a dart map
  static Map<String, List<ClaimLeverageAccruedInterest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimLeverageAccruedInterest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimLeverageAccruedInterest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

