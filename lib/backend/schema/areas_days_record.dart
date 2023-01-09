import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'areas_days_record.g.dart';

abstract class AreasDaysRecord
    implements Built<AreasDaysRecord, AreasDaysRecordBuilder> {
  static Serializer<AreasDaysRecord> get serializer =>
      _$areasDaysRecordSerializer;

  @BuiltValueField(wireName: 'Number_of_week')
  int? get numberOfWeek;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  @BuiltValueField(wireName: 'Spot_norte')
  double? get spotNorte;

  @BuiltValueField(wireName: 'Spot_centre')
  double? get spotCentre;

  @BuiltValueField(wireName: 'Spot_sur')
  double? get spotSur;

  @BuiltValueField(wireName: 'Avg')
  double? get avg;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AreasDaysRecordBuilder builder) => builder
    ..numberOfWeek = 0
    ..spotNorte = 0.0
    ..spotCentre = 0.0
    ..spotSur = 0.0
    ..avg = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Areas_days');

  static Stream<AreasDaysRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AreasDaysRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AreasDaysRecord._();
  factory AreasDaysRecord([void Function(AreasDaysRecordBuilder) updates]) =
      _$AreasDaysRecord;

  static AreasDaysRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAreasDaysRecordData({
  int? numberOfWeek,
  DateTime? date,
  double? spotNorte,
  double? spotCentre,
  double? spotSur,
  double? avg,
}) {
  final firestoreData = serializers.toFirestore(
    AreasDaysRecord.serializer,
    AreasDaysRecord(
      (a) => a
        ..numberOfWeek = numberOfWeek
        ..date = date
        ..spotNorte = spotNorte
        ..spotCentre = spotCentre
        ..spotSur = spotSur
        ..avg = avg,
    ),
  );

  return firestoreData;
}
