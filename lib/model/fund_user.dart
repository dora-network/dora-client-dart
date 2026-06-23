//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FundUser {
  /// Returns a new [FundUser] instance.
  FundUser({
    required this.userId,
    required this.positionId,
    required this.assetId,
    required this.finalQuantity,
    required this.amount,
  });

  String userId;

  String positionId;

  String assetId;

  String finalQuantity;

  String amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FundUser &&
    other.userId == userId &&
    other.positionId == positionId &&
    other.assetId == assetId &&
    other.finalQuantity == finalQuantity &&
    other.amount == amount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (positionId.hashCode) +
    (assetId.hashCode) +
    (finalQuantity.hashCode) +
    (amount.hashCode);

  @override
  String toString() => 'FundUser[userId=$userId, positionId=$positionId, assetId=$assetId, finalQuantity=$finalQuantity, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'position_id'] = this.positionId;
      json[r'asset_id'] = this.assetId;
      json[r'final_quantity'] = this.finalQuantity;
      json[r'amount'] = this.amount;
    return json;
  }

  /// Returns a new [FundUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FundUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user_id'), 'Required key "FundUser[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "FundUser[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'position_id'), 'Required key "FundUser[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "FundUser[position_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "FundUser[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "FundUser[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'final_quantity'), 'Required key "FundUser[final_quantity]" is missing from JSON.');
        assert(json[r'final_quantity'] != null, 'Required key "FundUser[final_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'amount'), 'Required key "FundUser[amount]" is missing from JSON.');
        assert(json[r'amount'] != null, 'Required key "FundUser[amount]" has a null value in JSON.');
        return true;
      }());

      return FundUser(
        userId: mapValueOfType<String>(json, r'user_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        finalQuantity: mapValueOfType<String>(json, r'final_quantity')!,
        amount: mapValueOfType<String>(json, r'amount')!,
      );
    }
    return null;
  }

  static List<FundUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FundUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FundUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FundUser> mapFromJson(dynamic json) {
    final map = <String, FundUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FundUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FundUser-objects as value to a dart map
  static Map<String, List<FundUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FundUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FundUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'position_id',
    'asset_id',
    'final_quantity',
    'amount',
  };
}

