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
    this.email,
    this.firstName,
    this.lastName,
    this.countryOfDomicile,
    this.nativeAssetId,
    this.photoUrl,
    this.provider,
    this.providerId,
    this.timezone,
  });

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
  CountryCode? countryOfDomicile;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateIntegratorUserRequest &&
    other.email == email &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.countryOfDomicile == countryOfDomicile &&
    other.nativeAssetId == nativeAssetId &&
    other.photoUrl == photoUrl &&
    other.provider == provider &&
    other.providerId == providerId &&
    other.timezone == timezone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (countryOfDomicile == null ? 0 : countryOfDomicile!.hashCode) +
    (nativeAssetId == null ? 0 : nativeAssetId!.hashCode) +
    (photoUrl == null ? 0 : photoUrl!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (providerId == null ? 0 : providerId!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode);

  @override
  String toString() => 'CreateIntegratorUserRequest[email=$email, firstName=$firstName, lastName=$lastName, countryOfDomicile=$countryOfDomicile, nativeAssetId=$nativeAssetId, photoUrl=$photoUrl, provider=$provider, providerId=$providerId, timezone=$timezone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateIntegratorUserRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateIntegratorUserRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateIntegratorUserRequest(
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        countryOfDomicile: CountryCode.fromJson(json[r'country_of_domicile']),
        nativeAssetId: mapValueOfType<String>(json, r'native_asset_id'),
        photoUrl: mapValueOfType<String>(json, r'photo_url'),
        provider: mapValueOfType<String>(json, r'provider'),
        providerId: mapValueOfType<String>(json, r'provider_id'),
        timezone: mapValueOfType<String>(json, r'timezone'),
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

