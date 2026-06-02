//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TransactionKind {
  /// Instantiate a new enum with the provided [value].
  const TransactionKind._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACCRUE_INTEREST = TransactionKind._(r'ACCRUE_INTEREST');
  static const ADD_LIQUIDITY = TransactionKind._(r'ADD_LIQUIDITY');
  static const BOND_MATURE = TransactionKind._(r'BOND_MATURE');
  static const CLAIM_INTEREST = TransactionKind._(r'CLAIM_INTEREST');
  static const CREDIT = TransactionKind._(r'CREDIT');
  static const DEBIT = TransactionKind._(r'DEBIT');
  static const EXTERNAL_DEPOSIT = TransactionKind._(r'EXTERNAL_DEPOSIT');
  static const EXTERNAL_WITHDRAW = TransactionKind._(r'EXTERNAL_WITHDRAW');
  static const FILL = TransactionKind._(r'FILL');
  static const LENDING_INTEREST_ACCRUAL = TransactionKind._(r'LENDING_INTEREST_ACCRUAL');
  static const LIQUIDATE = TransactionKind._(r'LIQUIDATE');
  static const MATCH_ORDER = TransactionKind._(r'MATCH_ORDER');
  static const PAY_INTEREST = TransactionKind._(r'PAY_INTEREST');
  static const SUBTRACT_LIQUIDITY = TransactionKind._(r'SUBTRACT_LIQUIDITY');
  static const REPAY = TransactionKind._(r'REPAY');
  static const SUPPLY = TransactionKind._(r'SUPPLY');
  static const WITHDRAW = TransactionKind._(r'WITHDRAW');
  static const ISOLATE_COLLATERAL = TransactionKind._(r'ISOLATE_COLLATERAL');
  static const ISOLATE_POSITION = TransactionKind._(r'ISOLATE_POSITION');
  static const UNITE_POSITION = TransactionKind._(r'UNITE_POSITION');
  static const COLLATERALIZE = TransactionKind._(r'COLLATERALIZE');
  static const DE_COLLATERALIZE = TransactionKind._(r'DE-COLLATERALIZE');
  static const COUPON_PAYMENT = TransactionKind._(r'COUPON_PAYMENT');
  static const INTERNAL_TRANSFER = TransactionKind._(r'INTERNAL_TRANSFER');

  /// List of all possible values in this [enum][TransactionKind].
  static const values = <TransactionKind>[
    ACCRUE_INTEREST,
    ADD_LIQUIDITY,
    BOND_MATURE,
    CLAIM_INTEREST,
    CREDIT,
    DEBIT,
    EXTERNAL_DEPOSIT,
    EXTERNAL_WITHDRAW,
    FILL,
    LENDING_INTEREST_ACCRUAL,
    LIQUIDATE,
    MATCH_ORDER,
    PAY_INTEREST,
    SUBTRACT_LIQUIDITY,
    REPAY,
    SUPPLY,
    WITHDRAW,
    ISOLATE_COLLATERAL,
    ISOLATE_POSITION,
    UNITE_POSITION,
    COLLATERALIZE,
    DE_COLLATERALIZE,
    COUPON_PAYMENT,
    INTERNAL_TRANSFER,
  ];

  static TransactionKind? fromJson(dynamic value) => TransactionKindTypeTransformer().decode(value);

  static List<TransactionKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransactionKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransactionKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TransactionKind] to String,
/// and [decode] dynamic data back to [TransactionKind].
class TransactionKindTypeTransformer {
  factory TransactionKindTypeTransformer() => _instance ??= const TransactionKindTypeTransformer._();

  const TransactionKindTypeTransformer._();

  String encode(TransactionKind data) => data.value;

  /// Decodes a [dynamic value][data] to a TransactionKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TransactionKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACCRUE_INTEREST': return TransactionKind.ACCRUE_INTEREST;
        case r'ADD_LIQUIDITY': return TransactionKind.ADD_LIQUIDITY;
        case r'BOND_MATURE': return TransactionKind.BOND_MATURE;
        case r'CLAIM_INTEREST': return TransactionKind.CLAIM_INTEREST;
        case r'CREDIT': return TransactionKind.CREDIT;
        case r'DEBIT': return TransactionKind.DEBIT;
        case r'EXTERNAL_DEPOSIT': return TransactionKind.EXTERNAL_DEPOSIT;
        case r'EXTERNAL_WITHDRAW': return TransactionKind.EXTERNAL_WITHDRAW;
        case r'FILL': return TransactionKind.FILL;
        case r'LENDING_INTEREST_ACCRUAL': return TransactionKind.LENDING_INTEREST_ACCRUAL;
        case r'LIQUIDATE': return TransactionKind.LIQUIDATE;
        case r'MATCH_ORDER': return TransactionKind.MATCH_ORDER;
        case r'PAY_INTEREST': return TransactionKind.PAY_INTEREST;
        case r'SUBTRACT_LIQUIDITY': return TransactionKind.SUBTRACT_LIQUIDITY;
        case r'REPAY': return TransactionKind.REPAY;
        case r'SUPPLY': return TransactionKind.SUPPLY;
        case r'WITHDRAW': return TransactionKind.WITHDRAW;
        case r'ISOLATE_COLLATERAL': return TransactionKind.ISOLATE_COLLATERAL;
        case r'ISOLATE_POSITION': return TransactionKind.ISOLATE_POSITION;
        case r'UNITE_POSITION': return TransactionKind.UNITE_POSITION;
        case r'COLLATERALIZE': return TransactionKind.COLLATERALIZE;
        case r'DE-COLLATERALIZE': return TransactionKind.DE_COLLATERALIZE;
        case r'COUPON_PAYMENT': return TransactionKind.COUPON_PAYMENT;
        case r'INTERNAL_TRANSFER': return TransactionKind.INTERNAL_TRANSFER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TransactionKindTypeTransformer] instance.
  static TransactionKindTypeTransformer? _instance;
}

