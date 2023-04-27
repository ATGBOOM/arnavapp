// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_value_store.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKeyValueStoreCollection on Isar {
  IsarCollection<KeyValueStore> get keyValueStores => this.collection();
}

const KeyValueStoreSchema = CollectionSchema(
  name: r'KeyValueStore',
  id: -123586738864708561,
  properties: {
    r'localStorageKeys': PropertySchema(
      id: 0,
      name: r'localStorageKeys',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _keyValueStoreEstimateSize,
  serialize: _keyValueStoreSerialize,
  deserialize: _keyValueStoreDeserialize,
  deserializeProp: _keyValueStoreDeserializeProp,
  idName: r'id',
  indexes: {
    r'localStorageKeys': IndexSchema(
      id: 3768117946107347738,
      name: r'localStorageKeys',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'localStorageKeys',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _keyValueStoreGetId,
  getLinks: _keyValueStoreGetLinks,
  attach: _keyValueStoreAttach,
  version: '3.1.0',
);

int _keyValueStoreEstimateSize(
  KeyValueStore object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.localStorageKeys.length * 3;
  bytesCount += 3 + object.value.length * 3;
  return bytesCount;
}

void _keyValueStoreSerialize(
  KeyValueStore object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.localStorageKeys);
  writer.writeString(offsets[1], object.value);
}

KeyValueStore _keyValueStoreDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = KeyValueStore(
    localStorageKeys: reader.readString(offsets[0]),
    value: reader.readString(offsets[1]),
  );
  object.id = id;
  return object;
}

P _keyValueStoreDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _keyValueStoreGetId(KeyValueStore object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _keyValueStoreGetLinks(KeyValueStore object) {
  return [];
}

void _keyValueStoreAttach(
    IsarCollection<dynamic> col, Id id, KeyValueStore object) {
  object.id = id;
}

extension KeyValueStoreQueryWhereSort
    on QueryBuilder<KeyValueStore, KeyValueStore, QWhere> {
  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhere>
      anyLocalStorageKeys() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'localStorageKeys'),
      );
    });
  }
}

extension KeyValueStoreQueryWhere
    on QueryBuilder<KeyValueStore, KeyValueStore, QWhereClause> {
  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause> idBetween(
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

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysEqualTo(String localStorageKeys) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'localStorageKeys',
        value: [localStorageKeys],
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysNotEqualTo(String localStorageKeys) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localStorageKeys',
              lower: [],
              upper: [localStorageKeys],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localStorageKeys',
              lower: [localStorageKeys],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localStorageKeys',
              lower: [localStorageKeys],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localStorageKeys',
              lower: [],
              upper: [localStorageKeys],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysGreaterThan(
    String localStorageKeys, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'localStorageKeys',
        lower: [localStorageKeys],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysLessThan(
    String localStorageKeys, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'localStorageKeys',
        lower: [],
        upper: [localStorageKeys],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysBetween(
    String lowerLocalStorageKeys,
    String upperLocalStorageKeys, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'localStorageKeys',
        lower: [lowerLocalStorageKeys],
        includeLower: includeLower,
        upper: [upperLocalStorageKeys],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysStartsWith(String LocalStorageKeysPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'localStorageKeys',
        lower: [LocalStorageKeysPrefix],
        upper: ['$LocalStorageKeysPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'localStorageKeys',
        value: [''],
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterWhereClause>
      localStorageKeysIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'localStorageKeys',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'localStorageKeys',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'localStorageKeys',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'localStorageKeys',
              upper: [''],
            ));
      }
    });
  }
}

extension KeyValueStoreQueryFilter
    on QueryBuilder<KeyValueStore, KeyValueStore, QFilterCondition> {
  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition> idBetween(
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

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localStorageKeys',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localStorageKeys',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localStorageKeys',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localStorageKeys',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localStorageKeys',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localStorageKeys',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localStorageKeys',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localStorageKeys',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localStorageKeys',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      localStorageKeysIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localStorageKeys',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterFilterCondition>
      valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension KeyValueStoreQueryObject
    on QueryBuilder<KeyValueStore, KeyValueStore, QFilterCondition> {}

extension KeyValueStoreQueryLinks
    on QueryBuilder<KeyValueStore, KeyValueStore, QFilterCondition> {}

extension KeyValueStoreQuerySortBy
    on QueryBuilder<KeyValueStore, KeyValueStore, QSortBy> {
  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy>
      sortByLocalStorageKeys() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localStorageKeys', Sort.asc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy>
      sortByLocalStorageKeysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localStorageKeys', Sort.desc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension KeyValueStoreQuerySortThenBy
    on QueryBuilder<KeyValueStore, KeyValueStore, QSortThenBy> {
  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy>
      thenByLocalStorageKeys() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localStorageKeys', Sort.asc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy>
      thenByLocalStorageKeysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localStorageKeys', Sort.desc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension KeyValueStoreQueryWhereDistinct
    on QueryBuilder<KeyValueStore, KeyValueStore, QDistinct> {
  QueryBuilder<KeyValueStore, KeyValueStore, QDistinct>
      distinctByLocalStorageKeys({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localStorageKeys',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KeyValueStore, KeyValueStore, QDistinct> distinctByValue(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value', caseSensitive: caseSensitive);
    });
  }
}

extension KeyValueStoreQueryProperty
    on QueryBuilder<KeyValueStore, KeyValueStore, QQueryProperty> {
  QueryBuilder<KeyValueStore, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<KeyValueStore, String, QQueryOperations>
      localStorageKeysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localStorageKeys');
    });
  }

  QueryBuilder<KeyValueStore, String, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}
