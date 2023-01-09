// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'areas_days_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AreasDaysRecord> _$areasDaysRecordSerializer =
    new _$AreasDaysRecordSerializer();

class _$AreasDaysRecordSerializer
    implements StructuredSerializer<AreasDaysRecord> {
  @override
  final Iterable<Type> types = const [AreasDaysRecord, _$AreasDaysRecord];
  @override
  final String wireName = 'AreasDaysRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AreasDaysRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.numberOfWeek;
    if (value != null) {
      result
        ..add('Number_of_week')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.spotNorte;
    if (value != null) {
      result
        ..add('Spot_norte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.spotCentre;
    if (value != null) {
      result
        ..add('Spot_centre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.spotSur;
    if (value != null) {
      result
        ..add('Spot_sur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.avg;
    if (value != null) {
      result
        ..add('Avg')
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
  AreasDaysRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AreasDaysRecordBuilder();

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
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Spot_norte':
          result.spotNorte = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Spot_centre':
          result.spotCentre = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Spot_sur':
          result.spotSur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Avg':
          result.avg = serializers.deserialize(value,
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

class _$AreasDaysRecord extends AreasDaysRecord {
  @override
  final int? numberOfWeek;
  @override
  final DateTime? date;
  @override
  final double? spotNorte;
  @override
  final double? spotCentre;
  @override
  final double? spotSur;
  @override
  final double? avg;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AreasDaysRecord([void Function(AreasDaysRecordBuilder)? updates]) =>
      (new AreasDaysRecordBuilder()..update(updates))._build();

  _$AreasDaysRecord._(
      {this.numberOfWeek,
      this.date,
      this.spotNorte,
      this.spotCentre,
      this.spotSur,
      this.avg,
      this.ffRef})
      : super._();

  @override
  AreasDaysRecord rebuild(void Function(AreasDaysRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreasDaysRecordBuilder toBuilder() =>
      new AreasDaysRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreasDaysRecord &&
        numberOfWeek == other.numberOfWeek &&
        date == other.date &&
        spotNorte == other.spotNorte &&
        spotCentre == other.spotCentre &&
        spotSur == other.spotSur &&
        avg == other.avg &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, numberOfWeek.hashCode), date.hashCode),
                        spotNorte.hashCode),
                    spotCentre.hashCode),
                spotSur.hashCode),
            avg.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreasDaysRecord')
          ..add('numberOfWeek', numberOfWeek)
          ..add('date', date)
          ..add('spotNorte', spotNorte)
          ..add('spotCentre', spotCentre)
          ..add('spotSur', spotSur)
          ..add('avg', avg)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AreasDaysRecordBuilder
    implements Builder<AreasDaysRecord, AreasDaysRecordBuilder> {
  _$AreasDaysRecord? _$v;

  int? _numberOfWeek;
  int? get numberOfWeek => _$this._numberOfWeek;
  set numberOfWeek(int? numberOfWeek) => _$this._numberOfWeek = numberOfWeek;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  double? _spotNorte;
  double? get spotNorte => _$this._spotNorte;
  set spotNorte(double? spotNorte) => _$this._spotNorte = spotNorte;

  double? _spotCentre;
  double? get spotCentre => _$this._spotCentre;
  set spotCentre(double? spotCentre) => _$this._spotCentre = spotCentre;

  double? _spotSur;
  double? get spotSur => _$this._spotSur;
  set spotSur(double? spotSur) => _$this._spotSur = spotSur;

  double? _avg;
  double? get avg => _$this._avg;
  set avg(double? avg) => _$this._avg = avg;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AreasDaysRecordBuilder() {
    AreasDaysRecord._initializeBuilder(this);
  }

  AreasDaysRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numberOfWeek = $v.numberOfWeek;
      _date = $v.date;
      _spotNorte = $v.spotNorte;
      _spotCentre = $v.spotCentre;
      _spotSur = $v.spotSur;
      _avg = $v.avg;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreasDaysRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AreasDaysRecord;
  }

  @override
  void update(void Function(AreasDaysRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreasDaysRecord build() => _build();

  _$AreasDaysRecord _build() {
    final _$result = _$v ??
        new _$AreasDaysRecord._(
            numberOfWeek: numberOfWeek,
            date: date,
            spotNorte: spotNorte,
            spotCentre: spotCentre,
            spotSur: spotSur,
            avg: avg,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
