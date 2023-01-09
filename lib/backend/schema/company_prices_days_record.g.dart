// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_prices_days_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyPricesDaysRecord> _$companyPricesDaysRecordSerializer =
    new _$CompanyPricesDaysRecordSerializer();

class _$CompanyPricesDaysRecordSerializer
    implements StructuredSerializer<CompanyPricesDaysRecord> {
  @override
  final Iterable<Type> types = const [
    CompanyPricesDaysRecord,
    _$CompanyPricesDaysRecord
  ];
  @override
  final String wireName = 'CompanyPricesDaysRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompanyPricesDaysRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.numberOfWeek;
    if (value != null) {
      result
        ..add('Number_of_week')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('Data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
    value = object.dayOfWeek;
    if (value != null) {
      result
        ..add('Day_of_week')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CompanyPricesDaysRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyPricesDaysRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Number_of_week':
          result.numberOfWeek = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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
        case 'Day_of_week':
          result.dayOfWeek = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CompanyPricesDaysRecord extends CompanyPricesDaysRecord {
  @override
  final int? numberOfWeek;
  @override
  final DateTime? data;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? company;
  @override
  final int? dayOfWeek;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyPricesDaysRecord(
          [void Function(CompanyPricesDaysRecordBuilder)? updates]) =>
      (new CompanyPricesDaysRecordBuilder()..update(updates))._build();

  _$CompanyPricesDaysRecord._(
      {this.numberOfWeek,
      this.data,
      this.price,
      this.company,
      this.dayOfWeek,
      this.ffRef})
      : super._();

  @override
  CompanyPricesDaysRecord rebuild(
          void Function(CompanyPricesDaysRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyPricesDaysRecordBuilder toBuilder() =>
      new CompanyPricesDaysRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyPricesDaysRecord &&
        numberOfWeek == other.numberOfWeek &&
        data == other.data &&
        price == other.price &&
        company == other.company &&
        dayOfWeek == other.dayOfWeek &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, numberOfWeek.hashCode), data.hashCode),
                    price.hashCode),
                company.hashCode),
            dayOfWeek.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyPricesDaysRecord')
          ..add('numberOfWeek', numberOfWeek)
          ..add('data', data)
          ..add('price', price)
          ..add('company', company)
          ..add('dayOfWeek', dayOfWeek)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyPricesDaysRecordBuilder
    implements
        Builder<CompanyPricesDaysRecord, CompanyPricesDaysRecordBuilder> {
  _$CompanyPricesDaysRecord? _$v;

  int? _numberOfWeek;
  int? get numberOfWeek => _$this._numberOfWeek;
  set numberOfWeek(int? numberOfWeek) => _$this._numberOfWeek = numberOfWeek;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _company;
  DocumentReference<Object?>? get company => _$this._company;
  set company(DocumentReference<Object?>? company) => _$this._company = company;

  int? _dayOfWeek;
  int? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(int? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyPricesDaysRecordBuilder() {
    CompanyPricesDaysRecord._initializeBuilder(this);
  }

  CompanyPricesDaysRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numberOfWeek = $v.numberOfWeek;
      _data = $v.data;
      _price = $v.price;
      _company = $v.company;
      _dayOfWeek = $v.dayOfWeek;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyPricesDaysRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyPricesDaysRecord;
  }

  @override
  void update(void Function(CompanyPricesDaysRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyPricesDaysRecord build() => _build();

  _$CompanyPricesDaysRecord _build() {
    final _$result = _$v ??
        new _$CompanyPricesDaysRecord._(
            numberOfWeek: numberOfWeek,
            data: data,
            price: price,
            company: company,
            dayOfWeek: dayOfWeek,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
