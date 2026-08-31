//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserDeactivation {
  /// Returns a new [UserDeactivation] instance.
  UserDeactivation({
    required this.deactivationId,
    required this.userId,
    required this.requestedBy,
    required this.reason,
    required this.status,
    required this.attempts,
    this.result,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
    this.reactivatedBy,
    this.reactivatedAt,
  });

  String deactivationId;

  String userId;

  /// Admin that requested the deactivation.
  String requestedBy;

  String reason;

  /// PENDING: wind-down in progress. FAILED: wind-down gave up; admin can re-trigger. COMPLETED: account deactivated. REACTIVATED: blocks lifted.
  UserDeactivationStatusEnum status;

  /// Wind-down attempts performed so far.
  int attempts;

  /// Latest wind-down outcome or error summary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  DateTime createdAt;

  DateTime updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? completedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reactivatedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? reactivatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserDeactivation &&
    other.deactivationId == deactivationId &&
    other.userId == userId &&
    other.requestedBy == requestedBy &&
    other.reason == reason &&
    other.status == status &&
    other.attempts == attempts &&
    other.result == result &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.completedAt == completedAt &&
    other.reactivatedBy == reactivatedBy &&
    other.reactivatedAt == reactivatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deactivationId.hashCode) +
    (userId.hashCode) +
    (requestedBy.hashCode) +
    (reason.hashCode) +
    (status.hashCode) +
    (attempts.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (reactivatedBy == null ? 0 : reactivatedBy!.hashCode) +
    (reactivatedAt == null ? 0 : reactivatedAt!.hashCode);

  @override
  String toString() => 'UserDeactivation[deactivationId=$deactivationId, userId=$userId, requestedBy=$requestedBy, reason=$reason, status=$status, attempts=$attempts, result=$result, createdAt=$createdAt, updatedAt=$updatedAt, completedAt=$completedAt, reactivatedBy=$reactivatedBy, reactivatedAt=$reactivatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deactivation_id'] = this.deactivationId;
      json[r'user_id'] = this.userId;
      json[r'requested_by'] = this.requestedBy;
      json[r'reason'] = this.reason;
      json[r'status'] = this.status;
      json[r'attempts'] = this.attempts;
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    if (this.completedAt != null) {
      json[r'completed_at'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completed_at'] = null;
    }
    if (this.reactivatedBy != null) {
      json[r'reactivated_by'] = this.reactivatedBy;
    } else {
      json[r'reactivated_by'] = null;
    }
    if (this.reactivatedAt != null) {
      json[r'reactivated_at'] = this.reactivatedAt!.toUtc().toIso8601String();
    } else {
      json[r'reactivated_at'] = null;
    }
    return json;
  }

  /// Returns a new [UserDeactivation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserDeactivation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'deactivation_id'), 'Required key "UserDeactivation[deactivation_id]" is missing from JSON.');
        assert(json[r'deactivation_id'] != null, 'Required key "UserDeactivation[deactivation_id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "UserDeactivation[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "UserDeactivation[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'requested_by'), 'Required key "UserDeactivation[requested_by]" is missing from JSON.');
        assert(json[r'requested_by'] != null, 'Required key "UserDeactivation[requested_by]" has a null value in JSON.');
        assert(json.containsKey(r'reason'), 'Required key "UserDeactivation[reason]" is missing from JSON.');
        assert(json[r'reason'] != null, 'Required key "UserDeactivation[reason]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "UserDeactivation[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "UserDeactivation[status]" has a null value in JSON.');
        assert(json.containsKey(r'attempts'), 'Required key "UserDeactivation[attempts]" is missing from JSON.');
        assert(json[r'attempts'] != null, 'Required key "UserDeactivation[attempts]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "UserDeactivation[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "UserDeactivation[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "UserDeactivation[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "UserDeactivation[updated_at]" has a null value in JSON.');
        return true;
      }());

      return UserDeactivation(
        deactivationId: mapValueOfType<String>(json, r'deactivation_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        requestedBy: mapValueOfType<String>(json, r'requested_by')!,
        reason: mapValueOfType<String>(json, r'reason')!,
        status: UserDeactivationStatusEnum.fromJson(json[r'status'])!,
        attempts: mapValueOfType<int>(json, r'attempts')!,
        result: mapValueOfType<String>(json, r'result'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        completedAt: mapDateTime(json, r'completed_at', r''),
        reactivatedBy: mapValueOfType<String>(json, r'reactivated_by'),
        reactivatedAt: mapDateTime(json, r'reactivated_at', r''),
      );
    }
    return null;
  }

  static List<UserDeactivation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDeactivation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDeactivation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserDeactivation> mapFromJson(dynamic json) {
    final map = <String, UserDeactivation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDeactivation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserDeactivation-objects as value to a dart map
  static Map<String, List<UserDeactivation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserDeactivation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserDeactivation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deactivation_id',
    'user_id',
    'requested_by',
    'reason',
    'status',
    'attempts',
    'created_at',
    'updated_at',
  };
}

/// PENDING: wind-down in progress. FAILED: wind-down gave up; admin can re-trigger. COMPLETED: account deactivated. REACTIVATED: blocks lifted.
class UserDeactivationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UserDeactivationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = UserDeactivationStatusEnum._(r'PENDING');
  static const FAILED = UserDeactivationStatusEnum._(r'FAILED');
  static const COMPLETED = UserDeactivationStatusEnum._(r'COMPLETED');
  static const REACTIVATED = UserDeactivationStatusEnum._(r'REACTIVATED');

  /// List of all possible values in this [enum][UserDeactivationStatusEnum].
  static const values = <UserDeactivationStatusEnum>[
    PENDING,
    FAILED,
    COMPLETED,
    REACTIVATED,
  ];

  static UserDeactivationStatusEnum? fromJson(dynamic value) => UserDeactivationStatusEnumTypeTransformer().decode(value);

  static List<UserDeactivationStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDeactivationStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDeactivationStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserDeactivationStatusEnum] to String,
/// and [decode] dynamic data back to [UserDeactivationStatusEnum].
class UserDeactivationStatusEnumTypeTransformer {
  factory UserDeactivationStatusEnumTypeTransformer() => _instance ??= const UserDeactivationStatusEnumTypeTransformer._();

  const UserDeactivationStatusEnumTypeTransformer._();

  String encode(UserDeactivationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDeactivationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDeactivationStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return UserDeactivationStatusEnum.PENDING;
        case r'FAILED': return UserDeactivationStatusEnum.FAILED;
        case r'COMPLETED': return UserDeactivationStatusEnum.COMPLETED;
        case r'REACTIVATED': return UserDeactivationStatusEnum.REACTIVATED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserDeactivationStatusEnumTypeTransformer] instance.
  static UserDeactivationStatusEnumTypeTransformer? _instance;
}


