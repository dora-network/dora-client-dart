//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CreditRating {
  /// Instantiate a new enum with the provided [value].
  const CreditRating._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AAA = CreditRating._(r'AAA');
  static const aAPlus = CreditRating._(r'AA+');
  static const AA = CreditRating._(r'AA');
  static const AA_ = CreditRating._(r'AA-');
  static const aPlus = CreditRating._(r'A+');
  static const A = CreditRating._(r'A');
  static const A_ = CreditRating._(r'A-');
  static const bBBPlus = CreditRating._(r'BBB+');
  static const BBB = CreditRating._(r'BBB');
  static const BBB_ = CreditRating._(r'BBB-');
  static const bBPlus = CreditRating._(r'BB+');
  static const BB = CreditRating._(r'BB');
  static const BB_ = CreditRating._(r'BB-');
  static const bPlus = CreditRating._(r'B+');
  static const B = CreditRating._(r'B');
  static const B_ = CreditRating._(r'B-');
  static const cCCPlus = CreditRating._(r'CCC+');
  static const CCC = CreditRating._(r'CCC');
  static const CCC_ = CreditRating._(r'CCC-');
  static const CC = CreditRating._(r'CC');
  static const C = CreditRating._(r'C');
  static const D = CreditRating._(r'D');

  /// List of all possible values in this [enum][CreditRating].
  static const values = <CreditRating>[
    AAA,
    aAPlus,
    AA,
    AA_,
    aPlus,
    A,
    A_,
    bBBPlus,
    BBB,
    BBB_,
    bBPlus,
    BB,
    BB_,
    bPlus,
    B,
    B_,
    cCCPlus,
    CCC,
    CCC_,
    CC,
    C,
    D,
  ];

  static CreditRating? fromJson(dynamic value) => CreditRatingTypeTransformer().decode(value);

  static List<CreditRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreditRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreditRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreditRating] to String,
/// and [decode] dynamic data back to [CreditRating].
class CreditRatingTypeTransformer {
  factory CreditRatingTypeTransformer() => _instance ??= const CreditRatingTypeTransformer._();

  const CreditRatingTypeTransformer._();

  String encode(CreditRating data) => data.value;

  /// Decodes a [dynamic value][data] to a CreditRating.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreditRating? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AAA': return CreditRating.AAA;
        case r'AA+': return CreditRating.aAPlus;
        case r'AA': return CreditRating.AA;
        case r'AA-': return CreditRating.AA_;
        case r'A+': return CreditRating.aPlus;
        case r'A': return CreditRating.A;
        case r'A-': return CreditRating.A_;
        case r'BBB+': return CreditRating.bBBPlus;
        case r'BBB': return CreditRating.BBB;
        case r'BBB-': return CreditRating.BBB_;
        case r'BB+': return CreditRating.bBPlus;
        case r'BB': return CreditRating.BB;
        case r'BB-': return CreditRating.BB_;
        case r'B+': return CreditRating.bPlus;
        case r'B': return CreditRating.B;
        case r'B-': return CreditRating.B_;
        case r'CCC+': return CreditRating.cCCPlus;
        case r'CCC': return CreditRating.CCC;
        case r'CCC-': return CreditRating.CCC_;
        case r'CC': return CreditRating.CC;
        case r'C': return CreditRating.C;
        case r'D': return CreditRating.D;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreditRatingTypeTransformer] instance.
  static CreditRatingTypeTransformer? _instance;
}

