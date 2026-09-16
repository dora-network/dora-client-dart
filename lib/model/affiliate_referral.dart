//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AffiliateReferral {
  /// Returns a new [AffiliateReferral] instance.
  AffiliateReferral({
    required this.userId,
    required this.programId,
    required this.referrerId,
    required this.referrerUserId,
    required this.signupSource,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.signedUpAt,
    required this.kycCompleted,
    required this.kycCompletedAt,
    required this.discordStatus,
    required this.depositCount,
    required this.withdrawalCount,
    required this.hasTraded,
    required this.firstDepositAt,
    required this.lastDepositAt,
    required this.firstWithdrawalAt,
    required this.lastWithdrawalAt,
    required this.dailyVolumeUsd,
    required this.monthlyVolumeUsd,
    required this.dailyRealizedPnlUsd,
    required this.attributedAt,
    required this.monthlyRealizedPnlUsd,
  });

  String userId;

  String programId;

  String referrerId;

  String referrerUserId;

  /// Client-reported signup hostname. Empty means unknown.
  String signupSource;

  String firstName;

  String lastName;

  String email;

  DateTime signedUpAt;

  bool kycCompleted;

  DateTime kycCompletedAt;

  /// No Discord membership integration is currently available. Unknown must not be interpreted as not joined.
  AffiliateReferralDiscordStatusEnum discordStatus;

  int depositCount;

  int withdrawalCount;

  bool hasTraded;

  DateTime firstDepositAt;

  DateTime lastDepositAt;

  DateTime firstWithdrawalAt;

  DateTime lastWithdrawalAt;

  /// Sum of absolute executed FILL quantity1 on USD-quoted trades during the selected UTC day. Both buy and sell executions count, once per user-side fill.
  String dailyVolumeUsd;

  /// Same executed USD quote-notional definition for the calendar month containing date.
  String monthlyVolumeUsd;

  /// Sum of realized_pnl_settlements.realized_usd created during the selected UTC day, matching the existing PnL ranking convention. Excludes unrealized PnL; this is not total account equity change.
  String dailyRealizedPnlUsd;

  /// Immutable referral assignment time. Earlier activity is excluded from affiliate metrics and cash flows.
  DateTime attributedAt;

  /// Realized PnL for the UTC calendar month containing date, including only settlements at or after attributed_at.
  String monthlyRealizedPnlUsd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateReferral &&
    other.userId == userId &&
    other.programId == programId &&
    other.referrerId == referrerId &&
    other.referrerUserId == referrerUserId &&
    other.signupSource == signupSource &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.email == email &&
    other.signedUpAt == signedUpAt &&
    other.kycCompleted == kycCompleted &&
    other.kycCompletedAt == kycCompletedAt &&
    other.discordStatus == discordStatus &&
    other.depositCount == depositCount &&
    other.withdrawalCount == withdrawalCount &&
    other.hasTraded == hasTraded &&
    other.firstDepositAt == firstDepositAt &&
    other.lastDepositAt == lastDepositAt &&
    other.firstWithdrawalAt == firstWithdrawalAt &&
    other.lastWithdrawalAt == lastWithdrawalAt &&
    other.dailyVolumeUsd == dailyVolumeUsd &&
    other.monthlyVolumeUsd == monthlyVolumeUsd &&
    other.dailyRealizedPnlUsd == dailyRealizedPnlUsd &&
    other.attributedAt == attributedAt &&
    other.monthlyRealizedPnlUsd == monthlyRealizedPnlUsd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (programId.hashCode) +
    (referrerId.hashCode) +
    (referrerUserId.hashCode) +
    (signupSource.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (email.hashCode) +
    (signedUpAt.hashCode) +
    (kycCompleted.hashCode) +
    (kycCompletedAt.hashCode) +
    (discordStatus.hashCode) +
    (depositCount.hashCode) +
    (withdrawalCount.hashCode) +
    (hasTraded.hashCode) +
    (firstDepositAt.hashCode) +
    (lastDepositAt.hashCode) +
    (firstWithdrawalAt.hashCode) +
    (lastWithdrawalAt.hashCode) +
    (dailyVolumeUsd.hashCode) +
    (monthlyVolumeUsd.hashCode) +
    (dailyRealizedPnlUsd.hashCode) +
    (attributedAt.hashCode) +
    (monthlyRealizedPnlUsd.hashCode);

  @override
  String toString() => 'AffiliateReferral[userId=$userId, programId=$programId, referrerId=$referrerId, referrerUserId=$referrerUserId, signupSource=$signupSource, firstName=$firstName, lastName=$lastName, email=$email, signedUpAt=$signedUpAt, kycCompleted=$kycCompleted, kycCompletedAt=$kycCompletedAt, discordStatus=$discordStatus, depositCount=$depositCount, withdrawalCount=$withdrawalCount, hasTraded=$hasTraded, firstDepositAt=$firstDepositAt, lastDepositAt=$lastDepositAt, firstWithdrawalAt=$firstWithdrawalAt, lastWithdrawalAt=$lastWithdrawalAt, dailyVolumeUsd=$dailyVolumeUsd, monthlyVolumeUsd=$monthlyVolumeUsd, dailyRealizedPnlUsd=$dailyRealizedPnlUsd, attributedAt=$attributedAt, monthlyRealizedPnlUsd=$monthlyRealizedPnlUsd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'program_id'] = this.programId;
      json[r'referrer_id'] = this.referrerId;
      json[r'referrer_user_id'] = this.referrerUserId;
      json[r'signup_source'] = this.signupSource;
      json[r'first_name'] = this.firstName;
      json[r'last_name'] = this.lastName;
      json[r'email'] = this.email;
      json[r'signed_up_at'] = this.signedUpAt.toUtc().toIso8601String();
      json[r'kyc_completed'] = this.kycCompleted;
      json[r'kyc_completed_at'] = this.kycCompletedAt.toUtc().toIso8601String();
      json[r'discord_status'] = this.discordStatus;
      json[r'deposit_count'] = this.depositCount;
      json[r'withdrawal_count'] = this.withdrawalCount;
      json[r'has_traded'] = this.hasTraded;
      json[r'first_deposit_at'] = this.firstDepositAt.toUtc().toIso8601String();
      json[r'last_deposit_at'] = this.lastDepositAt.toUtc().toIso8601String();
      json[r'first_withdrawal_at'] = this.firstWithdrawalAt.toUtc().toIso8601String();
      json[r'last_withdrawal_at'] = this.lastWithdrawalAt.toUtc().toIso8601String();
      json[r'daily_volume_usd'] = this.dailyVolumeUsd;
      json[r'monthly_volume_usd'] = this.monthlyVolumeUsd;
      json[r'daily_realized_pnl_usd'] = this.dailyRealizedPnlUsd;
      json[r'attributed_at'] = this.attributedAt.toUtc().toIso8601String();
      json[r'monthly_realized_pnl_usd'] = this.monthlyRealizedPnlUsd;
    return json;
  }

  /// Returns a new [AffiliateReferral] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateReferral? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user_id'), 'Required key "AffiliateReferral[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "AffiliateReferral[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'program_id'), 'Required key "AffiliateReferral[program_id]" is missing from JSON.');
        assert(json[r'program_id'] != null, 'Required key "AffiliateReferral[program_id]" has a null value in JSON.');
        assert(json.containsKey(r'referrer_id'), 'Required key "AffiliateReferral[referrer_id]" is missing from JSON.');
        assert(json[r'referrer_id'] != null, 'Required key "AffiliateReferral[referrer_id]" has a null value in JSON.');
        assert(json.containsKey(r'referrer_user_id'), 'Required key "AffiliateReferral[referrer_user_id]" is missing from JSON.');
        assert(json[r'referrer_user_id'] != null, 'Required key "AffiliateReferral[referrer_user_id]" has a null value in JSON.');
        assert(json.containsKey(r'signup_source'), 'Required key "AffiliateReferral[signup_source]" is missing from JSON.');
        assert(json[r'signup_source'] != null, 'Required key "AffiliateReferral[signup_source]" has a null value in JSON.');
        assert(json.containsKey(r'first_name'), 'Required key "AffiliateReferral[first_name]" is missing from JSON.');
        assert(json[r'first_name'] != null, 'Required key "AffiliateReferral[first_name]" has a null value in JSON.');
        assert(json.containsKey(r'last_name'), 'Required key "AffiliateReferral[last_name]" is missing from JSON.');
        assert(json[r'last_name'] != null, 'Required key "AffiliateReferral[last_name]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "AffiliateReferral[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "AffiliateReferral[email]" has a null value in JSON.');
        assert(json.containsKey(r'signed_up_at'), 'Required key "AffiliateReferral[signed_up_at]" is missing from JSON.');
        assert(json[r'signed_up_at'] != null, 'Required key "AffiliateReferral[signed_up_at]" has a null value in JSON.');
        assert(json.containsKey(r'kyc_completed'), 'Required key "AffiliateReferral[kyc_completed]" is missing from JSON.');
        assert(json[r'kyc_completed'] != null, 'Required key "AffiliateReferral[kyc_completed]" has a null value in JSON.');
        assert(json.containsKey(r'kyc_completed_at'), 'Required key "AffiliateReferral[kyc_completed_at]" is missing from JSON.');
        assert(json[r'kyc_completed_at'] != null, 'Required key "AffiliateReferral[kyc_completed_at]" has a null value in JSON.');
        assert(json.containsKey(r'discord_status'), 'Required key "AffiliateReferral[discord_status]" is missing from JSON.');
        assert(json[r'discord_status'] != null, 'Required key "AffiliateReferral[discord_status]" has a null value in JSON.');
        assert(json.containsKey(r'deposit_count'), 'Required key "AffiliateReferral[deposit_count]" is missing from JSON.');
        assert(json[r'deposit_count'] != null, 'Required key "AffiliateReferral[deposit_count]" has a null value in JSON.');
        assert(json.containsKey(r'withdrawal_count'), 'Required key "AffiliateReferral[withdrawal_count]" is missing from JSON.');
        assert(json[r'withdrawal_count'] != null, 'Required key "AffiliateReferral[withdrawal_count]" has a null value in JSON.');
        assert(json.containsKey(r'has_traded'), 'Required key "AffiliateReferral[has_traded]" is missing from JSON.');
        assert(json[r'has_traded'] != null, 'Required key "AffiliateReferral[has_traded]" has a null value in JSON.');
        assert(json.containsKey(r'first_deposit_at'), 'Required key "AffiliateReferral[first_deposit_at]" is missing from JSON.');
        assert(json[r'first_deposit_at'] != null, 'Required key "AffiliateReferral[first_deposit_at]" has a null value in JSON.');
        assert(json.containsKey(r'last_deposit_at'), 'Required key "AffiliateReferral[last_deposit_at]" is missing from JSON.');
        assert(json[r'last_deposit_at'] != null, 'Required key "AffiliateReferral[last_deposit_at]" has a null value in JSON.');
        assert(json.containsKey(r'first_withdrawal_at'), 'Required key "AffiliateReferral[first_withdrawal_at]" is missing from JSON.');
        assert(json[r'first_withdrawal_at'] != null, 'Required key "AffiliateReferral[first_withdrawal_at]" has a null value in JSON.');
        assert(json.containsKey(r'last_withdrawal_at'), 'Required key "AffiliateReferral[last_withdrawal_at]" is missing from JSON.');
        assert(json[r'last_withdrawal_at'] != null, 'Required key "AffiliateReferral[last_withdrawal_at]" has a null value in JSON.');
        assert(json.containsKey(r'daily_volume_usd'), 'Required key "AffiliateReferral[daily_volume_usd]" is missing from JSON.');
        assert(json[r'daily_volume_usd'] != null, 'Required key "AffiliateReferral[daily_volume_usd]" has a null value in JSON.');
        assert(json.containsKey(r'monthly_volume_usd'), 'Required key "AffiliateReferral[monthly_volume_usd]" is missing from JSON.');
        assert(json[r'monthly_volume_usd'] != null, 'Required key "AffiliateReferral[monthly_volume_usd]" has a null value in JSON.');
        assert(json.containsKey(r'daily_realized_pnl_usd'), 'Required key "AffiliateReferral[daily_realized_pnl_usd]" is missing from JSON.');
        assert(json[r'daily_realized_pnl_usd'] != null, 'Required key "AffiliateReferral[daily_realized_pnl_usd]" has a null value in JSON.');
        assert(json.containsKey(r'attributed_at'), 'Required key "AffiliateReferral[attributed_at]" is missing from JSON.');
        assert(json[r'attributed_at'] != null, 'Required key "AffiliateReferral[attributed_at]" has a null value in JSON.');
        assert(json.containsKey(r'monthly_realized_pnl_usd'), 'Required key "AffiliateReferral[monthly_realized_pnl_usd]" is missing from JSON.');
        assert(json[r'monthly_realized_pnl_usd'] != null, 'Required key "AffiliateReferral[monthly_realized_pnl_usd]" has a null value in JSON.');
        return true;
      }());

      return AffiliateReferral(
        userId: mapValueOfType<String>(json, r'user_id')!,
        programId: mapValueOfType<String>(json, r'program_id')!,
        referrerId: mapValueOfType<String>(json, r'referrer_id')!,
        referrerUserId: mapValueOfType<String>(json, r'referrer_user_id')!,
        signupSource: mapValueOfType<String>(json, r'signup_source')!,
        firstName: mapValueOfType<String>(json, r'first_name')!,
        lastName: mapValueOfType<String>(json, r'last_name')!,
        email: mapValueOfType<String>(json, r'email')!,
        signedUpAt: mapDateTime(json, r'signed_up_at', r'')!,
        kycCompleted: mapValueOfType<bool>(json, r'kyc_completed')!,
        kycCompletedAt: mapDateTime(json, r'kyc_completed_at', r'')!,
        discordStatus: AffiliateReferralDiscordStatusEnum.fromJson(json[r'discord_status'])!,
        depositCount: mapValueOfType<int>(json, r'deposit_count')!,
        withdrawalCount: mapValueOfType<int>(json, r'withdrawal_count')!,
        hasTraded: mapValueOfType<bool>(json, r'has_traded')!,
        firstDepositAt: mapDateTime(json, r'first_deposit_at', r'')!,
        lastDepositAt: mapDateTime(json, r'last_deposit_at', r'')!,
        firstWithdrawalAt: mapDateTime(json, r'first_withdrawal_at', r'')!,
        lastWithdrawalAt: mapDateTime(json, r'last_withdrawal_at', r'')!,
        dailyVolumeUsd: mapValueOfType<String>(json, r'daily_volume_usd')!,
        monthlyVolumeUsd: mapValueOfType<String>(json, r'monthly_volume_usd')!,
        dailyRealizedPnlUsd: mapValueOfType<String>(json, r'daily_realized_pnl_usd')!,
        attributedAt: mapDateTime(json, r'attributed_at', r'')!,
        monthlyRealizedPnlUsd: mapValueOfType<String>(json, r'monthly_realized_pnl_usd')!,
      );
    }
    return null;
  }

  static List<AffiliateReferral> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateReferral>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateReferral.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateReferral> mapFromJson(dynamic json) {
    final map = <String, AffiliateReferral>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateReferral.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateReferral-objects as value to a dart map
  static Map<String, List<AffiliateReferral>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateReferral>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateReferral.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'program_id',
    'referrer_id',
    'referrer_user_id',
    'signup_source',
    'first_name',
    'last_name',
    'email',
    'signed_up_at',
    'kyc_completed',
    'kyc_completed_at',
    'discord_status',
    'deposit_count',
    'withdrawal_count',
    'has_traded',
    'first_deposit_at',
    'last_deposit_at',
    'first_withdrawal_at',
    'last_withdrawal_at',
    'daily_volume_usd',
    'monthly_volume_usd',
    'daily_realized_pnl_usd',
    'attributed_at',
    'monthly_realized_pnl_usd',
  };
}

