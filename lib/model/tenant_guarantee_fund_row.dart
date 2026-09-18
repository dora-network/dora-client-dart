//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TenantGuaranteeFundRow {
  /// Returns a new [TenantGuaranteeFundRow] instance.
  TenantGuaranteeFundRow({
    required this.id,
    required this.tenantId,
    required this.seq,
    required this.available,
    required this.txKind,
    required this.updatedAt,
  });

  String id;

  String tenantId;

  int seq;

  String available;

  TenantGuaranteeFundRowTxKindEnum txKind;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TenantGuaranteeFundRow &&
    other.id == id &&
    other.tenantId == tenantId &&
    other.seq == seq &&
    other.available == available &&
    other.txKind == txKind &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (tenantId.hashCode) +
    (seq.hashCode) +
    (available.hashCode) +
    (txKind.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'TenantGuaranteeFundRow[id=$id, tenantId=$tenantId, seq=$seq, available=$available, txKind=$txKind, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'tenant_id'] = this.tenantId;
      json[r'seq'] = this.seq;
      json[r'available'] = this.available;
      json[r'tx_kind'] = this.txKind;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TenantGuaranteeFundRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TenantGuaranteeFundRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "TenantGuaranteeFundRow[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "TenantGuaranteeFundRow[id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "TenantGuaranteeFundRow[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "TenantGuaranteeFundRow[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'seq'), 'Required key "TenantGuaranteeFundRow[seq]" is missing from JSON.');
        assert(json[r'seq'] != null, 'Required key "TenantGuaranteeFundRow[seq]" has a null value in JSON.');
        assert(json.containsKey(r'available'), 'Required key "TenantGuaranteeFundRow[available]" is missing from JSON.');
        assert(json[r'available'] != null, 'Required key "TenantGuaranteeFundRow[available]" has a null value in JSON.');
        assert(json.containsKey(r'tx_kind'), 'Required key "TenantGuaranteeFundRow[tx_kind]" is missing from JSON.');
        assert(json[r'tx_kind'] != null, 'Required key "TenantGuaranteeFundRow[tx_kind]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "TenantGuaranteeFundRow[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "TenantGuaranteeFundRow[updated_at]" has a null value in JSON.');
        return true;
      }());

      return TenantGuaranteeFundRow(
        id: mapValueOfType<String>(json, r'id')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        seq: mapValueOfType<int>(json, r'seq')!,
        available: mapValueOfType<String>(json, r'available')!,
        txKind: TenantGuaranteeFundRowTxKindEnum.fromJson(json[r'tx_kind'])!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<TenantGuaranteeFundRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantGuaranteeFundRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantGuaranteeFundRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TenantGuaranteeFundRow> mapFromJson(dynamic json) {
    final map = <String, TenantGuaranteeFundRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TenantGuaranteeFundRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TenantGuaranteeFundRow-objects as value to a dart map
  static Map<String, List<TenantGuaranteeFundRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TenantGuaranteeFundRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TenantGuaranteeFundRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'tenant_id',
    'seq',
    'available',
    'tx_kind',
    'updated_at',
  };
}


class TenantGuaranteeFundRowTxKindEnum {
  /// Instantiate a new enum with the provided [value].
  const TenantGuaranteeFundRowTxKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEPOSIT = TenantGuaranteeFundRowTxKindEnum._(r'DEPOSIT');
  static const WITHDRAWAL = TenantGuaranteeFundRowTxKindEnum._(r'WITHDRAWAL');
  static const SETTLEMENT = TenantGuaranteeFundRowTxKindEnum._(r'SETTLEMENT');

  /// List of all possible values in this [enum][TenantGuaranteeFundRowTxKindEnum].
  static const values = <TenantGuaranteeFundRowTxKindEnum>[
    DEPOSIT,
    WITHDRAWAL,
    SETTLEMENT,
  ];

  static TenantGuaranteeFundRowTxKindEnum? fromJson(dynamic value) => TenantGuaranteeFundRowTxKindEnumTypeTransformer().decode(value);

  static List<TenantGuaranteeFundRowTxKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantGuaranteeFundRowTxKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantGuaranteeFundRowTxKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TenantGuaranteeFundRowTxKindEnum] to String,
/// and [decode] dynamic data back to [TenantGuaranteeFundRowTxKindEnum].
class TenantGuaranteeFundRowTxKindEnumTypeTransformer {
  factory TenantGuaranteeFundRowTxKindEnumTypeTransformer() => _instance ??= const TenantGuaranteeFundRowTxKindEnumTypeTransformer._();

  const TenantGuaranteeFundRowTxKindEnumTypeTransformer._();

  String encode(TenantGuaranteeFundRowTxKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TenantGuaranteeFundRowTxKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TenantGuaranteeFundRowTxKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEPOSIT': return TenantGuaranteeFundRowTxKindEnum.DEPOSIT;
        case r'WITHDRAWAL': return TenantGuaranteeFundRowTxKindEnum.WITHDRAWAL;
        case r'SETTLEMENT': return TenantGuaranteeFundRowTxKindEnum.SETTLEMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TenantGuaranteeFundRowTxKindEnumTypeTransformer] instance.
  static TenantGuaranteeFundRowTxKindEnumTypeTransformer? _instance;
}


