//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateIntegratorUserRequest {
  /// Returns a new [CreateIntegratorUserRequest] instance.
  CreateIntegratorUserRequest({
    this.referralCode,
    this.signupSource,
    this.email,
    this.firstName,
    this.lastName,
    this.userName,
    this.countryOfDomicile,
    this.nativeAssetId,
    this.photoUrl,
    this.provider,
    this.providerId,
    this.timezone,
    this.challengeId,
  });

  /// Optional affiliate code, normalized to uppercase. Accepted only when creating a new account in the program owning tenant. One immutable attribution per user account; a later signup/linking call cannot add or replace it. Invalid or inactive codes fail signup atomically. Independent of QR acquisition attribution. Existing unassigned users can instead use POST /v1/affiliate_referrals/self; earlier activity is excluded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? referralCode;

  /// Optional client-reported HTTP(S) signup site URL, used only with referral_code. When omitted, a valid HTTP(S) Origin header is used; other origins are ignored. Only the hostname is stored, without path, query, credentials or fragment. Unknown if neither supplies a usable hostname. Ignored when referral_code is empty. It does not select or authenticate the tenant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signupSource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CountryCode? countryOfDomicile;

  /// Optional: the user's native asset ID. Must be a CURRENCY asset; defaults to USD. The USDC asset is never allowed for integrator-created users.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nativeAssetId;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezone;

  /// Optional: sign the new user up for this trading challenge. This creates a PENDING registration request that an admin, the tenant's integrator or one of the challenge's managers must approve before the user is actually enrolled. The challenge must belong to the new user's tenant and still be open for entries, otherwise the whole sign-up fails.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? challengeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateIntegratorUserRequest &&
    other.referralCode == referralCode &&
    other.signupSource == signupSource &&
    other.email == email &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.userName == userName &&
    other.countryOfDomicile == countryOfDomicile &&
    other.nativeAssetId == nativeAssetId &&
    other.photoUrl == photoUrl &&
    other.provider == provider &&
    other.providerId == providerId &&
    other.timezone == timezone &&
    other.challengeId == challengeId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (referralCode == null ? 0 : referralCode!.hashCode) +
    (signupSource == null ? 0 : signupSource!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (userName == null ? 0 : userName!.hashCode) +
    (countryOfDomicile == null ? 0 : countryOfDomicile!.hashCode) +
    (nativeAssetId == null ? 0 : nativeAssetId!.hashCode) +
    (photoUrl == null ? 0 : photoUrl!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (providerId == null ? 0 : providerId!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (challengeId == null ? 0 : challengeId!.hashCode);

  @override
  String toString() => 'CreateIntegratorUserRequest[referralCode=$referralCode, signupSource=$signupSource, email=$email, firstName=$firstName, lastName=$lastName, userName=$userName, countryOfDomicile=$countryOfDomicile, nativeAssetId=$nativeAssetId, photoUrl=$photoUrl, provider=$provider, providerId=$providerId, timezone=$timezone, challengeId=$challengeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.referralCode != null) {
      json[r'referral_code'] = this.referralCode;
    } else {
      json[r'referral_code'] = null;
    }
    if (this.signupSource != null) {
      json[r'signup_source'] = this.signupSource;
    } else {
      json[r'signup_source'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.lastName != null) {
      json[r'last_name'] = this.lastName;
    } else {
      json[r'last_name'] = null;
    }
    if (this.userName != null) {
      json[r'user_name'] = this.userName;
    } else {
      json[r'user_name'] = null;
    }
    if (this.countryOfDomicile != null) {
      json[r'country_of_domicile'] = this.countryOfDomicile;
    } else {
      json[r'country_of_domicile'] = null;
    }
    if (this.nativeAssetId != null) {
      json[r'native_asset_id'] = this.nativeAssetId;
    } else {
      json[r'native_asset_id'] = null;
    }
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
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.challengeId != null) {
      json[r'challenge_id'] = this.challengeId;
    } else {
      json[r'challenge_id'] = null;
    }
    return json;
  }

  /// Returns a new [CreateIntegratorUserRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateIntegratorUserRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return CreateIntegratorUserRequest(
        referralCode: mapValueOfType<String>(json, r'referral_code'),
        signupSource: mapValueOfType<String>(json, r'signup_source'),
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        userName: mapValueOfType<String>(json, r'user_name'),
        countryOfDomicile: CountryCode.fromJson(json[r'country_of_domicile']),
        nativeAssetId: mapValueOfType<String>(json, r'native_asset_id'),
        photoUrl: mapValueOfType<String>(json, r'photo_url'),
        provider: mapValueOfType<String>(json, r'provider'),
        providerId: mapValueOfType<String>(json, r'provider_id'),
        timezone: mapValueOfType<String>(json, r'timezone'),
        challengeId: mapValueOfType<String>(json, r'challenge_id'),
      );
    }
    return null;
  }

  static List<CreateIntegratorUserRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIntegratorUserRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIntegratorUserRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateIntegratorUserRequest> mapFromJson(dynamic json) {
    final map = <String, CreateIntegratorUserRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateIntegratorUserRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateIntegratorUserRequest-objects as value to a dart map
  static Map<String, List<CreateIntegratorUserRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateIntegratorUserRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateIntegratorUserRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

