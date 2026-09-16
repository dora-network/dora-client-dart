//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuedPromoLink {
  /// Returns a new [IssuedPromoLink] instance.
  IssuedPromoLink({
    required this.id,
    required this.tokenPrefix,
    required this.url,
    required this.qrUrl,
    required this.expiresAt,
  });

  String id;

  String tokenPrefix;

  /// Private claim URL. Do not log or cache.
  String url;

  String qrUrl;

  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssuedPromoLink &&
    other.id == id &&
    other.tokenPrefix == tokenPrefix &&
    other.url == url &&
    other.qrUrl == qrUrl &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (tokenPrefix.hashCode) +
    (url.hashCode) +
    (qrUrl.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'IssuedPromoLink[id=$id, tokenPrefix=$tokenPrefix, url=$url, qrUrl=$qrUrl, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'token_prefix'] = this.tokenPrefix;
      json[r'url'] = this.url;
      json[r'qr_url'] = this.qrUrl;
      json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [IssuedPromoLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuedPromoLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "IssuedPromoLink[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "IssuedPromoLink[id]" has a null value in JSON.');
        assert(json.containsKey(r'token_prefix'), 'Required key "IssuedPromoLink[token_prefix]" is missing from JSON.');
        assert(json[r'token_prefix'] != null, 'Required key "IssuedPromoLink[token_prefix]" has a null value in JSON.');
        assert(json.containsKey(r'url'), 'Required key "IssuedPromoLink[url]" is missing from JSON.');
        assert(json[r'url'] != null, 'Required key "IssuedPromoLink[url]" has a null value in JSON.');
        assert(json.containsKey(r'qr_url'), 'Required key "IssuedPromoLink[qr_url]" is missing from JSON.');
        assert(json[r'qr_url'] != null, 'Required key "IssuedPromoLink[qr_url]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'), 'Required key "IssuedPromoLink[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null, 'Required key "IssuedPromoLink[expires_at]" has a null value in JSON.');
        return true;
      }());

      return IssuedPromoLink(
        id: mapValueOfType<String>(json, r'id')!,
        tokenPrefix: mapValueOfType<String>(json, r'token_prefix')!,
        url: mapValueOfType<String>(json, r'url')!,
        qrUrl: mapValueOfType<String>(json, r'qr_url')!,
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
      );
    }
    return null;
  }

  static List<IssuedPromoLink> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuedPromoLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuedPromoLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuedPromoLink> mapFromJson(dynamic json) {
    final map = <String, IssuedPromoLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuedPromoLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuedPromoLink-objects as value to a dart map
  static Map<String, List<IssuedPromoLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuedPromoLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuedPromoLink.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'token_prefix',
    'url',
    'qr_url',
    'expires_at',
  };
}

