//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermitMessage {
  /// Returns a new [PermitMessage] instance.
  PermitMessage({
    required this.owner,
    required this.spender,
    required this.value,
    required this.nonce,
    required this.deadline,
  });

  /// The user's wallet address (permit owner), as a 0x-prefixed hex string.
  String owner;

  /// The vault contract address granted the allowance, as a 0x-prefixed hex string.
  String spender;

  /// Approved quantity in USDC base units (10^-6 USDC), as a decimal string.
  String value;

  /// The owner's current USDC permit nonce on this chain, as a decimal string.
  String nonce;

  /// Unix timestamp (seconds) at which the permit expires, as a decimal string. One hour from issuance.
  String deadline;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermitMessage &&
    other.owner == owner &&
    other.spender == spender &&
    other.value == value &&
    other.nonce == nonce &&
    other.deadline == deadline;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (owner.hashCode) +
    (spender.hashCode) +
    (value.hashCode) +
    (nonce.hashCode) +
    (deadline.hashCode);

  @override
  String toString() => 'PermitMessage[owner=$owner, spender=$spender, value=$value, nonce=$nonce, deadline=$deadline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'owner'] = this.owner;
      json[r'spender'] = this.spender;
      json[r'value'] = this.value;
      json[r'nonce'] = this.nonce;
      json[r'deadline'] = this.deadline;
    return json;
  }

  /// Returns a new [PermitMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermitMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'owner'), 'Required key "PermitMessage[owner]" is missing from JSON.');
        assert(json[r'owner'] != null, 'Required key "PermitMessage[owner]" has a null value in JSON.');
        assert(json.containsKey(r'spender'), 'Required key "PermitMessage[spender]" is missing from JSON.');
        assert(json[r'spender'] != null, 'Required key "PermitMessage[spender]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "PermitMessage[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "PermitMessage[value]" has a null value in JSON.');
        assert(json.containsKey(r'nonce'), 'Required key "PermitMessage[nonce]" is missing from JSON.');
        assert(json[r'nonce'] != null, 'Required key "PermitMessage[nonce]" has a null value in JSON.');
        assert(json.containsKey(r'deadline'), 'Required key "PermitMessage[deadline]" is missing from JSON.');
        assert(json[r'deadline'] != null, 'Required key "PermitMessage[deadline]" has a null value in JSON.');
        return true;
      }());

      return PermitMessage(
        owner: mapValueOfType<String>(json, r'owner')!,
        spender: mapValueOfType<String>(json, r'spender')!,
        value: mapValueOfType<String>(json, r'value')!,
        nonce: mapValueOfType<String>(json, r'nonce')!,
        deadline: mapValueOfType<String>(json, r'deadline')!,
      );
    }
    return null;
  }

  static List<PermitMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PermitMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PermitMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PermitMessage> mapFromJson(dynamic json) {
    final map = <String, PermitMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PermitMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PermitMessage-objects as value to a dart map
  static Map<String, List<PermitMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PermitMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PermitMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'owner',
    'spender',
    'value',
    'nonce',
    'deadline',
  };
}

