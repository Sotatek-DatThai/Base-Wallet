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
  properties: {},
  estimateSize: _networkIsarEstimateSize,
  serialize: _networkIsarSerialize,
  deserialize: _networkIsarDeserialize,
  deserializeProp: _networkIsarDeserializeProp,
  idName: r'chainId',
  indexes: {},
  links: {},
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
  return bytesCount;
}

void _networkIsarSerialize(
  NetworkIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
NetworkIsar _networkIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NetworkIsar();
  object.chainId = id;
  return object;
}

P _networkIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _networkIsarGetId(NetworkIsar object) {
  return object.chainId;
}

List<IsarLinkBase<dynamic>> _networkIsarGetLinks(NetworkIsar object) {
  return [];
}

void _networkIsarAttach(
    IsarCollection<dynamic> col, Id id, NetworkIsar object) {
  object.chainId = id;
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
}

extension NetworkIsarQueryObject
    on QueryBuilder<NetworkIsar, NetworkIsar, QFilterCondition> {}

extension NetworkIsarQueryLinks
    on QueryBuilder<NetworkIsar, NetworkIsar, QFilterCondition> {}

extension NetworkIsarQuerySortBy
    on QueryBuilder<NetworkIsar, NetworkIsar, QSortBy> {}

extension NetworkIsarQuerySortThenBy
    on QueryBuilder<NetworkIsar, NetworkIsar, QSortThenBy> {
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
}

extension NetworkIsarQueryWhereDistinct
    on QueryBuilder<NetworkIsar, NetworkIsar, QDistinct> {}

extension NetworkIsarQueryProperty
    on QueryBuilder<NetworkIsar, NetworkIsar, QQueryProperty> {
  QueryBuilder<NetworkIsar, int, QQueryOperations> chainIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chainId');
    });
  }
}
