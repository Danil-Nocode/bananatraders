// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompaniesRecord> _$companiesRecordSerializer =
    new _$CompaniesRecordSerializer();

class _$CompaniesRecordSerializer
    implements StructuredSerializer<CompaniesRecord> {
  @override
  final Iterable<Type> types = const [CompaniesRecord, _$CompaniesRecord];
  @override
  final String wireName = 'CompaniesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompaniesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('Area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prices;
    if (value != null) {
      result
        ..add('Prices')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.dateForSorting;
    if (value != null) {
      result
        ..add('DateForSorting')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CompaniesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompaniesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Prices':
          result.prices.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'DateForSorting':
          result.dateForSorting = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CompaniesRecord extends CompaniesRecord {
  @override
  final String? name;
  @override
  final String? area;
  @override
  final BuiltList<DocumentReference<Object?>>? prices;
  @override
  final DateTime? dateForSorting;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompaniesRecord([void Function(CompaniesRecordBuilder)? updates]) =>
      (new CompaniesRecordBuilder()..update(updates))._build();

  _$CompaniesRecord._(
      {this.name, this.area, this.prices, this.dateForSorting, this.ffRef})
      : super._();

  @override
  CompaniesRecord rebuild(void Function(CompaniesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompaniesRecordBuilder toBuilder() =>
      new CompaniesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompaniesRecord &&
        name == other.name &&
        area == other.area &&
        prices == other.prices &&
        dateForSorting == other.dateForSorting &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), area.hashCode), prices.hashCode),
            dateForSorting.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompaniesRecord')
          ..add('name', name)
          ..add('area', area)
          ..add('prices', prices)
          ..add('dateForSorting', dateForSorting)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompaniesRecordBuilder
    implements Builder<CompaniesRecord, CompaniesRecordBuilder> {
  _$CompaniesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  ListBuilder<DocumentReference<Object?>>? _prices;
  ListBuilder<DocumentReference<Object?>> get prices =>
      _$this._prices ??= new ListBuilder<DocumentReference<Object?>>();
  set prices(ListBuilder<DocumentReference<Object?>>? prices) =>
      _$this._prices = prices;

  DateTime? _dateForSorting;
  DateTime? get dateForSorting => _$this._dateForSorting;
  set dateForSorting(DateTime? dateForSorting) =>
      _$this._dateForSorting = dateForSorting;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompaniesRecordBuilder() {
    CompaniesRecord._initializeBuilder(this);
  }

  CompaniesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _area = $v.area;
      _prices = $v.prices?.toBuilder();
      _dateForSorting = $v.dateForSorting;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompaniesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompaniesRecord;
  }

  @override
  void update(void Function(CompaniesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompaniesRecord build() => _build();

  _$CompaniesRecord _build() {
    _$CompaniesRecord _$result;
    try {
      _$result = _$v ??
          new _$CompaniesRecord._(
              name: name,
              area: area,
              prices: _prices?.build(),
              dateForSorting: dateForSorting,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prices';
        _prices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompaniesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
