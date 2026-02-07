//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PLAccount {
  /// Returns a new [PLAccount] instance.
  PLAccount({
    required this.accountId,
    required this.accountName,
    required this.isGlobal,
    this.assets = const [],
    required this.summary,
  });

  /// The ID of the account holding the position
  String accountId;

  /// The name of the account holding the position
  String accountName;

  /// Whether the account is the global or an isolated account
  bool isGlobal;

  List<PLAsset> assets;

  PLSummary summary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PLAccount &&
    other.accountId == accountId &&
    other.accountName == accountName &&
    other.isGlobal == isGlobal &&
    _deepEquality.equals(other.assets, assets) &&
    other.summary == summary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId.hashCode) +
    (accountName.hashCode) +
    (isGlobal.hashCode) +
    (assets.hashCode) +
    (summary.hashCode);

  @override
  String toString() => 'PLAccount[accountId=$accountId, accountName=$accountName, isGlobal=$isGlobal, assets=$assets, summary=$summary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account_id'] = this.accountId;
      json[r'account_name'] = this.accountName;
      json[r'is_global'] = this.isGlobal;
      json[r'assets'] = this.assets;
      json[r'summary'] = this.summary;
    return json;
  }

  /// Returns a new [PLAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PLAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PLAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PLAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PLAccount(
        accountId: mapValueOfType<String>(json, r'account_id')!,
        accountName: mapValueOfType<String>(json, r'account_name')!,
        isGlobal: mapValueOfType<bool>(json, r'is_global')!,
        assets: PLAsset.listFromJson(json[r'assets']),
        summary: PLSummary.fromJson(json[r'summary'])!,
      );
    }
    return null;
  }

  static List<PLAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PLAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PLAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PLAccount> mapFromJson(dynamic json) {
    final map = <String, PLAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PLAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PLAccount-objects as value to a dart map
  static Map<String, List<PLAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PLAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PLAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account_id',
    'account_name',
    'is_global',
    'assets',
    'summary',
  };
}

