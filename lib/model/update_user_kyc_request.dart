//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateUserKYCRequest {
  /// Returns a new [UpdateUserKYCRequest] instance.
  UpdateUserKYCRequest({
    required this.completedKyc,
  });

  /// If true, sets kyc_completed_at to now; if false, clears it.
  bool completedKyc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateUserKYCRequest &&
    other.completedKyc == completedKyc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completedKyc.hashCode);

  @override
  String toString() => 'UpdateUserKYCRequest[completedKyc=$completedKyc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'completed_kyc'] = this.completedKyc;
    return json;
  }

  /// Returns a new [UpdateUserKYCRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateUserKYCRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'completed_kyc'), 'Required key "UpdateUserKYCRequest[completed_kyc]" is missing from JSON.');
        assert(json[r'completed_kyc'] != null, 'Required key "UpdateUserKYCRequest[completed_kyc]" has a null value in JSON.');
        return true;
      }());

      return UpdateUserKYCRequest(
        completedKyc: mapValueOfType<bool>(json, r'completed_kyc')!,
      );
    }
    return null;
  }

  static List<UpdateUserKYCRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateUserKYCRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateUserKYCRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateUserKYCRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateUserKYCRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateUserKYCRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateUserKYCRequest-objects as value to a dart map
  static Map<String, List<UpdateUserKYCRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateUserKYCRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateUserKYCRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'completed_kyc',
  };
}

