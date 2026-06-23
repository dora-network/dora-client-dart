//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class User {
  /// Returns a new [User] instance.
  User({
    required this.id,
    this.closedAt,
    this.disabledAt,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.countryOfDomicile,
    required this.nativeAssetId,
    this.photoUrl,
    this.provider,
    this.providerId,
    this.roles = const [],
    this.timezone,
    this.timezoneOffset,
    this.verifiedAt,
    required this.showTutorialCards,
    required this.notificationsEnabled,
    required this.tenantId,
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
  DateTime? closedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? disabledAt;

  String email;

  String firstName;

  String lastName;

  CountryCode countryOfDomicile;

  String nativeAssetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? photoUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerId;

  List<UserRole> roles;

  /// User's timezone, e.g., 'America/New_York', or an offset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezone;

  /// timezone offset in seconds
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timezoneOffset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? verifiedAt;

  bool showTutorialCards;

  bool notificationsEnabled;

  String tenantId;

  bool allowEmailNotifications;

  bool allowLiquidationsNotifications;

  bool allowDepositWithdrawalNotifications;

  bool allowOrdersNotifications;

  bool allowCopyTrading;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
    other.id == id &&
    other.closedAt == closedAt &&
    other.disabledAt == disabledAt &&
    other.email == email &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.countryOfDomicile == countryOfDomicile &&
    other.nativeAssetId == nativeAssetId &&
    other.photoUrl == photoUrl &&
    other.provider == provider &&
    other.providerId == providerId &&
    _deepEquality.equals(other.roles, roles) &&
    other.timezone == timezone &&
    other.timezoneOffset == timezoneOffset &&
    other.verifiedAt == verifiedAt &&
    other.showTutorialCards == showTutorialCards &&
    other.notificationsEnabled == notificationsEnabled &&
    other.tenantId == tenantId &&
    other.allowEmailNotifications == allowEmailNotifications &&
    other.allowLiquidationsNotifications == allowLiquidationsNotifications &&
    other.allowDepositWithdrawalNotifications == allowDepositWithdrawalNotifications &&
    other.allowOrdersNotifications == allowOrdersNotifications &&
    other.allowCopyTrading == allowCopyTrading;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (closedAt == null ? 0 : closedAt!.hashCode) +
    (disabledAt == null ? 0 : disabledAt!.hashCode) +
    (email.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (countryOfDomicile.hashCode) +
    (nativeAssetId.hashCode) +
    (photoUrl == null ? 0 : photoUrl!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (providerId == null ? 0 : providerId!.hashCode) +
    (roles.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (timezoneOffset == null ? 0 : timezoneOffset!.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode) +
    (showTutorialCards.hashCode) +
    (notificationsEnabled.hashCode) +
    (tenantId.hashCode) +
    (allowEmailNotifications.hashCode) +
    (allowLiquidationsNotifications.hashCode) +
    (allowDepositWithdrawalNotifications.hashCode) +
    (allowOrdersNotifications.hashCode) +
    (allowCopyTrading.hashCode);

  @override
  String toString() => 'User[id=$id, closedAt=$closedAt, disabledAt=$disabledAt, email=$email, firstName=$firstName, lastName=$lastName, countryOfDomicile=$countryOfDomicile, nativeAssetId=$nativeAssetId, photoUrl=$photoUrl, provider=$provider, providerId=$providerId, roles=$roles, timezone=$timezone, timezoneOffset=$timezoneOffset, verifiedAt=$verifiedAt, showTutorialCards=$showTutorialCards, notificationsEnabled=$notificationsEnabled, tenantId=$tenantId, allowEmailNotifications=$allowEmailNotifications, allowLiquidationsNotifications=$allowLiquidationsNotifications, allowDepositWithdrawalNotifications=$allowDepositWithdrawalNotifications, allowOrdersNotifications=$allowOrdersNotifications, allowCopyTrading=$allowCopyTrading]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.closedAt != null) {
      json[r'closed_at'] = this.closedAt!.toUtc().toIso8601String();
    } else {
      json[r'closed_at'] = null;
    }
    if (this.disabledAt != null) {
      json[r'disabled_at'] = this.disabledAt!.toUtc().toIso8601String();
    } else {
      json[r'disabled_at'] = null;
    }
      json[r'email'] = this.email;
      json[r'first_name'] = this.firstName;
      json[r'last_name'] = this.lastName;
      json[r'country_of_domicile'] = this.countryOfDomicile;
      json[r'native_asset_id'] = this.nativeAssetId;
    if (this.photoUrl != null) {
      json[r'photo_url'] = this.photoUrl;
    } else {
      json[r'photo_url'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.providerId != null) {
      json[r'provider_id'] = this.providerId;
    } else {
      json[r'provider_id'] = null;
    }
      json[r'roles'] = this.roles;
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.timezoneOffset != null) {
      json[r'timezone_offset'] = this.timezoneOffset;
    } else {
      json[r'timezone_offset'] = null;
    }
    if (this.verifiedAt != null) {
      json[r'verified_at'] = this.verifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'verified_at'] = null;
    }
      json[r'show_tutorial_cards'] = this.showTutorialCards;
      json[r'notifications_enabled'] = this.notificationsEnabled;
      json[r'tenant_id'] = this.tenantId;
      json[r'allow_email_notifications'] = this.allowEmailNotifications;
      json[r'allow_liquidations_notifications'] = this.allowLiquidationsNotifications;
      json[r'allow_deposit_withdrawal_notifications'] = this.allowDepositWithdrawalNotifications;
      json[r'allow_orders_notifications'] = this.allowOrdersNotifications;
      json[r'allow_copy_trading'] = this.allowCopyTrading;
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static User? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "User[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "User[id]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "User[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "User[email]" has a null value in JSON.');
        assert(json.containsKey(r'first_name'), 'Required key "User[first_name]" is missing from JSON.');
        assert(json[r'first_name'] != null, 'Required key "User[first_name]" has a null value in JSON.');
        assert(json.containsKey(r'last_name'), 'Required key "User[last_name]" is missing from JSON.');
        assert(json[r'last_name'] != null, 'Required key "User[last_name]" has a null value in JSON.');
        assert(json.containsKey(r'country_of_domicile'), 'Required key "User[country_of_domicile]" is missing from JSON.');
        assert(json[r'country_of_domicile'] != null, 'Required key "User[country_of_domicile]" has a null value in JSON.');
        assert(json.containsKey(r'native_asset_id'), 'Required key "User[native_asset_id]" is missing from JSON.');
        assert(json[r'native_asset_id'] != null, 'Required key "User[native_asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'roles'), 'Required key "User[roles]" is missing from JSON.');
        assert(json[r'roles'] != null, 'Required key "User[roles]" has a null value in JSON.');
        assert(json.containsKey(r'show_tutorial_cards'), 'Required key "User[show_tutorial_cards]" is missing from JSON.');
        assert(json[r'show_tutorial_cards'] != null, 'Required key "User[show_tutorial_cards]" has a null value in JSON.');
        assert(json.containsKey(r'notifications_enabled'), 'Required key "User[notifications_enabled]" is missing from JSON.');
        assert(json[r'notifications_enabled'] != null, 'Required key "User[notifications_enabled]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "User[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "User[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'allow_email_notifications'), 'Required key "User[allow_email_notifications]" is missing from JSON.');
        assert(json[r'allow_email_notifications'] != null, 'Required key "User[allow_email_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_liquidations_notifications'), 'Required key "User[allow_liquidations_notifications]" is missing from JSON.');
        assert(json[r'allow_liquidations_notifications'] != null, 'Required key "User[allow_liquidations_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_deposit_withdrawal_notifications'), 'Required key "User[allow_deposit_withdrawal_notifications]" is missing from JSON.');
        assert(json[r'allow_deposit_withdrawal_notifications'] != null, 'Required key "User[allow_deposit_withdrawal_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_orders_notifications'), 'Required key "User[allow_orders_notifications]" is missing from JSON.');
        assert(json[r'allow_orders_notifications'] != null, 'Required key "User[allow_orders_notifications]" has a null value in JSON.');
        assert(json.containsKey(r'allow_copy_trading'), 'Required key "User[allow_copy_trading]" is missing from JSON.');
        assert(json[r'allow_copy_trading'] != null, 'Required key "User[allow_copy_trading]" has a null value in JSON.');
        return true;
      }());

      return User(
        id: mapValueOfType<String>(json, r'id')!,
        closedAt: mapDateTime(json, r'closed_at', r''),
        disabledAt: mapDateTime(json, r'disabled_at', r''),
        email: mapValueOfType<String>(json, r'email')!,
        firstName: mapValueOfType<String>(json, r'first_name')!,
        lastName: mapValueOfType<String>(json, r'last_name')!,
        countryOfDomicile: CountryCode.fromJson(json[r'country_of_domicile'])!,
        nativeAssetId: mapValueOfType<String>(json, r'native_asset_id')!,
        photoUrl: mapValueOfType<String>(json, r'photo_url'),
        provider: mapValueOfType<String>(json, r'provider'),
        providerId: mapValueOfType<String>(json, r'provider_id'),
        roles: UserRole.listFromJson(json[r'roles']),
        timezone: mapValueOfType<String>(json, r'timezone'),
        timezoneOffset: mapValueOfType<int>(json, r'timezone_offset'),
        verifiedAt: mapDateTime(json, r'verified_at', r''),
        showTutorialCards: mapValueOfType<bool>(json, r'show_tutorial_cards')!,
        notificationsEnabled: mapValueOfType<bool>(json, r'notifications_enabled')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        allowEmailNotifications: mapValueOfType<bool>(json, r'allow_email_notifications')!,
        allowLiquidationsNotifications: mapValueOfType<bool>(json, r'allow_liquidations_notifications')!,
        allowDepositWithdrawalNotifications: mapValueOfType<bool>(json, r'allow_deposit_withdrawal_notifications')!,
        allowOrdersNotifications: mapValueOfType<bool>(json, r'allow_orders_notifications')!,
        allowCopyTrading: mapValueOfType<bool>(json, r'allow_copy_trading')!,
      );
    }
    return null;
  }

  static List<User> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <User>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = User.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, User> mapFromJson(dynamic json) {
    final map = <String, User>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = User.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<User>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = User.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'email',
    'first_name',
    'last_name',
    'country_of_domicile',
    'native_asset_id',
    'roles',
    'show_tutorial_cards',
    'notifications_enabled',
    'tenant_id',
    'allow_email_notifications',
    'allow_liquidations_notifications',
    'allow_deposit_withdrawal_notifications',
    'allow_orders_notifications',
    'allow_copy_trading',
  };
}

