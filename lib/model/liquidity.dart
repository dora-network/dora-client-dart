//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Liquidity {
  /// Returns a new [Liquidity] instance.
  Liquidity({
    required this.orderBookId,
    required this.positionId,
    required this.transactionId,
    required this.baseQuantity,
    required this.quoteQuantity,
    required this.sharesQuantity,
  });

  String orderBookId;

  String positionId;

  String transactionId;

  String baseQuantity;

  String quoteQuantity;

  String sharesQuantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Liquidity &&
    other.orderBookId == orderBookId &&
    other.positionId == positionId &&
    other.transactionId == transactionId &&
    other.baseQuantity == baseQuantity &&
    other.quoteQuantity == quoteQuantity &&
    other.sharesQuantity == sharesQuantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBookId.hashCode) +
    (positionId.hashCode) +
    (transactionId.hashCode) +
    (baseQuantity.hashCode) +
    (quoteQuantity.hashCode) +
    (sharesQuantity.hashCode);

  @override
  String toString() => 'Liquidity[orderBookId=$orderBookId, positionId=$positionId, transactionId=$transactionId, baseQuantity=$baseQuantity, quoteQuantity=$quoteQuantity, sharesQuantity=$sharesQuantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_book_id'] = this.orderBookId;
      json[r'position_id'] = this.positionId;
      json[r'transaction_id'] = this.transactionId;
      json[r'base_quantity'] = this.baseQuantity;
      json[r'quote_quantity'] = this.quoteQuantity;
      json[r'shares_quantity'] = this.sharesQuantity;
    return json;
  }

  /// Returns a new [Liquidity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Liquidity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'order_book_id'), 'Required key "Liquidity[order_book_id]" is missing from JSON.');
        assert(json[r'order_book_id'] != null, 'Required key "Liquidity[order_book_id]" has a null value in JSON.');
        assert(json.containsKey(r'position_id'), 'Required key "Liquidity[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "Liquidity[position_id]" has a null value in JSON.');
        assert(json.containsKey(r'transaction_id'), 'Required key "Liquidity[transaction_id]" is missing from JSON.');
        assert(json[r'transaction_id'] != null, 'Required key "Liquidity[transaction_id]" has a null value in JSON.');
        assert(json.containsKey(r'base_quantity'), 'Required key "Liquidity[base_quantity]" is missing from JSON.');
        assert(json[r'base_quantity'] != null, 'Required key "Liquidity[base_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'quote_quantity'), 'Required key "Liquidity[quote_quantity]" is missing from JSON.');
        assert(json[r'quote_quantity'] != null, 'Required key "Liquidity[quote_quantity]" has a null value in JSON.');
        assert(json.containsKey(r'shares_quantity'), 'Required key "Liquidity[shares_quantity]" is missing from JSON.');
        assert(json[r'shares_quantity'] != null, 'Required key "Liquidity[shares_quantity]" has a null value in JSON.');
        return true;
      }());

      return Liquidity(
        orderBookId: mapValueOfType<String>(json, r'order_book_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
        baseQuantity: mapValueOfType<String>(json, r'base_quantity')!,
        quoteQuantity: mapValueOfType<String>(json, r'quote_quantity')!,
        sharesQuantity: mapValueOfType<String>(json, r'shares_quantity')!,
      );
    }
    return null;
  }

  static List<Liquidity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Liquidity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Liquidity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Liquidity> mapFromJson(dynamic json) {
    final map = <String, Liquidity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Liquidity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Liquidity-objects as value to a dart map
  static Map<String, List<Liquidity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Liquidity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Liquidity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_book_id',
    'position_id',
    'transaction_id',
    'base_quantity',
    'quote_quantity',
    'shares_quantity',
  };
}

