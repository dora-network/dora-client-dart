//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TradingChallengeRegistrationRequest {
  /// Returns a new [TradingChallengeRegistrationRequest] instance.
  TradingChallengeRegistrationRequest({
    required this.id,
    required this.tradingChallengeId,
    this.tradingChallengeName,
    this.tradingChallengeType,
    this.tradingChallengeStatus,
    required this.userId,
    this.userEmail,
    this.userName,
    required this.tenantId,
    required this.status,
    this.reviewedBy,
    this.reviewedAt,
    this.reviewReason,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String tradingChallengeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tradingChallengeName;

  TradingChallengeRegistrationRequestTradingChallengeTypeEnum? tradingChallengeType;

  TradingChallengeRegistrationRequestTradingChallengeStatusEnum? tradingChallengeStatus;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userName;

  String tenantId;

  TradingChallengeRegistrationRequestStatusEnum status;

  /// Who settled the request. Absent while it is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reviewedBy;

  /// When it was settled. Absent while it is PENDING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? reviewedAt;

  /// Free-text note kept for the audit trail. Optional on both decisions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reviewReason;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TradingChallengeRegistrationRequest &&
    other.id == id &&
    other.tradingChallengeId == tradingChallengeId &&
    other.tradingChallengeName == tradingChallengeName &&
    other.tradingChallengeType == tradingChallengeType &&
    other.tradingChallengeStatus == tradingChallengeStatus &&
    other.userId == userId &&
    other.userEmail == userEmail &&
    other.userName == userName &&
    other.tenantId == tenantId &&
    other.status == status &&
    other.reviewedBy == reviewedBy &&
    other.reviewedAt == reviewedAt &&
    other.reviewReason == reviewReason &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (tradingChallengeId.hashCode) +
    (tradingChallengeName == null ? 0 : tradingChallengeName!.hashCode) +
    (tradingChallengeType == null ? 0 : tradingChallengeType!.hashCode) +
    (tradingChallengeStatus == null ? 0 : tradingChallengeStatus!.hashCode) +
    (userId.hashCode) +
    (userEmail == null ? 0 : userEmail!.hashCode) +
    (userName == null ? 0 : userName!.hashCode) +
    (tenantId.hashCode) +
    (status.hashCode) +
    (reviewedBy == null ? 0 : reviewedBy!.hashCode) +
    (reviewedAt == null ? 0 : reviewedAt!.hashCode) +
    (reviewReason == null ? 0 : reviewReason!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'TradingChallengeRegistrationRequest[id=$id, tradingChallengeId=$tradingChallengeId, tradingChallengeName=$tradingChallengeName, tradingChallengeType=$tradingChallengeType, tradingChallengeStatus=$tradingChallengeStatus, userId=$userId, userEmail=$userEmail, userName=$userName, tenantId=$tenantId, status=$status, reviewedBy=$reviewedBy, reviewedAt=$reviewedAt, reviewReason=$reviewReason, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'trading_challenge_id'] = this.tradingChallengeId;
    if (this.tradingChallengeName != null) {
      json[r'trading_challenge_name'] = this.tradingChallengeName;
    } else {
      json[r'trading_challenge_name'] = null;
    }
    if (this.tradingChallengeType != null) {
      json[r'trading_challenge_type'] = this.tradingChallengeType;
    } else {
      json[r'trading_challenge_type'] = null;
    }
    if (this.tradingChallengeStatus != null) {
      json[r'trading_challenge_status'] = this.tradingChallengeStatus;
    } else {
      json[r'trading_challenge_status'] = null;
    }
      json[r'user_id'] = this.userId;
    if (this.userEmail != null) {
      json[r'user_email'] = this.userEmail;
    } else {
      json[r'user_email'] = null;
    }
    if (this.userName != null) {
      json[r'user_name'] = this.userName;
    } else {
      json[r'user_name'] = null;
    }
      json[r'tenant_id'] = this.tenantId;
      json[r'status'] = this.status;
    if (this.reviewedBy != null) {
      json[r'reviewed_by'] = this.reviewedBy;
    } else {
      json[r'reviewed_by'] = null;
    }
    if (this.reviewedAt != null) {
      json[r'reviewed_at'] = this.reviewedAt!.toUtc().toIso8601String();
    } else {
      json[r'reviewed_at'] = null;
    }
    if (this.reviewReason != null) {
      json[r'review_reason'] = this.reviewReason;
    } else {
      json[r'review_reason'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TradingChallengeRegistrationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TradingChallengeRegistrationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "TradingChallengeRegistrationRequest[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "TradingChallengeRegistrationRequest[id]" has a null value in JSON.');
        assert(json.containsKey(r'trading_challenge_id'), 'Required key "TradingChallengeRegistrationRequest[trading_challenge_id]" is missing from JSON.');
        assert(json[r'trading_challenge_id'] != null, 'Required key "TradingChallengeRegistrationRequest[trading_challenge_id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "TradingChallengeRegistrationRequest[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "TradingChallengeRegistrationRequest[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'tenant_id'), 'Required key "TradingChallengeRegistrationRequest[tenant_id]" is missing from JSON.');
        assert(json[r'tenant_id'] != null, 'Required key "TradingChallengeRegistrationRequest[tenant_id]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "TradingChallengeRegistrationRequest[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "TradingChallengeRegistrationRequest[status]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "TradingChallengeRegistrationRequest[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "TradingChallengeRegistrationRequest[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "TradingChallengeRegistrationRequest[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "TradingChallengeRegistrationRequest[updated_at]" has a null value in JSON.');
        return true;
      }());

      return TradingChallengeRegistrationRequest(
        id: mapValueOfType<String>(json, r'id')!,
        tradingChallengeId: mapValueOfType<String>(json, r'trading_challenge_id')!,
        tradingChallengeName: mapValueOfType<String>(json, r'trading_challenge_name'),
        tradingChallengeType: TradingChallengeRegistrationRequestTradingChallengeTypeEnum.fromJson(json[r'trading_challenge_type']),
        tradingChallengeStatus: TradingChallengeRegistrationRequestTradingChallengeStatusEnum.fromJson(json[r'trading_challenge_status']),
        userId: mapValueOfType<String>(json, r'user_id')!,
        userEmail: mapValueOfType<String>(json, r'user_email'),
        userName: mapValueOfType<String>(json, r'user_name'),
        tenantId: mapValueOfType<String>(json, r'tenant_id')!,
        status: TradingChallengeRegistrationRequestStatusEnum.fromJson(json[r'status'])!,
        reviewedBy: mapValueOfType<String>(json, r'reviewed_by'),
        reviewedAt: mapDateTime(json, r'reviewed_at', r''),
        reviewReason: mapValueOfType<String>(json, r'review_reason'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<TradingChallengeRegistrationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeRegistrationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeRegistrationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TradingChallengeRegistrationRequest> mapFromJson(dynamic json) {
    final map = <String, TradingChallengeRegistrationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TradingChallengeRegistrationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TradingChallengeRegistrationRequest-objects as value to a dart map
  static Map<String, List<TradingChallengeRegistrationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TradingChallengeRegistrationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TradingChallengeRegistrationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'trading_challenge_id',
    'user_id',
    'tenant_id',
    'status',
    'created_at',
    'updated_at',
  };
}


class TradingChallengeRegistrationRequestTradingChallengeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TradingChallengeRegistrationRequestTradingChallengeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOURNAMENT = TradingChallengeRegistrationRequestTradingChallengeTypeEnum._(r'TOURNAMENT');
  static const CASH = TradingChallengeRegistrationRequestTradingChallengeTypeEnum._(r'CASH');

  /// List of all possible values in this [enum][TradingChallengeRegistrationRequestTradingChallengeTypeEnum].
  static const values = <TradingChallengeRegistrationRequestTradingChallengeTypeEnum>[
    TOURNAMENT,
    CASH,
  ];

  static TradingChallengeRegistrationRequestTradingChallengeTypeEnum? fromJson(dynamic value) => TradingChallengeRegistrationRequestTradingChallengeTypeEnumTypeTransformer().decode(value);

  static List<TradingChallengeRegistrationRequestTradingChallengeTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeRegistrationRequestTradingChallengeTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeRegistrationRequestTradingChallengeTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TradingChallengeRegistrationRequestTradingChallengeTypeEnum] to String,
/// and [decode] dynamic data back to [TradingChallengeRegistrationRequestTradingChallengeTypeEnum].
class TradingChallengeRegistrationRequestTradingChallengeTypeEnumTypeTransformer {
  factory TradingChallengeRegistrationRequestTradingChallengeTypeEnumTypeTransformer() => _instance ??= const TradingChallengeRegistrationRequestTradingChallengeTypeEnumTypeTransformer._();

  const TradingChallengeRegistrationRequestTradingChallengeTypeEnumTypeTransformer._();

  String encode(TradingChallengeRegistrationRequestTradingChallengeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TradingChallengeRegistrationRequestTradingChallengeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TradingChallengeRegistrationRequestTradingChallengeTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOURNAMENT': return TradingChallengeRegistrationRequestTradingChallengeTypeEnum.TOURNAMENT;
        case r'CASH': return TradingChallengeRegistrationRequestTradingChallengeTypeEnum.CASH;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TradingChallengeRegistrationRequestTradingChallengeTypeEnumTypeTransformer] instance.
  static TradingChallengeRegistrationRequestTradingChallengeTypeEnumTypeTransformer? _instance;
}



class TradingChallengeRegistrationRequestTradingChallengeStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TradingChallengeRegistrationRequestTradingChallengeStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = TradingChallengeRegistrationRequestTradingChallengeStatusEnum._(r'PENDING');
  static const ACTIVE = TradingChallengeRegistrationRequestTradingChallengeStatusEnum._(r'ACTIVE');
  static const COMPLETED = TradingChallengeRegistrationRequestTradingChallengeStatusEnum._(r'COMPLETED');

  /// List of all possible values in this [enum][TradingChallengeRegistrationRequestTradingChallengeStatusEnum].
  static const values = <TradingChallengeRegistrationRequestTradingChallengeStatusEnum>[
    PENDING,
    ACTIVE,
    COMPLETED,
  ];

  static TradingChallengeRegistrationRequestTradingChallengeStatusEnum? fromJson(dynamic value) => TradingChallengeRegistrationRequestTradingChallengeStatusEnumTypeTransformer().decode(value);

  static List<TradingChallengeRegistrationRequestTradingChallengeStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeRegistrationRequestTradingChallengeStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeRegistrationRequestTradingChallengeStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TradingChallengeRegistrationRequestTradingChallengeStatusEnum] to String,
/// and [decode] dynamic data back to [TradingChallengeRegistrationRequestTradingChallengeStatusEnum].
class TradingChallengeRegistrationRequestTradingChallengeStatusEnumTypeTransformer {
  factory TradingChallengeRegistrationRequestTradingChallengeStatusEnumTypeTransformer() => _instance ??= const TradingChallengeRegistrationRequestTradingChallengeStatusEnumTypeTransformer._();

  const TradingChallengeRegistrationRequestTradingChallengeStatusEnumTypeTransformer._();

  String encode(TradingChallengeRegistrationRequestTradingChallengeStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TradingChallengeRegistrationRequestTradingChallengeStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TradingChallengeRegistrationRequestTradingChallengeStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return TradingChallengeRegistrationRequestTradingChallengeStatusEnum.PENDING;
        case r'ACTIVE': return TradingChallengeRegistrationRequestTradingChallengeStatusEnum.ACTIVE;
        case r'COMPLETED': return TradingChallengeRegistrationRequestTradingChallengeStatusEnum.COMPLETED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TradingChallengeRegistrationRequestTradingChallengeStatusEnumTypeTransformer] instance.
  static TradingChallengeRegistrationRequestTradingChallengeStatusEnumTypeTransformer? _instance;
}



class TradingChallengeRegistrationRequestStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TradingChallengeRegistrationRequestStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = TradingChallengeRegistrationRequestStatusEnum._(r'PENDING');
  static const APPROVED = TradingChallengeRegistrationRequestStatusEnum._(r'APPROVED');
  static const REJECTED = TradingChallengeRegistrationRequestStatusEnum._(r'REJECTED');

  /// List of all possible values in this [enum][TradingChallengeRegistrationRequestStatusEnum].
  static const values = <TradingChallengeRegistrationRequestStatusEnum>[
    PENDING,
    APPROVED,
    REJECTED,
  ];

  static TradingChallengeRegistrationRequestStatusEnum? fromJson(dynamic value) => TradingChallengeRegistrationRequestStatusEnumTypeTransformer().decode(value);

  static List<TradingChallengeRegistrationRequestStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradingChallengeRegistrationRequestStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradingChallengeRegistrationRequestStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TradingChallengeRegistrationRequestStatusEnum] to String,
/// and [decode] dynamic data back to [TradingChallengeRegistrationRequestStatusEnum].
class TradingChallengeRegistrationRequestStatusEnumTypeTransformer {
  factory TradingChallengeRegistrationRequestStatusEnumTypeTransformer() => _instance ??= const TradingChallengeRegistrationRequestStatusEnumTypeTransformer._();

  const TradingChallengeRegistrationRequestStatusEnumTypeTransformer._();

  String encode(TradingChallengeRegistrationRequestStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TradingChallengeRegistrationRequestStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TradingChallengeRegistrationRequestStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return TradingChallengeRegistrationRequestStatusEnum.PENDING;
        case r'APPROVED': return TradingChallengeRegistrationRequestStatusEnum.APPROVED;
        case r'REJECTED': return TradingChallengeRegistrationRequestStatusEnum.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TradingChallengeRegistrationRequestStatusEnumTypeTransformer] instance.
  static TradingChallengeRegistrationRequestStatusEnumTypeTransformer? _instance;
}


