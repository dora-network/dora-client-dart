//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LeverageBalanceResponse {
  /// Returns a new [LeverageBalanceResponse] instance.
  LeverageBalanceResponse({
    this.leverageBalance,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? leverageBalance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeverageBalanceResponse &&
    other.leverageBalance == leverageBalance;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leverageBalance == null ? 0 : leverageBalance!.hashCode);

  @override
  String toString() => 'LeverageBalanceResponse[leverageBalance=$leverageBalance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.leverageBalance != null) {
      json[r'leverage_balance'] = this.leverageBalance;
    } else {
      json[r'leverage_balance'] = null;
    }
    return json;
  }

  /// Returns a new [LeverageBalanceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeverageBalanceResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeverageBalanceResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeverageBalanceResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeverageBalanceResponse(
        leverageBalance: mapValueOfType<Object>(json, r'leverage_balance'),
      );
    }
    return null;
  }

  static List<LeverageBalanceResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeverageBalanceResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeverageBalanceResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeverageBalanceResponse> mapFromJson(dynamic json) {
    final map = <String, LeverageBalanceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeverageBalanceResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeverageBalanceResponse-objects as value to a dart map
  static Map<String, List<LeverageBalanceResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeverageBalanceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeverageBalanceResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

