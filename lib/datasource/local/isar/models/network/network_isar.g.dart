// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetNetworkIsarCollection on Isar {
  IsarCollection<NetworkIsar> get networkIsars => this.collection();
}

const NetworkIsarSchema = CollectionSchema(
  name: r'NetworkIsar',
  id: -4781370411601205025,
  properties: {
    r'chain': PropertySchema(
      id: 0,
      name: r'chain',
      type: IsarType.string,
    ),
    r'faucets': PropertySchema(
      id: 1,
      name: r'faucets',
      type: IsarType.stringList,
    ),
    r'icon': PropertySchema(
      id: 2,
      name: r'icon',
      type: IsarType.string,
    ),
    r'infoURL': PropertySchema(
      id: 3,
      name: r'infoURL',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'network': PropertySchema(
      id: 5,
      name: r'network',
      type: IsarType.string,
    ),
    r'networkId': PropertySchema(
      id: 6,
      name: r'networkId',
      type: IsarType.long,
    ),
    r'rpc': PropertySchema(
      id: 7,
      name: r'rpc',
      type: IsarType.stringList,
    ),
    r'shortName': PropertySchema(
      id: 8,
      name: r'shortName',
      type: IsarType.string,
    ),
    r'slip44': PropertySchema(
      id: 9,
      name: r'slip44',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 10,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _networkIsarEstimateSize,
  serialize: _networkIsarSerialize,
  deserialize: _networkIsarDeserialize,
  deserializeProp: _networkIsarDeserializeProp,
  idName: r'chainId',
  indexes: {},
  links: {
    r'nativeCurrency': LinkSchema(
      id: -6402312628880450535,
      name: r'nativeCurrency',
      target: r'NativeCurrencyIsar',
      single: true,
    ),
    r'ens': LinkSchema(
      id: 897019475712991600,
      name: r'ens',
      target: r'EnsIsar',
      single: true,
    ),
    r'explorers': LinkSchema(
      id: -653367813325115155,
      name: r'explorers',
      target: r'ExplorersIsar',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _networkIsarGetId,
  getLinks: _networkIsarGetLinks,
  attach: _networkIsarAttach,
  version: '3.0.2',
);

int _networkIsarEstimateSize(
  NetworkIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.chain.length * 3;
  bytesCount += 3 + object.faucets.length * 3;
  {
    for (var i = 0; i < object.faucets.length; i++) {
      final value = object.faucets[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.icon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.infoURL.length * 3;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.network;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.rpc.length * 3;
  {
    for (var i = 0; i < object.rpc.length; i++) {
      final value = object.rpc[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.shortName.length * 3;
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _networkIsarSerialize(
  NetworkIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chain);
  writer.writeStringList(offsets[1], object.faucets);
  writer.writeString(offsets[2], object.icon);
  writer.writeString(offsets[3], object.infoURL);
  writer.writeString(offsets[4], object.name);
  writer.writeString(offsets[5], object.network);
  writer.writeLong(offsets[6], object.networkId);
  writer.writeStringList(offsets[7], object.rpc);
  writer.writeString(offsets[8], object.shortName);
  writer.writeLong(offsets[9], object.slip44);
  writer.writeString(offsets[10], object.title);
}

NetworkIsar _networkIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NetworkIsar(
    chain: reader.readString(offsets[0]),
    chainId: id,
    faucets: reader.readStringList(offsets[1]) ?? [],
    icon: reader.readStringOrNull(offsets[2]),
    infoURL: reader.readString(offsets[3]),
    name: reader.readString(offsets[4]),
    network: reader.readStringOrNull(offsets[5]),
    networkId: reader.readLong(offsets[6]),
    rpc: reader.readStringList(offsets[7]) ?? [],
    shortName: reader.readString(offsets[8]),
    slip44: reader.readLongOrNull(offsets[9]),
    title: reader.readStringOrNull(offsets[10]),
  );
  return object;
}

P _networkIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _networkIsarGetId(NetworkIsar object) {
  return object.chainId;
}

List<IsarLinkBase<dynamic>> _networkIsarGetLinks(NetworkIsar object) {
  return [object.nativeCurrency, object.ens, object.explorers];
}

void _networkIsarAttach(
    IsarCollection<dynamic> col, Id id, NetworkIsar object) {
  object.nativeCurrency.attach(
      col, col.isar.collection<NativeCurrencyIsar>(), r'nativeCurrency', id);
  object.ens.attach(col, col.isar.collection<EnsIsar>(), r'ens', id);
  object.explorers
      .attach(col, col.isar.collection<ExplorersIsar>(), r'explorers', id);
}

extension NetworkIsarQueryWhereSort
    on QueryBuilder<NetworkIsar, NetworkIsar, QWhere> {
  QueryBuilder<NetworkIsar, NetworkIsar, QAfterWhere> anyChainId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NetworkIsarQueryWhere
    on QueryBuilder<NetworkIsar, NetworkIsar, QWhereClause> {
  QueryBuilder<NetworkIsar, NetworkIsar, QAfterWhereClause> chainIdEqualTo(
      Id chainId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: chainId,
        upper: chainId,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterWhereClause> chainIdNotEqualTo(
      Id chainId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: chainId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: chainId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: chainId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: chainId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterWhereClause> chainIdGreaterThan(
      Id chainId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: chainId, includeLower: include),
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterWhereClause> chainIdLessThan(
      Id chainId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: chainId, includeUpper: include),
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterWhereClause> chainIdBetween(
    Id lowerChainId,
    Id upperChainId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerChainId,
        includeLower: includeLower,
        upper: upperChainId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NetworkIsarQueryFilter
    on QueryBuilder<NetworkIsar, NetworkIsar, QFilterCondition> {
  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      chainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chain',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chain',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      chainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chain',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chainId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      chainIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chainId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chainId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> chainIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chainId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'faucets',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'faucets',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'faucets',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'faucets',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'faucets',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'faucets',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'faucets',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'faucets',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'faucets',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'faucets',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'faucets',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'faucets',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'faucets',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'faucets',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'faucets',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      faucetsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'faucets',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      iconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> infoURLEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'infoURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      infoURLGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'infoURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> infoURLLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'infoURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> infoURLBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'infoURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      infoURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'infoURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> infoURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'infoURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> infoURLContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'infoURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> infoURLMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'infoURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      infoURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'infoURL',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      infoURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'infoURL',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'network',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'network',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> networkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'network',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'network',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> networkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'network',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> networkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'network',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'network',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> networkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'network',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> networkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'network',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> networkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'network',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'network',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'network',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'networkId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'networkId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'networkId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      networkIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'networkId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rpc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rpc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rpc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rpc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rpc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rpc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rpc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rpc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rpc',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rpc',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rpc',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> rpcIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rpc',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rpc',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rpc',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rpc',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      rpcLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rpc',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shortName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shortName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shortName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shortName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shortName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shortName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shortName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortName',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      shortNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shortName',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> slip44IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slip44',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      slip44IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slip44',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> slip44EqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slip44',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      slip44GreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slip44',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> slip44LessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slip44',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> slip44Between(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slip44',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension NetworkIsarQueryObject
    on QueryBuilder<NetworkIsar, NetworkIsar, QFilterCondition> {}

extension NetworkIsarQueryLinks
    on QueryBuilder<NetworkIsar, NetworkIsar, QFilterCondition> {
  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> nativeCurrency(
      FilterQuery<NativeCurrencyIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'nativeCurrency');
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      nativeCurrencyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'nativeCurrency', 0, true, 0, true);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> ens(
      FilterQuery<EnsIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'ens');
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> ensIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'ens', 0, true, 0, true);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition> explorers(
      FilterQuery<ExplorersIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'explorers');
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      explorersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'explorers', length, true, length, true);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      explorersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'explorers', 0, true, 0, true);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      explorersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'explorers', 0, false, 999999, true);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      explorersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'explorers', 0, true, length, include);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      explorersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'explorers', length, include, 999999, true);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterFilterCondition>
      explorersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'explorers', lower, includeLower, upper, includeUpper);
    });
  }
}

extension NetworkIsarQuerySortBy
    on QueryBuilder<NetworkIsar, NetworkIsar, QSortBy> {
  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByChain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chain', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByChainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chain', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByInfoURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'infoURL', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByInfoURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'infoURL', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByNetwork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'network', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByNetworkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'network', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByNetworkId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'networkId', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByNetworkIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'networkId', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByShortName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortName', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByShortNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortName', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortBySlip44() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slip44', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortBySlip44Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slip44', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension NetworkIsarQuerySortThenBy
    on QueryBuilder<NetworkIsar, NetworkIsar, QSortThenBy> {
  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByChain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chain', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByChainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chain', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByChainId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chainId', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByChainIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chainId', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByInfoURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'infoURL', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByInfoURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'infoURL', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByNetwork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'network', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByNetworkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'network', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByNetworkId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'networkId', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByNetworkIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'networkId', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByShortName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortName', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByShortNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortName', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenBySlip44() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slip44', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenBySlip44Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slip44', Sort.desc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension NetworkIsarQueryWhereDistinct
    on QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> {
  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByChain(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chain', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByFaucets() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'faucets');
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByInfoURL(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'infoURL', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByNetwork(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'network', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByNetworkId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'networkId');
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByRpc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rpc');
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByShortName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shortName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctBySlip44() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slip44');
    });
  }

  QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension NetworkIsarQueryProperty
    on QueryBuilder<NetworkIsar, NetworkIsar, QQueryProperty> {
  QueryBuilder<NetworkIsar, int, QQueryOperations> chainIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chainId');
    });
  }

  QueryBuilder<NetworkIsar, String, QQueryOperations> chainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chain');
    });
  }

  QueryBuilder<NetworkIsar, List<String>, QQueryOperations> faucetsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'faucets');
    });
  }

  QueryBuilder<NetworkIsar, String?, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<NetworkIsar, String, QQueryOperations> infoURLProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'infoURL');
    });
  }

  QueryBuilder<NetworkIsar, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<NetworkIsar, String?, QQueryOperations> networkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'network');
    });
  }

  QueryBuilder<NetworkIsar, int, QQueryOperations> networkIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'networkId');
    });
  }

  QueryBuilder<NetworkIsar, List<String>, QQueryOperations> rpcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rpc');
    });
  }

  QueryBuilder<NetworkIsar, String, QQueryOperations> shortNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shortName');
    });
  }

  QueryBuilder<NetworkIsar, int?, QQueryOperations> slip44Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slip44');
    });
  }

  QueryBuilder<NetworkIsar, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
