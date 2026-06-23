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
    required this.id,
    this.photoUrl,
    this.timezone,
    required this.createdAt,
    required this.updatedAt,
    required this.showTutorialCards,
    required this.notificationsEnabled,
    required this.allowEmailNotifications,
    required this.allowLiquidationsNotifications,
    required this.allowDepositWithdrawalNotifications,
    required this.allowOrdersNotifications,
    required this.allowCopyTrading,
  });

  String id;

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

  DateTime createdAt;

  DateTime updatedAt;

  bool showTutorialCards;

  bool notificationsEnabled;

  bool allowEmailNotifications;

  bool allowLiquidationsNotifications;

  bool allowDepositWithdrawalNotifications;

  bool allowOrdersNotifications;

  bool allowCopyTrading;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfig &&
    other.id == id &&
    other.photoUrl == photoUrl &&
    other.timezone == timezone &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.showTutorialCards == showTutorialCards &&
    other.notificationsEnabled == notificationsEnabled &&
    other.allowEmailNotifications == allowEmailNotifications &&
    other.allowLiquidationsNotifications == allowLiquidationsNotifications &&
    other.allowDepositWithdrawalNotifications == allowDepositWithdrawalNotifications &&
    other.allowOrdersNotifications == allowOrdersNotifications &&
    other.allowCopyTrading == allowCopyTrading;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (photoUrl == null ? 0 : photoUrl!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (showTutorialCards.hashCode) +
    (notificationsEnabled.hashCode) +
    (allowEmailNotifications.hashCode) +
    (allowLiquidationsNotifications.hashCode) +
    (allowDepositWithdrawalNotifications.hashCode) +
    (allowOrdersNotifications.hashCode) +
    (allowCopyTrading.hashCode);

  @override
  String toString() => 'UserConfig[id=$id, photoUrl=$photoUrl, timezone=$timezone, createdAt=$createdAt, updatedAt=$updatedAt, showTutorialCards=$showTutorialCards, notificationsEnabled=$notificationsEnabled, allowEmailNotifications=$allowEmailNotifications, allowLiquidationsNotifications=$allowLiquidationsNotifications, allowDepositWithdrawalNotifications=$allowDepositWithdrawalNotifications, allowOrdersNotifications=$allowOrdersNotifications, allowCopyTrading=$allowCopyTrading]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
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
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
      json[r'show_tutorial_cards'] = this.showTutorialCards;
      json[r'notifications_enabled'] = this.notificationsEnabled;
      json[r'allow_email_notifications'] = this.allowEmailNotifications;
      json[r'allow_liquidations_notifications'] = this.allowLiquidationsNotifications;
      json[r'allow_deposit_withdrawal_notifications'] = this.allowDepositWithdrawalNotifications;
      json[r'allow_orders_notifications'] = this.allowOrdersNotifications;
      json[r'allow_copy_trading'] = this.allowCopyTrading;
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
        assert(json.containsKey(r'id'), 'Required key "UserConfig[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "UserConfig[id]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "UserConfig[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "UserConfig[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "UserConfig[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "UserConfig[updated_at]" has a null value in JSON.');
        assert(json.containsKey(r'show_tutorial_cards'), 'Required key "UserConfig[show_tutorial_cards]" is missing from JSON.');
        assert(json[r'show_tutorial_cards'] != null, 'Required key "UserConfig[show_tutorial_cards]" has a null value in JSON.');
        assert(json.containsKey(r'notifications_enabled'), 'Required key "UserConfig[notifications_enabled]" is missing from JSON.');
        assert(json[r'notifications_enabled'] != null, 'Required key "UserConfig[notifications_enabled]" has a null value in JSON.');
        assert(json.containsKey(r'allow_email_notifications'), 'Required key "UserConfig[allow_email_notifications]" is missing from JSON.');
        assert(json[r'allow_email_notifications'] != null, 'Required key "UserConfig[allow_email_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_liquidations_notifications'), 'Required key "UserConfig[allow_liquidations_notifications]" is missing from JSON.');
        assert(json[r'allow_liquidations_notifications'] != null, 'Required key "UserConfig[allow_liquidations_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_deposit_withdrawal_notifications'), 'Required key "UserConfig[allow_deposit_withdrawal_notifications]" is missing from JSON.');
        assert(json[r'allow_deposit_withdrawal_notifications'] != null, 'Required key "UserConfig[allow_deposit_withdrawal_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_orders_notifications'), 'Required key "UserConfig[allow_orders_notifications]" is missing from JSON.');
        assert(json[r'allow_orders_notifications'] != null, 'Required key "UserConfig[allow_orders_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_copy_trading'), 'Required key "UserConfig[allow_copy_trading]" is missing from JSON.');
        assert(json[r'allow_copy_trading'] != null, 'Required key "UserConfig[allow_copy_trading]" has a null value in JSON.');
        return true;
      }());

      return UserConfig(
        id: mapValueOfType<String>(json, r'id')!,
        photoUrl: mapValueOfType<String>(json, r'photo_url'),
        timezone: mapValueOfType<String>(json, r'timezone'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        showTutorialCards: mapValueOfType<bool>(json, r'show_tutorial_cards')!,
        notificationsEnabled: mapValueOfType<bool>(json, r'notifications_enabled')!,
        allowEmailNotifications: mapValueOfType<bool>(json, r'allow_email_notifications')!,
        allowLiquidationsNotifications: mapValueOfType<bool>(json, r'allow_liquidations_notifications')!,
        allowDepositWithdrawalNotifications: mapValueOfType<bool>(json, r'allow_deposit_withdrawal_notifications')!,
        allowOrdersNotifications: mapValueOfType<bool>(json, r'allow_orders_notifications')!,
        allowCopyTrading: mapValueOfType<bool>(json, r'allow_copy_trading')!,
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
    'id',
    'created_at',
    'updated_at',
    'show_tutorial_cards',
    'notifications_enabled',
    'allow_email_notifications',
    'allow_liquidations_notifications',
    'allow_deposit_withdrawal_notifications',
    'allow_orders_notifications',
    'allow_copy_trading',
  };
}

