//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfig {
  /// Returns a new [UserConfig] instance.
  UserConfig({
    this.id,
    this.photoUrl,
    this.timezone,
    this.createdAt,
    this.updatedAt,
    this.showTutorialCards,
    this.notificationsEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? photoUrl;

  /// User's timezone, e.g., 'America/New_York', or an offset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showTutorialCards;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? notificationsEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfig &&
    other.id == id &&
    other.photoUrl == photoUrl &&
    other.timezone == timezone &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.showTutorialCards == showTutorialCards &&
    other.notificationsEnabled == notificationsEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (photoUrl == null ? 0 : photoUrl!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (showTutorialCards == null ? 0 : showTutorialCards!.hashCode) +
    (notificationsEnabled == null ? 0 : notificationsEnabled!.hashCode);

  @override
  String toString() => 'UserConfig[id=$id, photoUrl=$photoUrl, timezone=$timezone, createdAt=$createdAt, updatedAt=$updatedAt, showTutorialCards=$showTutorialCards, notificationsEnabled=$notificationsEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.photoUrl != null) {
      json[r'photo_url'] = this.photoUrl;
    } else {
      json[r'photo_url'] = null;
    }
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
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

  /// Returns a new [UserConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserConfig(
        id: mapValueOfType<String>(json, r'id'),
        photoUrl: mapValueOfType<String>(json, r'photo_url'),
        timezone: mapValueOfType<String>(json, r'timezone'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        showTutorialCards: mapValueOfType<bool>(json, r'show_tutorial_cards'),
        notificationsEnabled: mapValueOfType<bool>(json, r'notifications_enabled'),
      );
    }
    return null;
  }

  static List<UserConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfig> mapFromJson(dynamic json) {
    final map = <String, UserConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfig-objects as value to a dart map
  static Map<String, List<UserConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

