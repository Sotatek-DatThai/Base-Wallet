// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetEnsIsarCollection on Isar {
  IsarCollection<EnsIsar> get ensIsars => this.collection();
}

const EnsIsarSchema = CollectionSchema(
  name: r'EnsIsar',
  id: 3839944544426027180,
  properties: {
    r'registry': PropertySchema(
      id: 0,
      name: r'registry',
      type: IsarType.string,
    )
  },
  estimateSize: _ensIsarEstimateSize,
  serialize: _ensIsarSerialize,
  deserialize: _ensIsarDeserialize,
  deserializeProp: _ensIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'network': LinkSchema(
      id: 2453970948406363660,
      name: r'network',
      target: r'NetworkIsar',
      single: true,
      linkName: r'ens',
    )
  },
  embeddedSchemas: {},
  getId: _ensIsarGetId,
  getLinks: _ensIsarGetLinks,
  attach: _ensIsarAttach,
  version: '3.0.2',
);

int _ensIsarEstimateSize(
  EnsIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.registry.length * 3;
  return bytesCount;
}

void _ensIsarSerialize(
  EnsIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.registry);
}

EnsIsar _ensIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EnsIsar(
    reader.readString(offsets[0]),
  );
  return object;
}

P _ensIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _ensIsarGetId(EnsIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _ensIsarGetLinks(EnsIsar object) {
  return [object.network];
}

void _ensIsarAttach(IsarCollection<dynamic> col, Id id, EnsIsar object) {
  object.network
      .attach(col, col.isar.collection<NetworkIsar>(), r'network', id);
}

extension EnsIsarQueryWhereSort on QueryBuilder<EnsIsar, EnsIsar, QWhere> {
  QueryBuilder<EnsIsar, EnsIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EnsIsarQueryWhere on QueryBuilder<EnsIsar, EnsIsar, QWhereClause> {
  QueryBuilder<EnsIsar, EnsIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EnsIsarQueryFilter
    on QueryBuilder<EnsIsar, EnsIsar, QFilterCondition> {
  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'registry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'registry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registry',
        value: '',
      ));
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> registryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registry',
        value: '',
      ));
    });
  }
}

extension EnsIsarQueryObject
    on QueryBuilder<EnsIsar, EnsIsar, QFilterCondition> {}

extension EnsIsarQueryLinks
    on QueryBuilder<EnsIsar, EnsIsar, QFilterCondition> {
  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> network(
      FilterQuery<NetworkIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'network');
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterFilterCondition> networkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'network', 0, true, 0, true);
    });
  }
}

extension EnsIsarQuerySortBy on QueryBuilder<EnsIsar, EnsIsar, QSortBy> {
  QueryBuilder<EnsIsar, EnsIsar, QAfterSortBy> sortByRegistry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registry', Sort.asc);
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterSortBy> sortByRegistryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registry', Sort.desc);
    });
  }
}

extension EnsIsarQuerySortThenBy
    on QueryBuilder<EnsIsar, EnsIsar, QSortThenBy> {
  QueryBuilder<EnsIsar, EnsIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterSortBy> thenByRegistry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registry', Sort.asc);
    });
  }

  QueryBuilder<EnsIsar, EnsIsar, QAfterSortBy> thenByRegistryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registry', Sort.desc);
    });
  }
}

extension EnsIsarQueryWhereDistinct
    on QueryBuilder<EnsIsar, EnsIsar, QDistinct> {
  QueryBuilder<EnsIsar, EnsIsar, QDistinct> distinctByRegistry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registry', caseSensitive: caseSensitive);
    });
  }
}

extension EnsIsarQueryProperty
    on QueryBuilder<EnsIsar, EnsIsar, QQueryProperty> {
  QueryBuilder<EnsIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EnsIsar, String, QQueryOperations> registryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registry');
    });
  }
}