/// No Discord membership integration is currently available. Unknown must not be interpreted as not joined.
class AffiliateReferralDiscordStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AffiliateReferralDiscordStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = AffiliateReferralDiscordStatusEnum._(r'unknown');

  /// List of all possible values in this [enum][AffiliateReferralDiscordStatusEnum].
  static const values = <AffiliateReferralDiscordStatusEnum>[
    unknown,
  ];

  static AffiliateReferralDiscordStatusEnum? fromJson(dynamic value) => AffiliateReferralDiscordStatusEnumTypeTransformer().decode(value);

  static List<AffiliateReferralDiscordStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateReferralDiscordStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateReferralDiscordStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AffiliateReferralDiscordStatusEnum] to String,
/// and [decode] dynamic data back to [AffiliateReferralDiscordStatusEnum].
class AffiliateReferralDiscordStatusEnumTypeTransformer {
  factory AffiliateReferralDiscordStatusEnumTypeTransformer() => _instance ??= const AffiliateReferralDiscordStatusEnumTypeTransformer._();

  const AffiliateReferralDiscordStatusEnumTypeTransformer._();

  String encode(AffiliateReferralDiscordStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AffiliateReferralDiscordStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AffiliateReferralDiscordStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unknown': return AffiliateReferralDiscordStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AffiliateReferralDiscordStatusEnumTypeTransformer] instance.
  static AffiliateReferralDiscordStatusEnumTypeTransformer? _instance;
}


