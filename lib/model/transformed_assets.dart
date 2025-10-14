part of dora_client.api;

class TransformedAssets {
  /* Assets that have been gained by stablecoin equivalence transformations. They cannot be withdrawn from the platform until converted back to the original asset. */
  Map<String, String> gained = {};
/* Assets that have been lost by stablecoin equivalence transformations. They can be recovered by converting back any assets gained by stablecoin equivalence transformations. */
  Map<String, String> lost = {};

  TransformedAssets();

  @override
  String toString() {
    return 'TransformedAssets[gained=$gained, lost=$lost, ]';
  }

  TransformedAssets.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    gained = json['gained'];
    lost = json['lost'];
  }

  Map<String, dynamic> toJson() {
    return {
      'gained': gained,
      'lost': lost
     };
  }

  static List<TransformedAssets> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransformedAssets>() : json.map((value) => new TransformedAssets.fromJson(value)).toList();
  }

  static Map<String, TransformedAssets> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransformedAssets>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransformedAssets.fromJson(value));
    }
    return map;
  }
}
