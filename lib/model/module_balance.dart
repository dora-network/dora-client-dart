//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModuleBalance {
  /// Returns a new [ModuleBalance] instance.
  ModuleBalance({
    this.assetId,
    this.seq,
    this.available,
    this.supplied,
    this.virtual,
    this.borrowed,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  /// The available balance in the module for this asset
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? available;

  /// The total amount supplied to the module for this asset
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supplied;

  /// Assets minted by virtual-borrowing, but not yet repaid
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? virtual;

  /// The total amount borrowed from the supplied but not yet repaid
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? borrowed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModuleBalance &&
    other.assetId == assetId &&
    other.seq == seq &&
    other.available == available &&
    other.supplied == supplied &&
    other.virtual == virtual &&
    other.borrowed == borrowed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId == null ? 0 : assetId!.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (supplied == null ? 0 : supplied!.hashCode) +
    (virtual == null ? 0 : virtual!.hashCode) +
    (borrowed == null ? 0 : borrowed!.hashCode);

  @override
  String toString() => 'ModuleBalance[assetId=$assetId, seq=$seq, available=$available, supplied=$supplied, virtual=$virtual, borrowed=$borrowed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.supplied != null) {
      json[r'supplied'] = this.supplied;
    } else {
      json[r'supplied'] = null;
    }
    if (this.virtual != null) {
      json[r'virtual'] = this.virtual;
    } else {
      json[r'virtual'] = null;
    }
    if (this.borrowed != null) {
      json[r'borrowed'] = this.borrowed;
    } else {
      json[r'borrowed'] = null;
    }
    return json;
  }

  /// Returns a new [ModuleBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModuleBalance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModuleBalance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModuleBalance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModuleBalance(
        assetId: mapValueOfType<String>(json, r'asset_id'),
        seq: mapValueOfType<int>(json, r'seq'),
        available: mapValueOfType<String>(json, r'available'),
        supplied: mapValueOfType<String>(json, r'supplied'),
        virtual: mapValueOfType<String>(json, r'virtual'),
        borrowed: mapValueOfType<String>(json, r'borrowed'),
      );
    }
    return null;
  }

  static List<ModuleBalance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModuleBalance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModuleBalance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModuleBalance> mapFromJson(dynamic json) {
    final map = <String, ModuleBalance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModuleBalance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModuleBalance-objects as value to a dart map
  static Map<String, List<ModuleBalance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModuleBalance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModuleBalance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

