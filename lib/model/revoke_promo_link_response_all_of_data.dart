//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RevokePromoLinkResponseAllOfData {
  /// Returns a new [RevokePromoLinkResponseAllOfData] instance.
  RevokePromoLinkResponseAllOfData({
    required this.id,
    required this.status,
    required this.repeated,
  });

  String id;

  RevokePromoLinkResponseAllOfDataStatusEnum status;

  bool repeated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokePromoLinkResponseAllOfData &&
    other.id == id &&
    other.status == status &&
    other.repeated == repeated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (status.hashCode) +
    (repeated.hashCode);

  @override
  String toString() => 'RevokePromoLinkResponseAllOfData[id=$id, status=$status, repeated=$repeated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'status'] = this.status;
      json[r'repeated'] = this.repeated;
    return json;
  }

  /// Returns a new [RevokePromoLinkResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokePromoLinkResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "RevokePromoLinkResponseAllOfData[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "RevokePromoLinkResponseAllOfData[id]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "RevokePromoLinkResponseAllOfData[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "RevokePromoLinkResponseAllOfData[status]" has a null value in JSON.');
        assert(json.containsKey(r'repeated'), 'Required key "RevokePromoLinkResponseAllOfData[repeated]" is missing from JSON.');
        assert(json[r'repeated'] != null, 'Required key "RevokePromoLinkResponseAllOfData[repeated]" has a null value in JSON.');
        return true;
      }());

      return RevokePromoLinkResponseAllOfData(
        id: mapValueOfType<String>(json, r'id')!,
        status: RevokePromoLinkResponseAllOfDataStatusEnum.fromJson(json[r'status'])!,
        repeated: mapValueOfType<bool>(json, r'repeated')!,
      );
    }
    return null;
  }

  static List<RevokePromoLinkResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokePromoLinkResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokePromoLinkResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokePromoLinkResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, RevokePromoLinkResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokePromoLinkResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokePromoLinkResponseAllOfData-objects as value to a dart map
  static Map<String, List<RevokePromoLinkResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokePromoLinkResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokePromoLinkResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'status',
    'repeated',
  };
}


class RevokePromoLinkResponseAllOfDataStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const RevokePromoLinkResponseAllOfDataStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REVOKED = RevokePromoLinkResponseAllOfDataStatusEnum._(r'REVOKED');

  /// List of all possible values in this [enum][RevokePromoLinkResponseAllOfDataStatusEnum].
  static const values = <RevokePromoLinkResponseAllOfDataStatusEnum>[
    REVOKED,
  ];

  static RevokePromoLinkResponseAllOfDataStatusEnum? fromJson(dynamic value) => RevokePromoLinkResponseAllOfDataStatusEnumTypeTransformer().decode(value);

  static List<RevokePromoLinkResponseAllOfDataStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokePromoLinkResponseAllOfDataStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokePromoLinkResponseAllOfDataStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RevokePromoLinkResponseAllOfDataStatusEnum] to String,
/// and [decode] dynamic data back to [RevokePromoLinkResponseAllOfDataStatusEnum].
class RevokePromoLinkResponseAllOfDataStatusEnumTypeTransformer {
  factory RevokePromoLinkResponseAllOfDataStatusEnumTypeTransformer() => _instance ??= const RevokePromoLinkResponseAllOfDataStatusEnumTypeTransformer._();

  const RevokePromoLinkResponseAllOfDataStatusEnumTypeTransformer._();

  String encode(RevokePromoLinkResponseAllOfDataStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RevokePromoLinkResponseAllOfDataStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RevokePromoLinkResponseAllOfDataStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REVOKED': return RevokePromoLinkResponseAllOfDataStatusEnum.REVOKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RevokePromoLinkResponseAllOfDataStatusEnumTypeTransformer] instance.
  static RevokePromoLinkResponseAllOfDataStatusEnumTypeTransformer? _instance;
}


