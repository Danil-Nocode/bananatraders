// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_prices_week_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyPricesWeekRecord> _$companyPricesWeekRecordSerializer =
    new _$CompanyPricesWeekRecordSerializer();

class _$CompanyPricesWeekRecordSerializer
    implements StructuredSerializer<CompanyPricesWeekRecord> {
  @override
  final Iterable<Type> types = const [
    CompanyPricesWeekRecord,
    _$CompanyPricesWeekRecord
  ];
  @override
  final String wireName = 'CompanyPricesWeekRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompanyPricesWeekRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.numberOfWeek;
    if (value != null) {
      result
        ..add('Number_of_week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('Company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  CompanyPricesWeekRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyPricesWeekRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Number_of_week':
          result.numberOfWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$CompanyPricesWeekRecord extends CompanyPricesWeekRecord {
  @override
  final String? numberOfWeek;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? company;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyPricesWeekRecord(
          [void Function(CompanyPricesWeekRecordBuilder)? updates]) =>
      (new CompanyPricesWeekRecordBuilder()..update(updates))._build();

  _$CompanyPricesWeekRecord._(
      {this.numberOfWeek, this.price, this.company, this.ffRef})
      : super._();

  @override
  CompanyPricesWeekRecord rebuild(
          void Function(CompanyPricesWeekRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyPricesWeekRecordBuilder toBuilder() =>
      new CompanyPricesWeekRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyPricesWeekRecord &&
        numberOfWeek == other.numberOfWeek &&
        price == other.price &&
        company == other.company &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, numberOfWeek.hashCode), price.hashCode),
            company.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyPricesWeekRecord')
          ..add('numberOfWeek', numberOfWeek)
          ..add('price', price)
          ..add('company', company)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyPricesWeekRecordBuilder
    implements
        Builder<CompanyPricesWeekRecord, CompanyPricesWeekRecordBuilder> {
  _$CompanyPricesWeekRecord? _$v;

  String? _numberOfWeek;
  String? get numberOfWeek => _$this._numberOfWeek;
  set numberOfWeek(String? numberOfWeek) => _$this._numberOfWeek = numberOfWeek;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _company;
  DocumentReference<Object?>? get company => _$this._company;
  set company(DocumentReference<Object?>? company) => _$this._company = company;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyPricesWeekRecordBuilder() {
    CompanyPricesWeekRecord._initializeBuilder(this);
  }

  CompanyPricesWeekRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numberOfWeek = $v.numberOfWeek;
      _price = $v.price;
      _company = $v.company;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyPricesWeekRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyPricesWeekRecord;
  }

  @override
  void update(void Function(CompanyPricesWeekRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyPricesWeekRecord build() => _build();

  _$CompanyPricesWeekRecord _build() {
    final _$result = _$v ??
        new _$CompanyPricesWeekRecord._(
            numberOfWeek: numberOfWeek,
            price: price,
            company: company,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
