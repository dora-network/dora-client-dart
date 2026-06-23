//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SettleLeverageAccruedInterestRequest {
  /// Returns a new [SettleLeverageAccruedInterestRequest] instance.
  SettleLeverageAccruedInterestRequest({
    this.assetId,
    this.positionId,
  });

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is SettleLeverageAccruedInterestRequest &&
    other.assetId == assetId &&
    other.positionId == positionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId == null ? 0 : assetId!.hashCode) +
    (positionId == null ? 0 : positionId!.hashCode);

  @override
  String toString() => 'SettleLeverageAccruedInterestRequest[assetId=$assetId, positionId=$positionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [SettleLeverageAccruedInterestRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SettleLeverageAccruedInterestRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return SettleLeverageAccruedInterestRequest(
        assetId: mapValueOfType<String>(json, r'asset_id'),
        positionId: mapValueOfType<String>(json, r'position_id'),
      );
    }
    return null;
  }

  static List<SettleLeverageAccruedInterestRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SettleLeverageAccruedInterestRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettleLeverageAccruedInterestRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SettleLeverageAccruedInterestRequest> mapFromJson(dynamic json) {
    final map = <String, SettleLeverageAccruedInterestRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SettleLeverageAccruedInterestRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SettleLeverageAccruedInterestRequest-objects as value to a dart map
  static Map<String, List<SettleLeverageAccruedInterestRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SettleLeverageAccruedInterestRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SettleLeverageAccruedInterestRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

