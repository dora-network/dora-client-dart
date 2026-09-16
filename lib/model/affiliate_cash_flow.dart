//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateCashFlow {
  /// Returns a new [AffiliateCashFlow] instance.
  AffiliateCashFlow({
    required this.id,
    required this.kind,
    required this.createdAt,
    required this.assetId,
    required this.assetSymbol,
    required this.amount,
  });

  String id;

  AffiliateCashFlowKindEnum kind;

  DateTime createdAt;

  String assetId;

  String assetSymbol;

  /// Decimal value, without binary floating-point rounding.
  String amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateCashFlow &&
    other.id == id &&
    other.kind == kind &&
    other.createdAt == createdAt &&
    other.assetId == assetId &&
    other.assetSymbol == assetSymbol &&
    other.amount == amount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (kind.hashCode) +
    (createdAt.hashCode) +
    (assetId.hashCode) +
    (assetSymbol.hashCode) +
    (amount.hashCode);

  @override
  String toString() => 'AffiliateCashFlow[id=$id, kind=$kind, createdAt=$createdAt, assetId=$assetId, assetSymbol=$assetSymbol, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'kind'] = this.kind;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'asset_id'] = this.assetId;
      json[r'asset_symbol'] = this.assetSymbol;
      json[r'amount'] = this.amount;
    return json;
  }

  /// Returns a new [AffiliateCashFlow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateCashFlow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "AffiliateCashFlow[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "AffiliateCashFlow[id]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "AffiliateCashFlow[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "AffiliateCashFlow[kind]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "AffiliateCashFlow[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "AffiliateCashFlow[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "AffiliateCashFlow[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "AffiliateCashFlow[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_symbol'), 'Required key "AffiliateCashFlow[asset_symbol]" is missing from JSON.');
        assert(json[r'asset_symbol'] != null, 'Required key "AffiliateCashFlow[asset_symbol]" has a null value in JSON.');
        assert(json.containsKey(r'amount'), 'Required key "AffiliateCashFlow[amount]" is missing from JSON.');
        assert(json[r'amount'] != null, 'Required key "AffiliateCashFlow[amount]" has a null value in JSON.');
        return true;
      }());

      return AffiliateCashFlow(
        id: mapValueOfType<String>(json, r'id')!,
        kind: AffiliateCashFlowKindEnum.fromJson(json[r'kind'])!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        assetSymbol: mapValueOfType<String>(json, r'asset_symbol')!,
        amount: mapValueOfType<String>(json, r'amount')!,
      );
    }
    return null;
  }

  static List<AffiliateCashFlow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateCashFlow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateCashFlow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateCashFlow> mapFromJson(dynamic json) {
    final map = <String, AffiliateCashFlow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateCashFlow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateCashFlow-objects as value to a dart map
  static Map<String, List<AffiliateCashFlow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateCashFlow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateCashFlow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'kind',
    'created_at',
    'asset_id',
    'asset_symbol',
    'amount',
  };
}


class AffiliateCashFlowKindEnum {
  /// Instantiate a new enum with the provided [value].
  const AffiliateCashFlowKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EXTERNAL_DEPOSIT = AffiliateCashFlowKindEnum._(r'EXTERNAL_DEPOSIT');
  static const EXTERNAL_WITHDRAW = AffiliateCashFlowKindEnum._(r'EXTERNAL_WITHDRAW');

  /// List of all possible values in this [enum][AffiliateCashFlowKindEnum].
  static const values = <AffiliateCashFlowKindEnum>[
    EXTERNAL_DEPOSIT,
    EXTERNAL_WITHDRAW,
  ];

  static AffiliateCashFlowKindEnum? fromJson(dynamic value) => AffiliateCashFlowKindEnumTypeTransformer().decode(value);

  static List<AffiliateCashFlowKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateCashFlowKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateCashFlowKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AffiliateCashFlowKindEnum] to String,
/// and [decode] dynamic data back to [AffiliateCashFlowKindEnum].
class AffiliateCashFlowKindEnumTypeTransformer {
  factory AffiliateCashFlowKindEnumTypeTransformer() => _instance ??= const AffiliateCashFlowKindEnumTypeTransformer._();

  const AffiliateCashFlowKindEnumTypeTransformer._();

  String encode(AffiliateCashFlowKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AffiliateCashFlowKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AffiliateCashFlowKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EXTERNAL_DEPOSIT': return AffiliateCashFlowKindEnum.EXTERNAL_DEPOSIT;
        case r'EXTERNAL_WITHDRAW': return AffiliateCashFlowKindEnum.EXTERNAL_WITHDRAW;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AffiliateCashFlowKindEnumTypeTransformer] instance.
  static AffiliateCashFlowKindEnumTypeTransformer? _instance;
}


