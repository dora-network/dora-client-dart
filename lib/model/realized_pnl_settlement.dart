//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RealizedPnlSettlement {
  /// Returns a new [RealizedPnlSettlement] instance.
  RealizedPnlSettlement({
    required this.id,
    required this.userId,
    required this.tenantId,
    required this.positionId,
    required this.orderId,
    required this.realizedUsd,
    this.settledAt,
    required this.createdAt,
  });

  /// The ID of the realized PnL settlement
  String id;

  /// The ID of the user associated with the realized PnL settlement
  String userId;

  /// The ID of the tenant associated with the realized PnL settlement
  String tenantId;

  /// The ID of the position associated with the realized PnL settlement
  String positionId;

  /// The ID of the position-closing order associated with the realized PnL settlement
  String orderId;

  /// The amount of realized PnL in USD
  String realizedUsd;

  /// The timestamp when the realized PnL settlement was settled
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? settledAt;

  /// The timestamp when the realized PnL settlement was created
  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RealizedPnlSettlement &&
    other.id == id &&
    other.userId == userId &&
    other.tenantId == tenantId &&
    other.positionId == positionId &&
    other.orderId == orderId &&
    other.realizedUsd == realizedUsd &&
    other.settledAt == settledAt &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (tenantId.hashCode) +
    (positionId.hashCode) +
    (orderId.hashCode) +
    (realizedUsd.hashCode) +
    (settledAt == null ? 0 : settledAt!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'RealizedPnlSettlement[id=$id, userId=$userId, tenantId=$tenantId, positionId=$positionId, orderId=$orderId, realizedUsd=$realizedUsd, settledAt=$settledAt, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'user_id'] = this.userId;
      json[r'tenant_id'] = this.tenantId;
      json[r'position_id'] = this.positionId;
      json[r'order_id'] = this.orderId;
      json[r'realized_usd'] = this.realizedUsd;
    if (this.settledAt != null) {
      json[r'settled_at'] = this.settledAt!.toUtc().toIso8601String();
    } else {
      json[r'settled_at'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [RealizedPnlSettlement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RealizedPnlSettlement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "RealizedPnlSettlement[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "RealizedPnlSettlement[id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "RealizedPnlSettlement[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "RealizedPnlSettlement[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "RealizedPnlSettlement[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "RealizedPnlSettlement[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'position_id'), 'Required key "RealizedPnlSettlement[position_id]" is missing from JSON.');
        assert(json[r'position_id'] != null, 'Required key "RealizedPnlSettlement[position_id]" has a null value in JSON.');
        assert(json.containsKey(r'order_id'), 'Required key "RealizedPnlSettlement[order_id]" is missing from JSON.');
        assert(json[r'order_id'] != null, 'Required key "RealizedPnlSettlement[order_id]" has a null value in JSON.');
        assert(json.containsKey(r'realized_usd'), 'Required key "RealizedPnlSettlement[realized_usd]" is missing from JSON.');
        assert(json[r'realized_usd'] != null, 'Required key "RealizedPnlSettlement[realized_usd]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "RealizedPnlSettlement[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "RealizedPnlSettlement[created_at]" has a null value in JSON.');
        return true;
      }());

      return RealizedPnlSettlement(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        orderId: mapValueOfType<String>(json, r'order_id')!,
        realizedUsd: mapValueOfType<String>(json, r'realized_usd')!,
        settledAt: mapDateTime(json, r'settled_at', r''),
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<RealizedPnlSettlement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RealizedPnlSettlement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RealizedPnlSettlement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RealizedPnlSettlement> mapFromJson(dynamic json) {
    final map = <String, RealizedPnlSettlement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RealizedPnlSettlement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RealizedPnlSettlement-objects as value to a dart map
  static Map<String, List<RealizedPnlSettlement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RealizedPnlSettlement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RealizedPnlSettlement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_id',
    'tenant_id',
    'position_id',
    'order_id',
    'realized_usd',
    'created_at',
  };
}

