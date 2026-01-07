//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClosePositionRequest {
  /// Returns a new [ClosePositionRequest] instance.
  ClosePositionRequest({
    required this.positionId,
    required this.orderBookId,
  });

  String positionId;

  String orderBookId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClosePositionRequest &&
    other.positionId == positionId &&
    other.orderBookId == orderBookId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (positionId.hashCode) +
    (orderBookId.hashCode);

  @override
  String toString() => 'ClosePositionRequest[positionId=$positionId, orderBookId=$orderBookId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
      json[r'order_book_id'] = this.orderBookId;
    return json;
  }

  /// Returns a new [ClosePositionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClosePositionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClosePositionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClosePositionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClosePositionRequest(
        positionId: mapValueOfType<String>(json, r'position_id')!,
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
      );
    }
    return null;
  }

  static List<ClosePositionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClosePositionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClosePositionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClosePositionRequest> mapFromJson(dynamic json) {
    final map = <String, ClosePositionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClosePositionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClosePositionRequest-objects as value to a dart map
  static Map<String, List<ClosePositionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClosePositionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClosePositionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position_id',
    'order_book_id',
  };
}

