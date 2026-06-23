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
    required this.assetId,
    required this.seq,
    required this.available,
    required this.supplied,
    required this.virtual,
    required this.borrowed,
  });

  String assetId;

  /// Minimum value: 1
  int seq;

  /// The available balance in the module for this asset
  String available;

  /// The total amount supplied to the module for this asset
  String supplied;

  /// Assets minted by virtual-borrowing, but not yet repaid
  String virtual;

  /// The total amount borrowed from the supplied but not yet repaid
  String borrowed;

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
    (assetId.hashCode) +
    (seq.hashCode) +
    (available.hashCode) +
    (supplied.hashCode) +
    (virtual.hashCode) +
    (borrowed.hashCode);

  @override
  String toString() => 'ModuleBalance[assetId=$assetId, seq=$seq, available=$available, supplied=$supplied, virtual=$virtual, borrowed=$borrowed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_id'] = this.assetId;
      json[r'seq'] = this.seq;
      json[r'available'] = this.available;
      json[r'supplied'] = this.supplied;
      json[r'virtual'] = this.virtual;
      json[r'borrowed'] = this.borrowed;
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
        assert(json.containsKey(r'asset_id'), 'Required key "ModuleBalance[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "ModuleBalance[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'seq'), 'Required key "ModuleBalance[seq]" is missing from JSON.');
        assert(json[r'seq'] != null, 'Required key "ModuleBalance[seq]" has a null value in JSON.');
        assert(json.containsKey(r'available'), 'Required key "ModuleBalance[available]" is missing from JSON.');
        assert(json[r'available'] != null, 'Required key "ModuleBalance[available]" has a null value in JSON.');
        assert(json.containsKey(r'supplied'), 'Required key "ModuleBalance[supplied]" is missing from JSON.');
        assert(json[r'supplied'] != null, 'Required key "ModuleBalance[supplied]" has a null value in JSON.');
        assert(json.containsKey(r'virtual'), 'Required key "ModuleBalance[virtual]" is missing from JSON.');
        assert(json[r'virtual'] != null, 'Required key "ModuleBalance[virtual]" has a null value in JSON.');
        assert(json.containsKey(r'borrowed'), 'Required key "ModuleBalance[borrowed]" is missing from JSON.');
        assert(json[r'borrowed'] != null, 'Required key "ModuleBalance[borrowed]" has a null value in JSON.');
        return true;
      }());

      return ModuleBalance(
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        seq: mapValueOfType<int>(json, r'seq')!,
        available: mapValueOfType<String>(json, r'available')!,
        supplied: mapValueOfType<String>(json, r'supplied')!,
        virtual: mapValueOfType<String>(json, r'virtual')!,
        borrowed: mapValueOfType<String>(json, r'borrowed')!,
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
    'asset_id',
    'seq',
    'available',
    'supplied',
    'virtual',
    'borrowed',
  };
}

