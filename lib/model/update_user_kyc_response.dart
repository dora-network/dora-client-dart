//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateUserKYCResponse {
  /// Returns a new [UpdateUserKYCResponse] instance.
  UpdateUserKYCResponse({
    required this.userId,
    required this.kycCompleted,
  });

  String userId;

  bool kycCompleted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateUserKYCResponse &&
    other.userId == userId &&
    other.kycCompleted == kycCompleted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (kycCompleted.hashCode);

  @override
  String toString() => 'UpdateUserKYCResponse[userId=$userId, kycCompleted=$kycCompleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'kyc_completed'] = this.kycCompleted;
    return json;
  }

  /// Returns a new [UpdateUserKYCResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateUserKYCResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user_id'), 'Required key "UpdateUserKYCResponse[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "UpdateUserKYCResponse[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'kyc_completed'), 'Required key "UpdateUserKYCResponse[kyc_completed]" is missing from JSON.');
        assert(json[r'kyc_completed'] != null, 'Required key "UpdateUserKYCResponse[kyc_completed]" has a null value in JSON.');
        return true;
      }());

      return UpdateUserKYCResponse(
        userId: mapValueOfType<String>(json, r'user_id')!,
        kycCompleted: mapValueOfType<bool>(json, r'kyc_completed')!,
      );
    }
    return null;
  }

  static List<UpdateUserKYCResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateUserKYCResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateUserKYCResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateUserKYCResponse> mapFromJson(dynamic json) {
    final map = <String, UpdateUserKYCResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateUserKYCResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateUserKYCResponse-objects as value to a dart map
  static Map<String, List<UpdateUserKYCResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateUserKYCResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateUserKYCResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'kyc_completed',
  };
}

