//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IsolatedPosition {
  /// Returns a new [IsolatedPosition] instance.
  IsolatedPosition({
    this.globalPositionId,
    this.isolatedPositionId,
    this.transactionId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? globalPositionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isolatedPositionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IsolatedPosition &&
    other.globalPositionId == globalPositionId &&
    other.isolatedPositionId == isolatedPositionId &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (globalPositionId == null ? 0 : globalPositionId!.hashCode) +
    (isolatedPositionId == null ? 0 : isolatedPositionId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode);

  @override
  String toString() => 'IsolatedPosition[globalPositionId=$globalPositionId, isolatedPositionId=$isolatedPositionId, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.globalPositionId != null) {
      json[r'global_position_id'] = this.globalPositionId;
    } else {
      json[r'global_position_id'] = null;
    }
    if (this.isolatedPositionId != null) {
      json[r'isolated_position_id'] = this.isolatedPositionId;
    } else {
      json[r'isolated_position_id'] = null;
    }
    if (this.transactionId != null) {
      json[r'transaction_id'] = this.transactionId;
    } else {
      json[r'transaction_id'] = null;
    }
    return json;
  }

  /// Returns a new [IsolatedPosition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IsolatedPosition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IsolatedPosition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IsolatedPosition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IsolatedPosition(
        globalPositionId: mapValueOfType<String>(json, r'global_position_id'),
        isolatedPositionId: mapValueOfType<String>(json, r'isolated_position_id'),
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
      );
    }
    return null;
  }

  static List<IsolatedPosition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IsolatedPosition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IsolatedPosition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IsolatedPosition> mapFromJson(dynamic json) {
    final map = <String, IsolatedPosition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IsolatedPosition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IsolatedPosition-objects as value to a dart map
  static Map<String, List<IsolatedPosition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IsolatedPosition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IsolatedPosition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

