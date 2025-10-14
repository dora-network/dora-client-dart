part of dora_client.api;

class TransactionKind {
  /// The underlying value of this enum member.
  String value;

  TransactionKind._internal(this.value);

  static TransactionKind aCCRUEINTEREST_ = TransactionKind._internal("ACCRUE_INTEREST");
  static TransactionKind aDDLIQUIDITY_ = TransactionKind._internal("ADD_LIQUIDITY");
  static TransactionKind bONDMATURE_ = TransactionKind._internal("BOND_MATURE");
  static TransactionKind cLAIMINTEREST_ = TransactionKind._internal("CLAIM_INTEREST");
  static TransactionKind cREDIT_ = TransactionKind._internal("CREDIT");
  static TransactionKind dEBIT_ = TransactionKind._internal("DEBIT");
  static TransactionKind eXTERNALDEPOSIT_ = TransactionKind._internal("EXTERNAL_DEPOSIT");
  static TransactionKind eXTERNALWITHDRAW_ = TransactionKind._internal("EXTERNAL_WITHDRAW");
  static TransactionKind fILL_ = TransactionKind._internal("FILL");
  static TransactionKind lENDINGINTERESTACCRUAL_ = TransactionKind._internal("LENDING_INTEREST_ACCRUAL");
  static TransactionKind lIQUIDATE_ = TransactionKind._internal("LIQUIDATE");
  static TransactionKind mATCHORDER_ = TransactionKind._internal("MATCH_ORDER");
  static TransactionKind pAYINTEREST_ = TransactionKind._internal("PAY_INTEREST");
  static TransactionKind sUBTRACTLIQUIDITY_ = TransactionKind._internal("SUBTRACT_LIQUIDITY");
  static TransactionKind rEPAY_ = TransactionKind._internal("REPAY");
  static TransactionKind sUPPLY_ = TransactionKind._internal("SUPPLY");
  static TransactionKind wITHDRAW_ = TransactionKind._internal("WITHDRAW");
  static TransactionKind iSOLATECOLLATERAL_ = TransactionKind._internal("ISOLATE_COLLATERAL");
  static TransactionKind iSOLATEPOSITION_ = TransactionKind._internal("ISOLATE_POSITION");
  static TransactionKind uNITEPOSITION_ = TransactionKind._internal("UNITE_POSITION");
  static TransactionKind cOLLATERALIZE_ = TransactionKind._internal("COLLATERALIZE");
  static TransactionKind dECOLLATERALIZE_ = TransactionKind._internal("DE-COLLATERALIZE");
  static TransactionKind cOUPONPAYMENT_ = TransactionKind._internal("COUPON_PAYMENT");

  TransactionKind.fromJson(dynamic data) {
    switch (data) {
          case "ACCRUE_INTEREST": value = data; break;
          case "ADD_LIQUIDITY": value = data; break;
          case "BOND_MATURE": value = data; break;
          case "CLAIM_INTEREST": value = data; break;
          case "CREDIT": value = data; break;
          case "DEBIT": value = data; break;
          case "EXTERNAL_DEPOSIT": value = data; break;
          case "EXTERNAL_WITHDRAW": value = data; break;
          case "FILL": value = data; break;
          case "LENDING_INTEREST_ACCRUAL": value = data; break;
          case "LIQUIDATE": value = data; break;
          case "MATCH_ORDER": value = data; break;
          case "PAY_INTEREST": value = data; break;
          case "SUBTRACT_LIQUIDITY": value = data; break;
          case "REPAY": value = data; break;
          case "SUPPLY": value = data; break;
          case "WITHDRAW": value = data; break;
          case "ISOLATE_COLLATERAL": value = data; break;
          case "ISOLATE_POSITION": value = data; break;
          case "UNITE_POSITION": value = data; break;
          case "COLLATERALIZE": value = data; break;
          case "DE-COLLATERALIZE": value = data; break;
          case "COUPON_PAYMENT": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TransactionKind data) {
    return data.value;
  }
}