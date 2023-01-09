// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'areas_weeks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AreasWeeksRecord> _$areasWeeksRecordSerializer =
    new _$AreasWeeksRecordSerializer();

class _$AreasWeeksRecordSerializer
    implements StructuredSerializer<AreasWeeksRecord> {
  @override
  final Iterable<Type> types = const [AreasWeeksRecord, _$AreasWeeksRecord];
  @override
  final String wireName = 'AreasWeeksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AreasWeeksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.numberOfWeek;
    if (value != null) {
      result
        ..add('Number_of_week')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avgNorte;
    if (value != null) {
      result
        ..add('Avg_norte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.avgCentre;
    if (value != null) {
      result
        ..add('Avg_centre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.avgSur;
    if (value != null) {
      result
        ..add('Avg_sur')
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
  AreasWeeksRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AreasWeeksRecordBuilder();

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
        case 'Avg_norte':
          result.avgNorte = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Avg_centre':
          result.avgCentre = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Avg_sur':
          result.avgSur = serializers.deserialize(value,
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

class _$AreasWeeksRecord extends AreasWeeksRecord {
  @override
  final int? numberOfWeek;
  @override
  final double? avgNorte;
  @override
  final double? avgCentre;
  @override
  final double? avgSur;
  @override
  final double? avg;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AreasWeeksRecord(
          [void Function(AreasWeeksRecordBuilder)? updates]) =>
      (new AreasWeeksRecordBuilder()..update(updates))._build();

  _$AreasWeeksRecord._(
      {this.numberOfWeek,
      this.avgNorte,
      this.avgCentre,
      this.avgSur,
      this.avg,
      this.ffRef})
      : super._();

  @override
  AreasWeeksRecord rebuild(void Function(AreasWeeksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreasWeeksRecordBuilder toBuilder() =>
      new AreasWeeksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreasWeeksRecord &&
        numberOfWeek == other.numberOfWeek &&
        avgNorte == other.avgNorte &&
        avgCentre == other.avgCentre &&
        avgSur == other.avgSur &&
        avg == other.avg &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, numberOfWeek.hashCode), avgNorte.hashCode),
                    avgCentre.hashCode),
                avgSur.hashCode),
            avg.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreasWeeksRecord')
          ..add('numberOfWeek', numberOfWeek)
          ..add('avgNorte', avgNorte)
          ..add('avgCentre', avgCentre)
          ..add('avgSur', avgSur)
          ..add('avg', avg)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AreasWeeksRecordBuilder
    implements Builder<AreasWeeksRecord, AreasWeeksRecordBuilder> {
  _$AreasWeeksRecord? _$v;

  int? _numberOfWeek;
  int? get numberOfWeek => _$this._numberOfWeek;
  set numberOfWeek(int? numberOfWeek) => _$this._numberOfWeek = numberOfWeek;

  double? _avgNorte;
  double? get avgNorte => _$this._avgNorte;
  set avgNorte(double? avgNorte) => _$this._avgNorte = avgNorte;

  double? _avgCentre;
  double? get avgCentre => _$this._avgCentre;
  set avgCentre(double? avgCentre) => _$this._avgCentre = avgCentre;

  double? _avgSur;
  double? get avgSur => _$this._avgSur;
  set avgSur(double? avgSur) => _$this._avgSur = avgSur;

  double? _avg;
  double? get avg => _$this._avg;
  set avg(double? avg) => _$this._avg = avg;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AreasWeeksRecordBuilder() {
    AreasWeeksRecord._initializeBuilder(this);
  }

  AreasWeeksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numberOfWeek = $v.numberOfWeek;
      _avgNorte = $v.avgNorte;
      _avgCentre = $v.avgCentre;
      _avgSur = $v.avgSur;
      _avg = $v.avg;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreasWeeksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AreasWeeksRecord;
  }

  @override
  void update(void Function(AreasWeeksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreasWeeksRecord build() => _build();

  _$AreasWeeksRecord _build() {
    final _$result = _$v ??
        new _$AreasWeeksRecord._(
            numberOfWeek: numberOfWeek,
            avgNorte: avgNorte,
            avgCentre: avgCentre,
            avgSur: avgSur,
            avg: avg,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
