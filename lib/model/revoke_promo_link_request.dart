//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RevokePromoLinkRequest {
  /// Returns a new [RevokePromoLinkRequest] instance.
  RevokePromoLinkRequest({
    required this.reason,
  });

  String reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokePromoLinkRequest &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reason.hashCode);

  @override
  String toString() => 'RevokePromoLinkRequest[reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reason'] = this.reason;
    return json;
  }

  /// Returns a new [RevokePromoLinkRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokePromoLinkRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'reason'), 'Required key "RevokePromoLinkRequest[reason]" is missing from JSON.');
        assert(json[r'reason'] != null, 'Required key "RevokePromoLinkRequest[reason]" has a null value in JSON.');
        return true;
      }());

      return RevokePromoLinkRequest(
        reason: mapValueOfType<String>(json, r'reason')!,
      );
    }
    return null;
  }

  static List<RevokePromoLinkRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokePromoLinkRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokePromoLinkRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokePromoLinkRequest> mapFromJson(dynamic json) {
    final map = <String, RevokePromoLinkRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokePromoLinkRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokePromoLinkRequest-objects as value to a dart map
  static Map<String, List<RevokePromoLinkRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokePromoLinkRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokePromoLinkRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reason',
  };
}

