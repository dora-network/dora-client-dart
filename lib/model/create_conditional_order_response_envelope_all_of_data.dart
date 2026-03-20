//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConditionalOrderResponseEnvelopeAllOfData {
  /// Returns a new [CreateConditionalOrderResponseEnvelopeAllOfData] instance.
  CreateConditionalOrderResponseEnvelopeAllOfData({
    this.stopLossOrderId,
    this.takeProfitOrderId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stopLossOrderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? takeProfitOrderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConditionalOrderResponseEnvelopeAllOfData &&
    other.stopLossOrderId == stopLossOrderId &&
    other.takeProfitOrderId == takeProfitOrderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stopLossOrderId == null ? 0 : stopLossOrderId!.hashCode) +
    (takeProfitOrderId == null ? 0 : takeProfitOrderId!.hashCode);

  @override
  String toString() => 'CreateConditionalOrderResponseEnvelopeAllOfData[stopLossOrderId=$stopLossOrderId, takeProfitOrderId=$takeProfitOrderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.stopLossOrderId != null) {
      json[r'stop_loss_order_id'] = this.stopLossOrderId;
    } else {
      json[r'stop_loss_order_id'] = null;
    }
    if (this.takeProfitOrderId != null) {
      json[r'take_profit_order_id'] = this.takeProfitOrderId;
    } else {
      json[r'take_profit_order_id'] = null;
    }
    return json;
  }

  /// Returns a new [CreateConditionalOrderResponseEnvelopeAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConditionalOrderResponseEnvelopeAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConditionalOrderResponseEnvelopeAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConditionalOrderResponseEnvelopeAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConditionalOrderResponseEnvelopeAllOfData(
        stopLossOrderId: mapValueOfType<String>(json, r'stop_loss_order_id'),
        takeProfitOrderId: mapValueOfType<String>(json, r'take_profit_order_id'),
      );
    }
    return null;
  }

  static List<CreateConditionalOrderResponseEnvelopeAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConditionalOrderResponseEnvelopeAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConditionalOrderResponseEnvelopeAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConditionalOrderResponseEnvelopeAllOfData> mapFromJson(dynamic json) {
    final map = <String, CreateConditionalOrderResponseEnvelopeAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConditionalOrderResponseEnvelopeAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConditionalOrderResponseEnvelopeAllOfData-objects as value to a dart map
  static Map<String, List<CreateConditionalOrderResponseEnvelopeAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConditionalOrderResponseEnvelopeAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConditionalOrderResponseEnvelopeAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

