//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TenantRestrictions {
  /// Returns a new [TenantRestrictions] instance.
  TenantRestrictions({
    required this.tenantId,
    required this.dailyDepositLimit,
    required this.tradeLimit,
    required this.updatedAt,
  });

  /// Tenant ID
  String tenantId;

  /// Maximum allowed deposit for the tenant per day.
  String dailyDepositLimit;

  /// Maximum allowed trade amount for the tenant.
  String tradeLimit;

  /// Last update timestamp for the restrictions.
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TenantRestrictions &&
    other.tenantId == tenantId &&
    other.dailyDepositLimit == dailyDepositLimit &&
    other.tradeLimit == tradeLimit &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tenantId.hashCode) +
    (dailyDepositLimit.hashCode) +
    (tradeLimit.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'TenantRestrictions[tenantId=$tenantId, dailyDepositLimit=$dailyDepositLimit, tradeLimit=$tradeLimit, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tenant_id'] = this.tenantId;
      json[r'daily_deposit_limit'] = this.dailyDepositLimit;
      json[r'trade_limit'] = this.tradeLimit;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TenantRestrictions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TenantRestrictions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'tenant_id'), 'Required key "TenantRestrictions[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "TenantRestrictions[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'daily_deposit_limit'), 'Required key "TenantRestrictions[daily_deposit_limit]" is missing from JSON.');
        assert(json[r'daily_deposit_limit'] != null, 'Required key "TenantRestrictions[daily_deposit_limit]" has a null value in JSON.');
        assert(json.containsKey(r'trade_limit'), 'Required key "TenantRestrictions[trade_limit]" is missing from JSON.');
        assert(json[r'trade_limit'] != null, 'Required key "TenantRestrictions[trade_limit]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "TenantRestrictions[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "TenantRestrictions[updated_at]" has a null value in JSON.');
        return true;
      }());

      return TenantRestrictions(
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        dailyDepositLimit: mapValueOfType<String>(json, r'daily_deposit_limit')!,
        tradeLimit: mapValueOfType<String>(json, r'trade_limit')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<TenantRestrictions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantRestrictions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantRestrictions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TenantRestrictions> mapFromJson(dynamic json) {
    final map = <String, TenantRestrictions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TenantRestrictions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TenantRestrictions-objects as value to a dart map
  static Map<String, List<TenantRestrictions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TenantRestrictions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TenantRestrictions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tenant_id',
    'daily_deposit_limit',
    'trade_limit',
    'updated_at',
  };
}

