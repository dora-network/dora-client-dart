part of dora_client.api;

const _delimiters = const {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

// port from Java version
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String collectionFormat, String name, dynamic value) {
  var params = <QueryParam>[];

  // preconditions
  if (name == null || name.isEmpty || value == null) return params;

  if (value is! List) {
    params.add(new QueryParam(name, parameterToString(value)));
    return params;
  }

  List values = value as List;

  // get the collection format
  collectionFormat = (collectionFormat == null || collectionFormat.isEmpty)
                     ? "csv"
                     : collectionFormat; // default: csv

  if (collectionFormat == "multi") {
    return values.map((v) => new QueryParam(name, parameterToString(v)));
  }

  String delimiter = _delimiters[collectionFormat] ?? ",";

  params.add(new QueryParam(name, values.map((v) => parameterToString(v)).join(delimiter)));
  return params;
}

/// Format the given parameter object into string.
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else if (value is AssetKind) {
    return AssetKind.encode(value).toString();
  } else if (value is BondKind) {
    return BondKind.encode(value).toString();
  } else if (value is CandleResolution) {
    return CandleResolution.encode(value).toString();
  } else if (value is LeverageType) {
    return LeverageType.encode(value).toString();
  } else if (value is OrderBookStatus) {
    return OrderBookStatus.encode(value).toString();
  } else if (value is OrderKind) {
    return OrderKind.encode(value).toString();
  } else if (value is OrderModifierKind) {
    return OrderModifierKind.encode(value).toString();
  } else if (value is OrderStatus) {
    return OrderStatus.encode(value).toString();
  } else if (value is PositionType) {
    return PositionType.encode(value).toString();
  } else if (value is Side) {
    return Side.encode(value).toString();
  } else if (value is TransactionKind) {
    return TransactionKind.encode(value).toString();
  } else if (value is UserRole) {
    return UserRole.encode(value).toString();
  } else {
    return value.toString();
  }
}
