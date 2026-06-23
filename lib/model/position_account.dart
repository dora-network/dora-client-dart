//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PositionAccount {
  /// Returns a new [PositionAccount] instance.
  PositionAccount({
    required this.positionId,
    required this.positionName,
    required this.isGlobal,
  });

  /// The ID of the position account
  String positionId;

  /// The name of the position account
  String positionName;

  /// Whether the position account is the global or an isolated account
  bool isGlobal;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PositionAccount &&
    other.positionId == positionId &&
    other.positionName == positionName &&
    other.isGlobal == isGlobal;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (positionId.hashCode) +
    (positionName.hashCode) +
    (isGlobal.hashCode);

  @override
  String toString() => 'PositionAccount[positionId=$positionId, positionName=$positionName, isGlobal=$isGlobal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
      json[r'position_name'] = this.positionName;
      json[r'is_global'] = this.isGlobal;
    return json;
  }

  /// Returns a new [PositionAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PositionAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'position_id'), 'Required key "PositionAccount[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "PositionAccount[position_id]" has a null value in JSON.');
        assert(json.containsKey(r'position_name'), 'Required key "PositionAccount[position_name]" is missing from JSON.');
        assert(json[r'position_name'] != null, 'Required key "PositionAccount[position_name]" has a null value in JSON.');
        assert(json.containsKey(r'is_global'), 'Required key "PositionAccount[is_global]" is missing from JSON.');
        assert(json[r'is_global'] != null, 'Required key "PositionAccount[is_global]" has a null value in JSON.');
        return true;
      }());

      return PositionAccount(
        positionId: mapValueOfType<String>(json, r'position_id')!,
        positionName: mapValueOfType<String>(json, r'position_name')!,
        isGlobal: mapValueOfType<bool>(json, r'is_global')!,
      );
    }
    return null;
  }

  static List<PositionAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PositionAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PositionAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PositionAccount> mapFromJson(dynamic json) {
    final map = <String, PositionAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PositionAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PositionAccount-objects as value to a dart map
  static Map<String, List<PositionAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PositionAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PositionAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position_id',
    'position_name',
    'is_global',
  };
}

