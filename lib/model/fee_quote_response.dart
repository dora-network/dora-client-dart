//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FeeQuoteResponse {
  /// Returns a new [FeeQuoteResponse] instance.
  FeeQuoteResponse({
    required this.to,
    required this.quantity,
    required this.fee,
    required this.feeBaseUnits,
    required this.chainId,
    required this.quoteToken,
    required this.expiresAt,
  });

  /// The withdrawal destination address, echoed from the request.
  String to;

  /// Human-decimal USDC withdrawal quantity, echoed from the request.
  String quantity;

  /// The estimated network fee, in human USDC.
  String fee;

  /// The estimated network fee, in micro-USDC base units.
  String feeBaseUnits;

  /// EVM chain ID the quote was computed for.
  String chainId;

  /// Signed, TTL-bound quote token to submit with a later withdrawal so the server can validate the fee it was quoted.
  String quoteToken;

  /// When the quote token expires.
  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FeeQuoteResponse &&
    other.to == to &&
    other.quantity == quantity &&
    other.fee == fee &&
    other.feeBaseUnits == feeBaseUnits &&
    other.chainId == chainId &&
    other.quoteToken == quoteToken &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (quantity.hashCode) +
    (fee.hashCode) +
    (feeBaseUnits.hashCode) +
    (chainId.hashCode) +
    (quoteToken.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'FeeQuoteResponse[to=$to, quantity=$quantity, fee=$fee, feeBaseUnits=$feeBaseUnits, chainId=$chainId, quoteToken=$quoteToken, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
      json[r'quantity'] = this.quantity;
      json[r'fee'] = this.fee;
      json[r'fee_base_units'] = this.feeBaseUnits;
      json[r'chain_id'] = this.chainId;
      json[r'quote_token'] = this.quoteToken;
      json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [FeeQuoteResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeeQuoteResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'to'), 'Required key "FeeQuoteResponse[to]" is missing from JSON.');
        assert(json[r'to'] != null, 'Required key "FeeQuoteResponse[to]" has a null value in JSON.');
        assert(json.containsKey(r'quantity'), 'Required key "FeeQuoteResponse[quantity]" is missing from JSON.');
        assert(json[r'quantity'] != null, 'Required key "FeeQuoteResponse[quantity]" has a null value in JSON.');
        assert(json.containsKey(r'fee'), 'Required key "FeeQuoteResponse[fee]" is missing from JSON.');
        assert(json[r'fee'] != null, 'Required key "FeeQuoteResponse[fee]" has a null value in JSON.');
        assert(json.containsKey(r'fee_base_units'), 'Required key "FeeQuoteResponse[fee_base_units]" is missing from JSON.');
        assert(json[r'fee_base_units'] != null, 'Required key "FeeQuoteResponse[fee_base_units]" has a null value in JSON.');
        assert(json.containsKey(r'chain_id'), 'Required key "FeeQuoteResponse[chain_id]" is missing from JSON.');
        assert(json[r'chain_id'] != null, 'Required key "FeeQuoteResponse[chain_id]" has a null value in JSON.');
        assert(json.containsKey(r'quote_token'), 'Required key "FeeQuoteResponse[quote_token]" is missing from JSON.');
        assert(json[r'quote_token'] != null, 'Required key "FeeQuoteResponse[quote_token]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'), 'Required key "FeeQuoteResponse[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null, 'Required key "FeeQuoteResponse[expires_at]" has a null value in JSON.');
        return true;
      }());

      return FeeQuoteResponse(
        to: mapValueOfType<String>(json, r'to')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
        fee: mapValueOfType<String>(json, r'fee')!,
        feeBaseUnits: mapValueOfType<String>(json, r'fee_base_units')!,
        chainId: mapValueOfType<String>(json, r'chain_id')!,
        quoteToken: mapValueOfType<String>(json, r'quote_token')!,
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
      );
    }
    return null;
  }

  static List<FeeQuoteResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FeeQuoteResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeeQuoteResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FeeQuoteResponse> mapFromJson(dynamic json) {
    final map = <String, FeeQuoteResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FeeQuoteResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FeeQuoteResponse-objects as value to a dart map
  static Map<String, List<FeeQuoteResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FeeQuoteResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FeeQuoteResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
    'quantity',
    'fee',
    'fee_base_units',
    'chain_id',
    'quote_token',
    'expires_at',
  };
}

