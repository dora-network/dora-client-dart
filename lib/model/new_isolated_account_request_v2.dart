//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewIsolatedAccountRequestV2 {
  /// Returns a new [NewIsolatedAccountRequestV2] instance.
  NewIsolatedAccountRequestV2({
    required this.globalAccountId,
    required this.assetId,
    required this.quantity,
    this.accountName,
  });

  String globalAccountId;

  String assetId;

  double quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewIsolatedAccountRequestV2 &&
    other.globalAccountId == globalAccountId &&
    other.assetId == assetId &&
    other.quantity == quantity &&
    other.accountName == accountName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (globalAccountId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode) +
    (accountName == null ? 0 : accountName!.hashCode);

  @override
  String toString() => 'NewIsolatedAccountRequestV2[globalAccountId=$globalAccountId, assetId=$assetId, quantity=$quantity, accountName=$accountName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'global_account_id'] = this.globalAccountId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
    if (this.accountName != null) {
      json[r'account_name'] = this.accountName;
    } else {
      json[r'account_name'] = null;
    }
    return json;
  }

  /// Returns a new [NewIsolatedAccountRequestV2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewIsolatedAccountRequestV2? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewIsolatedAccountRequestV2[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewIsolatedAccountRequestV2[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewIsolatedAccountRequestV2(
        globalAccountId: mapValueOfType<String>(json, r'global_account_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<double>(json, r'quantity')!,
        accountName: mapValueOfType<String>(json, r'account_name'),
      );
    }
    return null;
  }

  static List<NewIsolatedAccountRequestV2> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewIsolatedAccountRequestV2>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewIsolatedAccountRequestV2.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewIsolatedAccountRequestV2> mapFromJson(dynamic json) {
    final map = <String, NewIsolatedAccountRequestV2>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewIsolatedAccountRequestV2.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewIsolatedAccountRequestV2-objects as value to a dart map
  static Map<String, List<NewIsolatedAccountRequestV2>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewIsolatedAccountRequestV2>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewIsolatedAccountRequestV2.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'global_account_id',
    'asset_id',
    'quantity',
  };
}

