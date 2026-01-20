//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateUserConfigRequest {
  /// Returns a new [UpdateUserConfigRequest] instance.
  UpdateUserConfigRequest({
    this.photoUrl,
    required this.timezone,
    this.showTutorialCards,
    this.notificationsEnabled,
  });

  /// Optional: URL of the user's profile photo, optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldString? photoUrl;

  /// User's timezone, e.g., 'America/New_York', or an offset.
  UpdateFieldString timezone;

  /// Optional: Whether to show the tutorial.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldBoolean? showTutorialCards;

  /// Optional: Whether to show the notifications.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateFieldBoolean? notificationsEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateUserConfigRequest &&
    other.photoUrl == photoUrl &&
    other.timezone == timezone &&
    other.showTutorialCards == showTutorialCards &&
    other.notificationsEnabled == notificationsEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (photoUrl == null ? 0 : photoUrl!.hashCode) +
    (timezone.hashCode) +
    (showTutorialCards == null ? 0 : showTutorialCards!.hashCode) +
    (notificationsEnabled == null ? 0 : notificationsEnabled!.hashCode);

  @override
  String toString() => 'UpdateUserConfigRequest[photoUrl=$photoUrl, timezone=$timezone, showTutorialCards=$showTutorialCards, notificationsEnabled=$notificationsEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.photoUrl != null) {
      json[r'photo_url'] = this.photoUrl;
    } else {
      json[r'photo_url'] = null;
    }
      json[r'timezone'] = this.timezone;
    if (this.showTutorialCards != null) {
      json[r'show_tutorial_cards'] = this.showTutorialCards;
    } else {
      json[r'show_tutorial_cards'] = null;
    }
    if (this.notificationsEnabled != null) {
      json[r'notifications_enabled'] = this.notificationsEnabled;
    } else {
      json[r'notifications_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateUserConfigRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateUserConfigRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateUserConfigRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateUserConfigRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateUserConfigRequest(
        photoUrl: UpdateFieldString.fromJson(json[r'photo_url']),
        timezone: UpdateFieldString.fromJson(json[r'timezone'])!,
        showTutorialCards: UpdateFieldBoolean.fromJson(json[r'show_tutorial_cards']),
        notificationsEnabled: UpdateFieldBoolean.fromJson(json[r'notifications_enabled']),
      );
    }
    return null;
  }

  static List<UpdateUserConfigRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateUserConfigRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateUserConfigRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateUserConfigRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateUserConfigRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateUserConfigRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateUserConfigRequest-objects as value to a dart map
  static Map<String, List<UpdateUserConfigRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateUserConfigRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateUserConfigRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timezone',
  };
}

