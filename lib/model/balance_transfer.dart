//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BalanceTransfer {
  /// Returns a new [BalanceTransfer] instance.
  BalanceTransfer({
    this.fromPositionId,
    this.toPositionId,
    this.transactionId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromPositionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? toPositionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BalanceTransfer &&
    other.fromPositionId == fromPositionId &&
    other.toPositionId == toPositionId &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromPositionId == null ? 0 : fromPositionId!.hashCode) +
    (toPositionId == null ? 0 : toPositionId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode);

  @override
  String toString() => 'BalanceTransfer[fromPositionId=$fromPositionId, toPositionId=$toPositionId, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fromPositionId != null) {
      json[r'from_position_id'] = this.fromPositionId;
    } else {
      json[r'from_position_id'] = null;
    }
    if (this.toPositionId != null) {
      json[r'to_position_id'] = this.toPositionId;
    } else {
      json[r'to_position_id'] = null;
    }
    if (this.transactionId != null) {
      json[r'transaction_id'] = this.transactionId;
    } else {
      json[r'transaction_id'] = null;
    }
    return json;
  }

  /// Returns a new [BalanceTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BalanceTransfer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BalanceTransfer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BalanceTransfer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BalanceTransfer(
        fromPositionId: mapValueOfType<String>(json, r'from_position_id'),
        toPositionId: mapValueOfType<String>(json, r'to_position_id'),
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
      );
    }
    return null;
  }

  static List<BalanceTransfer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BalanceTransfer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BalanceTransfer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BalanceTransfer> mapFromJson(dynamic json) {
    final map = <String, BalanceTransfer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BalanceTransfer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BalanceTransfer-objects as value to a dart map
  static Map<String, List<BalanceTransfer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BalanceTransfer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BalanceTransfer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

