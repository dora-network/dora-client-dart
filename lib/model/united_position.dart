//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnitedPosition {
  /// Returns a new [UnitedPosition] instance.
  UnitedPosition({
    required this.globalPositionId,
    this.transactionIds = const [],
  });

  String globalPositionId;

  List<String> transactionIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnitedPosition &&
    other.globalPositionId == globalPositionId &&
    _deepEquality.equals(other.transactionIds, transactionIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (globalPositionId.hashCode) +
    (transactionIds.hashCode);

  @override
  String toString() => 'UnitedPosition[globalPositionId=$globalPositionId, transactionIds=$transactionIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'global_position_id'] = this.globalPositionId;
      json[r'transaction_ids'] = this.transactionIds;
    return json;
  }

  /// Returns a new [UnitedPosition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnitedPosition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'global_position_id'), 'Required key "UnitedPosition[global_position_id]" is missing from JSON.');
        assert(json[r'global_position_id'] != null, 'Required key "UnitedPosition[global_position_id]" has a null value in JSON.');
        assert(json.containsKey(r'transaction_ids'), 'Required key "UnitedPosition[transaction_ids]" is missing from JSON.');
        assert(json[r'transaction_ids'] != null, 'Required key "UnitedPosition[transaction_ids]" has a null value in JSON.');
        return true;
      }());

      return UnitedPosition(
        globalPositionId: mapValueOfType<String>(json, r'global_position_id')!,
        transactionIds: json[r'transaction_ids'] is Iterable
            ? (json[r'transaction_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<UnitedPosition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnitedPosition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnitedPosition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnitedPosition> mapFromJson(dynamic json) {
    final map = <String, UnitedPosition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnitedPosition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnitedPosition-objects as value to a dart map
  static Map<String, List<UnitedPosition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnitedPosition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnitedPosition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'global_position_id',
    'transaction_ids',
  };
}

