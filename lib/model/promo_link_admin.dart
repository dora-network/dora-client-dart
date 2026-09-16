//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PromoLinkAdmin {
  /// Returns a new [PromoLinkAdmin] instance.
  PromoLinkAdmin({
    required this.id,
    required this.tokenPrefix,
    this.url,
    required this.status,
    required this.expiresAt,
    this.claimedAt,
    this.claimedEmail,
    this.userId,
  });

  String id;

  String tokenPrefix;

  /// Only present when reveal=true. Private; do not log or cache.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  PromoLinkStatus status;

  DateTime expiresAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? claimedAt;

  /// Masked as the first character, three asterisks, and domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? claimedEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoLinkAdmin &&
    other.id == id &&
    other.tokenPrefix == tokenPrefix &&
    other.url == url &&
    other.status == status &&
    other.expiresAt == expiresAt &&
    other.claimedAt == claimedAt &&
    other.claimedEmail == claimedEmail &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (tokenPrefix.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (status.hashCode) +
    (expiresAt.hashCode) +
    (claimedAt == null ? 0 : claimedAt!.hashCode) +
    (claimedEmail == null ? 0 : claimedEmail!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'PromoLinkAdmin[id=$id, tokenPrefix=$tokenPrefix, url=$url, status=$status, expiresAt=$expiresAt, claimedAt=$claimedAt, claimedEmail=$claimedEmail, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'token_prefix'] = this.tokenPrefix;
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
      json[r'status'] = this.status;
      json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    if (this.claimedAt != null) {
      json[r'claimed_at'] = this.claimedAt!.toUtc().toIso8601String();
    } else {
      json[r'claimed_at'] = null;
    }
    if (this.claimedEmail != null) {
      json[r'claimed_email'] = this.claimedEmail;
    } else {
      json[r'claimed_email'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    return json;
  }

  /// Returns a new [PromoLinkAdmin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoLinkAdmin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "PromoLinkAdmin[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "PromoLinkAdmin[id]" has a null value in JSON.');
        assert(json.containsKey(r'token_prefix'), 'Required key "PromoLinkAdmin[token_prefix]" is missing from JSON.');
        assert(json[r'token_prefix'] != null, 'Required key "PromoLinkAdmin[token_prefix]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "PromoLinkAdmin[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "PromoLinkAdmin[status]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'), 'Required key "PromoLinkAdmin[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null, 'Required key "PromoLinkAdmin[expires_at]" has a null value in JSON.');
        return true;
      }());

      return PromoLinkAdmin(
        id: mapValueOfType<String>(json, r'id')!,
        tokenPrefix: mapValueOfType<String>(json, r'token_prefix')!,
        url: mapValueOfType<String>(json, r'url'),
        status: PromoLinkStatus.fromJson(json[r'status'])!,
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
        claimedAt: mapDateTime(json, r'claimed_at', r''),
        claimedEmail: mapValueOfType<String>(json, r'claimed_email'),
        userId: mapValueOfType<String>(json, r'user_id'),
      );
    }
    return null;
  }

  static List<PromoLinkAdmin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoLinkAdmin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoLinkAdmin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoLinkAdmin> mapFromJson(dynamic json) {
    final map = <String, PromoLinkAdmin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoLinkAdmin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoLinkAdmin-objects as value to a dart map
  static Map<String, List<PromoLinkAdmin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoLinkAdmin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoLinkAdmin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'token_prefix',
    'status',
    'expires_at',
  };
}

