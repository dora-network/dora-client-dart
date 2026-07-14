//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermitDomain {
  /// Returns a new [PermitDomain] instance.
  PermitDomain({
    required this.name,
    required this.version,
    required this.chainId,
    required this.verifyingContract,
  });

  /// EIP-712 domain name of the USDC token, e.g. 'USD Coin'.
  String name;

  /// EIP-712 domain version of the USDC token, e.g. '2'.
  String version;

  /// EVM chain ID, as a JSON number.
  int chainId;

  /// The USDC token contract address, as a 0x-prefixed hex string.
  String verifyingContract;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermitDomain &&
    other.name == name &&
    other.version == version &&
    other.chainId == chainId &&
    other.verifyingContract == verifyingContract;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (version.hashCode) +
    (chainId.hashCode) +
    (verifyingContract.hashCode);

  @override
  String toString() => 'PermitDomain[name=$name, version=$version, chainId=$chainId, verifyingContract=$verifyingContract]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'version'] = this.version;
      json[r'chainId'] = this.chainId;
      json[r'verifyingContract'] = this.verifyingContract;
    return json;
  }

  /// Returns a new [PermitDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermitDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "PermitDomain[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "PermitDomain[name]" has a null value in JSON.');
        assert(json.containsKey(r'version'), 'Required key "PermitDomain[version]" is missing from JSON.');
        assert(json[r'version'] != null, 'Required key "PermitDomain[version]" has a null value in JSON.');
        assert(json.containsKey(r'chainId'), 'Required key "PermitDomain[chainId]" is missing from JSON.');
        assert(json[r'chainId'] != null, 'Required key "PermitDomain[chainId]" has a null value in JSON.');
        assert(json.containsKey(r'verifyingContract'), 'Required key "PermitDomain[verifyingContract]" is missing from JSON.');
        assert(json[r'verifyingContract'] != null, 'Required key "PermitDomain[verifyingContract]" has a null value in JSON.');
        return true;
      }());

      return PermitDomain(
        name: mapValueOfType<String>(json, r'name')!,
        version: mapValueOfType<String>(json, r'version')!,
        chainId: mapValueOfType<int>(json, r'chainId')!,
        verifyingContract: mapValueOfType<String>(json, r'verifyingContract')!,
      );
    }
    return null;
  }

  static List<PermitDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PermitDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PermitDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PermitDomain> mapFromJson(dynamic json) {
    final map = <String, PermitDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PermitDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PermitDomain-objects as value to a dart map
  static Map<String, List<PermitDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PermitDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PermitDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'version',
    'chainId',
    'verifyingContract',
  };
}

