import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'areas_weeks_record.g.dart';

abstract class AreasWeeksRecord
    implements Built<AreasWeeksRecord, AreasWeeksRecordBuilder> {
  static Serializer<AreasWeeksRecord> get serializer =>
      _$areasWeeksRecordSerializer;

  @BuiltValueField(wireName: 'Number_of_week')
  int? get numberOfWeek;

  @BuiltValueField(wireName: 'Avg_norte')
  double? get avgNorte;

  @BuiltValueField(wireName: 'Avg_centre')
  double? get avgCentre;

  @BuiltValueField(wireName: 'Avg_sur')
  double? get avgSur;

  @BuiltValueField(wireName: 'Avg')
  double? get avg;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AreasWeeksRecordBuilder builder) => builder
    ..numberOfWeek = 0
    ..avgNorte = 0.0
    ..avgCentre = 0.0
    ..avgSur = 0.0
    ..avg = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Areas_weeks');

  static Stream<AreasWeeksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AreasWeeksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AreasWeeksRecord._();
  factory AreasWeeksRecord([void Function(AreasWeeksRecordBuilder) updates]) =
      _$AreasWeeksRecord;

  static AreasWeeksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAreasWeeksRecordData({
  int? numberOfWeek,
  double? avgNorte,
  double? avgCentre,
  double? avgSur,
  double? avg,
}) {
  final firestoreData = serializers.toFirestore(
    AreasWeeksRecord.serializer,
    AreasWeeksRecord(
      (a) => a
        ..numberOfWeek = numberOfWeek
        ..avgNorte = avgNorte
        ..avgCentre = avgCentre
        ..avgSur = avgSur
        ..avg = avg,
    ),
  );

  return firestoreData;
}
