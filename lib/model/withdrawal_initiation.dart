//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WithdrawalInitiation {
  /// Returns a new [WithdrawalInitiation] instance.
  WithdrawalInitiation({
    required this.withdrawalId,
    required this.userId,
    required this.positionId,
    required this.assetId,
    required this.quantity,
    required this.status,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
    required this.reason,
  });

  String withdrawalId;

  String userId;

  String positionId;

  String assetId;

  String quantity;

  WithdrawalStatus status;

  DateTime createdAt;

  String createdBy;

  DateTime updatedAt;

  String updatedBy;

  String reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WithdrawalInitiation &&
    other.withdrawalId == withdrawalId &&
    other.userId == userId &&
    other.positionId == positionId &&
    other.assetId == assetId &&
    other.quantity == quantity &&
    other.status == status &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (withdrawalId.hashCode) +
    (userId.hashCode) +
    (positionId.hashCode) +
    (assetId.hashCode) +
    (quantity.hashCode) +
    (status.hashCode) +
    (createdAt.hashCode) +
    (createdBy.hashCode) +
    (updatedAt.hashCode) +
    (updatedBy.hashCode) +
    (reason.hashCode);

  @override
  String toString() => 'WithdrawalInitiation[withdrawalId=$withdrawalId, userId=$userId, positionId=$positionId, assetId=$assetId, quantity=$quantity, status=$status, createdAt=$createdAt, createdBy=$createdBy, updatedAt=$updatedAt, updatedBy=$updatedBy, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'withdrawal_id'] = this.withdrawalId;
      json[r'user_id'] = this.userId;
      json[r'position_id'] = this.positionId;
      json[r'asset_id'] = this.assetId;
      json[r'quantity'] = this.quantity;
      json[r'status'] = this.status;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'created_by'] = this.createdBy;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
      json[r'updated_by'] = this.updatedBy;
      json[r'reason'] = this.reason;
    return json;
  }

  /// Returns a new [WithdrawalInitiation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WithdrawalInitiation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WithdrawalInitiation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WithdrawalInitiation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WithdrawalInitiation(
        withdrawalId: mapValueOfType<String>(json, r'withdrawal_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        positionId: mapValueOfType<String>(json, r'position_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        quantity: mapValueOfType<String>(json, r'quantity')!,
        status: WithdrawalStatus.fromJson(json[r'status'])!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        createdBy: mapValueOfType<String>(json, r'created_by')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        updatedBy: mapValueOfType<String>(json, r'updated_by')!,
        reason: mapValueOfType<String>(json, r'reason')!,
      );
    }
    return null;
  }

  static List<WithdrawalInitiation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WithdrawalInitiation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WithdrawalInitiation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WithdrawalInitiation> mapFromJson(dynamic json) {
    final map = <String, WithdrawalInitiation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WithdrawalInitiation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WithdrawalInitiation-objects as value to a dart map
  static Map<String, List<WithdrawalInitiation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WithdrawalInitiation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WithdrawalInitiation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'withdrawal_id',
    'user_id',
    'position_id',
    'asset_id',
    'quantity',
    'status',
    'created_at',
    'created_by',
    'updated_at',
    'updated_by',
    'reason',
  };
}

