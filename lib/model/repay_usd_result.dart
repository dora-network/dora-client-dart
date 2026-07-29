//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RepayUSDResult {
  /// Returns a new [RepayUSDResult] instance.
  RepayUSDResult({
    required this.positionId,
    required this.assetId,
    required this.repaid,
    required this.transactionId,
  });

  String positionId;

  String assetId;

  String repaid;

  String transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RepayUSDResult &&
    other.positionId == positionId &&
    other.assetId == assetId &&
    other.repaid == repaid &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (positionId.hashCode) +
    (assetId.hashCode) +
    (repaid.hashCode) +
    (transactionId.hashCode);

  @override
  String toString() => 'RepayUSDResult[positionId=$positionId, assetId=$assetId, repaid=$repaid, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'position_id'] = this.positionId;
      json[r'asset_id'] = this.assetId;
      json[r'repaid'] = this.repaid;
      json[r'transaction_id'] = this.transactionId;
    return json;
  }

  /// Returns a new [RepayUSDResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RepayUSDResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'position_id'), 'Required key "RepayUSDResult[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "RepayUSDResult[position_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "RepayUSDResult[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "RepayUSDResult[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'repaid'), 'Required key "RepayUSDResult[repaid]" is missing from JSON.');
        assert(json[r'repaid'] != null, 'Required key "RepayUSDResult[repaid]" has a null value in JSON.');
        assert(json.containsKey(r'transaction_id'), 'Required key "RepayUSDResult[transaction_id]" is missing from JSON.');
        assert(json[r'transaction_id'] != null, 'Required key "RepayUSDResult[transaction_id]" has a null value in JSON.');
        return true;
      }());

      return RepayUSDResult(
        positionId: mapValueOfType<String>(json, r'position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        repaid: mapValueOfType<String>(json, r'repaid')!,
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
      );
    }
    return null;
  }

  static List<RepayUSDResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RepayUSDResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RepayUSDResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RepayUSDResult> mapFromJson(dynamic json) {
    final map = <String, RepayUSDResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RepayUSDResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RepayUSDResult-objects as value to a dart map
  static Map<String, List<RepayUSDResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RepayUSDResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RepayUSDResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position_id',
    'asset_id',
    'repaid',
    'transaction_id',
  };
}

