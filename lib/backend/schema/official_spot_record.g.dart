// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'official_spot_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OfficialSpotRecord> _$officialSpotRecordSerializer =
    new _$OfficialSpotRecordSerializer();

class _$OfficialSpotRecordSerializer
    implements StructuredSerializer<OfficialSpotRecord> {
  @override
  final Iterable<Type> types = const [OfficialSpotRecord, _$OfficialSpotRecord];
  @override
  final String wireName = 'OfficialSpotRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OfficialSpotRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
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
  OfficialSpotRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfficialSpotRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$OfficialSpotRecord extends OfficialSpotRecord {
  @override
  final DateTime? date;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OfficialSpotRecord(
          [void Function(OfficialSpotRecordBuilder)? updates]) =>
      (new OfficialSpotRecordBuilder()..update(updates))._build();

  _$OfficialSpotRecord._({this.date, this.price, this.ffRef}) : super._();

  @override
  OfficialSpotRecord rebuild(
          void Function(OfficialSpotRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficialSpotRecordBuilder toBuilder() =>
      new OfficialSpotRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfficialSpotRecord &&
        date == other.date &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, date.hashCode), price.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OfficialSpotRecord')
          ..add('date', date)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OfficialSpotRecordBuilder
    implements Builder<OfficialSpotRecord, OfficialSpotRecordBuilder> {
  _$OfficialSpotRecord? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OfficialSpotRecordBuilder() {
    OfficialSpotRecord._initializeBuilder(this);
  }

  OfficialSpotRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfficialSpotRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OfficialSpotRecord;
  }

  @override
  void update(void Function(OfficialSpotRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OfficialSpotRecord build() => _build();

  _$OfficialSpotRecord _build() {
    final _$result = _$v ??
        new _$OfficialSpotRecord._(date: date, price: price, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
